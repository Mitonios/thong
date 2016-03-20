/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : qlbh

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-03-14 14:23:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `old_value` tinytext COLLATE utf8_unicode_ci,
  `new_value` tinytext COLLATE utf8_unicode_ci,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2958 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('8', 'N', 'common\\models\\Category', '1', null, null, '2016-02-22 17:54:08', 'admin');
INSERT INTO `activity` VALUES ('9', 'N', 'common\\models\\Category', '2', null, null, '2016-02-22 17:54:20', 'admin');
INSERT INTO `activity` VALUES ('10', 'N', 'common\\models\\Category', '3', null, null, '2016-02-22 17:54:24', 'admin');
INSERT INTO `activity` VALUES ('11', 'N', 'common\\models\\Category', '4', null, null, '2016-02-22 18:09:30', 'admin');
INSERT INTO `activity` VALUES ('12', 'N', 'common\\models\\Category', '5', null, null, '2016-02-23 11:14:16', 'admin');
INSERT INTO `activity` VALUES ('13', 'N', 'common\\models\\Category', '6', null, null, '2016-02-23 11:39:18', 'admin');
INSERT INTO `activity` VALUES ('14', 'N', 'common\\models\\Category', '7', null, null, '2016-02-23 11:39:53', 'admin');
INSERT INTO `activity` VALUES ('15', 'N', 'common\\models\\Category', '8', null, null, '2016-02-23 11:40:06', 'admin');
INSERT INTO `activity` VALUES ('16', 'N', 'common\\models\\Category', '9', null, null, '2016-02-23 11:40:36', 'admin');
INSERT INTO `activity` VALUES ('17', 'N', 'common\\models\\Category', '10', null, null, '2016-02-23 11:40:53', 'admin');
INSERT INTO `activity` VALUES ('18', 'N', 'common\\models\\Category', '11', null, null, '2016-02-23 11:41:30', 'admin');
INSERT INTO `activity` VALUES ('19', 'N', 'common\\models\\Product', '1', null, null, '2016-02-23 14:46:21', 'admin');
INSERT INTO `activity` VALUES ('20', 'N', 'common\\models\\Product', '2', null, null, '2016-02-23 14:46:37', 'admin');
INSERT INTO `activity` VALUES ('21', 'N', 'common\\models\\Product', '3', null, null, '2016-02-23 14:46:43', 'admin');
INSERT INTO `activity` VALUES ('22', 'N', 'common\\models\\Product', '4', null, null, '2016-02-23 15:03:37', 'admin');
INSERT INTO `activity` VALUES ('23', 'N', 'common\\models\\Product', '5', null, null, '2016-02-23 15:03:49', 'admin');
INSERT INTO `activity` VALUES ('24', 'U', 'common\\models\\Product', '5', '{\"updated_at\":1456214954}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456214629,\"stock\":null}', '2016-02-23 15:09:14', 'admin');
INSERT INTO `activity` VALUES ('25', 'U', 'common\\models\\Product', '5', '{\"updated_at\":1456215117}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456214954,\"stock\":null}', '2016-02-23 15:11:57', 'admin');
INSERT INTO `activity` VALUES ('26', 'U', 'common\\models\\Product', '5', '[]', '{\"avatar\":null}', '2016-02-23 15:11:57', 'admin');
INSERT INTO `activity` VALUES ('27', 'U', 'common\\models\\Product', '5', '{\"updated_at\":1456215166}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456215117,\"stock\":null}', '2016-02-23 15:12:46', 'admin');
INSERT INTO `activity` VALUES ('28', 'N', 'common\\models\\Product', '6', null, null, '2016-02-23 15:13:00', 'admin');
INSERT INTO `activity` VALUES ('29', 'U', 'common\\models\\Product', '6', '[]', '{\"avatar\":null}', '2016-02-23 15:13:00', 'admin');
INSERT INTO `activity` VALUES ('30', 'U', 'common\\models\\Product', '6', '{\"category_id\":\"1\",\"price_sale\":\"123\",\"price_store\":\"33\",\"updated_at\":1456215187,\"stock\":\"22\"}', '{\"category_id\":1,\"price_sale\":123,\"price_store\":33,\"updated_at\":1456215180,\"stock\":22}', '2016-02-23 15:13:07', 'admin');
INSERT INTO `activity` VALUES ('31', 'U', 'common\\models\\Product', '6', '{\"category_id\":\"1\",\"price_sale\":\"123\",\"price_store\":\"33\",\"updated_at\":1456215212,\"stock\":\"22\"}', '{\"category_id\":1,\"price_sale\":123,\"price_store\":33,\"updated_at\":1456215187,\"stock\":22}', '2016-02-23 15:13:32', 'admin');
INSERT INTO `activity` VALUES ('32', 'N', 'common\\models\\Product', '7', null, null, '2016-02-23 15:13:54', 'admin');
INSERT INTO `activity` VALUES ('33', 'U', 'common\\models\\Product', '7', '{\"updated_at\":1456215236}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456215234,\"stock\":null}', '2016-02-23 15:13:56', 'admin');
INSERT INTO `activity` VALUES ('34', 'U', 'common\\models\\Product', '7', '{\"updated_at\":1456215245}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456215236,\"stock\":null}', '2016-02-23 15:14:06', 'admin');
INSERT INTO `activity` VALUES ('35', 'U', 'common\\models\\Product', '7', '{\"updated_at\":1456215249}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456215245,\"stock\":null}', '2016-02-23 15:14:09', 'admin');
INSERT INTO `activity` VALUES ('36', 'U', 'common\\models\\Product', '7', '{\"updated_at\":1456215311}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456215249,\"stock\":null}', '2016-02-23 15:15:11', 'admin');
INSERT INTO `activity` VALUES ('37', 'U', 'common\\models\\Product', '7', '{\"updated_at\":1456215316}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456215311,\"stock\":null}', '2016-02-23 15:15:16', 'admin');
INSERT INTO `activity` VALUES ('38', 'U', 'common\\models\\Product', '7', '{\"updated_at\":1456215320}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456215316,\"stock\":null}', '2016-02-23 15:15:21', 'admin');
INSERT INTO `activity` VALUES ('39', 'N', 'common\\models\\Product', '8', null, null, '2016-02-23 15:15:29', 'admin');
INSERT INTO `activity` VALUES ('40', 'U', 'common\\models\\Product', '8', '[]', '{\"avatar\":null}', '2016-02-23 15:15:29', 'admin');
INSERT INTO `activity` VALUES ('41', 'N', 'common\\models\\Product', '9', null, null, '2016-02-23 15:16:17', 'admin');
INSERT INTO `activity` VALUES ('42', 'U', 'common\\models\\Product', '12', '{\"code\":\"P120000000\"}', '{\"code\":\"\"}', '2016-02-23 15:25:08', 'admin');
INSERT INTO `activity` VALUES ('43', 'N', 'common\\models\\Product', '12', null, null, '2016-02-23 15:25:08', 'admin');
INSERT INTO `activity` VALUES ('44', 'U', 'common\\models\\Product', '12', '{\"updated_at\":1456216102}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456215908,\"stock\":null}', '2016-02-23 15:28:22', 'admin');
INSERT INTO `activity` VALUES ('45', 'U', 'common\\models\\Product', '13', '{\"code\":\"P00013\"}', '{\"code\":\"\"}', '2016-02-23 15:28:27', 'admin');
INSERT INTO `activity` VALUES ('46', 'N', 'common\\models\\Product', '13', null, null, '2016-02-23 15:28:27', 'admin');
INSERT INTO `activity` VALUES ('47', 'U', 'common\\models\\Product', '13', '{\"updated_at\":1456216231}', '{\"category_id\":null,\"price_sale\":null,\"price_store\":null,\"updated_at\":1456216107,\"stock\":null}', '2016-02-23 15:30:31', 'admin');
INSERT INTO `activity` VALUES ('48', 'U', 'common\\models\\Product', '13', '[]', '{\"avatar\":null}', '2016-02-23 15:30:31', 'admin');
INSERT INTO `activity` VALUES ('49', 'U', 'common\\models\\Product', '14', '{\"search_term\":\"14|P00014|Váy đầm họa tiết|hông tin chi tiết\\r\\n​✓ Tên sản phẩm: Đầm Họa Tiết Hoa Xuân Cổ Kết Đá\\r\\n✓ Chất liệu : Vải Châu hoa cao cấp co giãn in họa tiết 3D\\r\\n\\r\\n✓ Thiết kết kiểu', '{\"code\":\"\",\"search_term\":\"||Váy đầm họa tiết|hông tin chi tiết\\r\\n​✓ Tên sản phẩm: Đầm Họa Tiết Hoa Xuân Cổ Kết Đá\\r\\n✓ Chất liệu : Vải Châu hoa cao cấp co giãn in họa tiết 3D\\r\\n\\r\\n✓ Thiết kết ki', '2016-02-24 15:26:52', 'admin');
INSERT INTO `activity` VALUES ('50', 'N', 'common\\models\\Product', '14', null, null, '2016-02-24 15:26:52', 'admin');
INSERT INTO `activity` VALUES ('51', 'U', 'common\\models\\Product', '14', '{\"price_sale\":\"100\",\"price_store\":\"200\",\"updated_at\":1456302424,\"stock\":\"20\"}', '{\"category_id\":null,\"price_sale\":100,\"price_store\":200,\"updated_at\":1456302412,\"stock\":20}', '2016-02-24 15:27:04', 'admin');
INSERT INTO `activity` VALUES ('52', 'U', 'common\\models\\Product', '14', '[]', '{\"avatar\":null}', '2016-02-24 15:27:04', 'admin');
INSERT INTO `activity` VALUES ('53', 'N', 'common\\models\\Category', '1', null, null, '2016-02-24 15:27:13', 'admin');
INSERT INTO `activity` VALUES ('54', 'N', 'common\\models\\Category', '2', null, null, '2016-02-24 15:27:21', 'admin');
INSERT INTO `activity` VALUES ('55', 'U', 'common\\models\\Product', '14', '{\"price_sale\":\"100\",\"price_store\":\"200\",\"updated_at\":1456302449,\"stock\":\"20\"}', '{\"category_id\":null,\"price_sale\":100,\"price_store\":200,\"updated_at\":1456302424,\"stock\":20}', '2016-02-24 15:27:29', 'admin');
INSERT INTO `activity` VALUES ('56', 'U', 'common\\models\\Product', '14', '{\"category_id\":\"2\",\"search_term\":\"14|P00014|Váy đầm họa tiết|​✓ Tên sản phẩm: Đầm Họa Tiết Hoa Xuân Cổ Kết Đá\\r\\n✓ Chất liệu : Vải Châu hoa cao cấp co giãn in họa tiết 3D\\r\\n\\r\\n✓ Thiết kết kiểu dáng', '{\"category_id\":2,\"search_term\":\"14|P00014|Váy đầm họa tiết|hông tin chi tiết\\r\\n​✓ Tên sản phẩm: Đầm Họa Tiết Hoa Xuân Cổ Kết Đá\\r\\n✓ Chất liệu : Vải Châu hoa cao cấp co giãn in họa tiết 3D\\r\\n\\r\\n✓ Thi', '2016-02-24 16:01:10', 'admin');
INSERT INTO `activity` VALUES ('57', 'U', 'common\\models\\Product', '14', '{\"category_id\":\"2\",\"search_term\":\"14|P00014|Váy đầm họa tiết|​✓ Tên sản phẩm: Đầm Họa Tiết Hoa Xuân Cổ Kết Đá\\r\\n\\r\\n✓ Chất liệu : Vải Châu hoa cao cấp co giãn in họa tiết 3D\\r\\n\\r\\n✓ Thiết kết kiểu d', '{\"category_id\":2,\"search_term\":\"14|P00014|Váy đầm họa tiết|​✓ Tên sản phẩm: Đầm Họa Tiết Hoa Xuân Cổ Kết Đá\\r\\n✓ Chất liệu : Vải Châu hoa cao cấp co giãn in họa tiết 3D\\r\\n\\r\\n✓ Thiết kết kiểu dáng ', '2016-02-24 16:01:24', 'admin');
INSERT INTO `activity` VALUES ('58', 'U', 'common\\models\\Product', '15', '{\"search_term\":\"15|P00015|test|\",\"code\":\"P00015\"}', '{\"code\":\"\",\"search_term\":\"||test|\"}', '2016-02-24 16:32:44', 'admin');
INSERT INTO `activity` VALUES ('59', 'N', 'common\\models\\Product', '15', null, null, '2016-02-24 16:32:44', 'admin');
INSERT INTO `activity` VALUES ('60', 'D', 'common\\models\\Product', '15', null, null, '2016-02-24 16:33:03', 'admin');
INSERT INTO `activity` VALUES ('61', 'U', 'common\\models\\Product', '14', '{\"status\":\"1\",\"updated_at\":1456306719}', '{\"status\":0,\"updated_at\":1456304484}', '2016-02-24 16:38:39', 'admin');
INSERT INTO `activity` VALUES ('62', 'U', 'common\\models\\Product', '14', '{\"status\":\"0\",\"updated_at\":1456306722}', '{\"status\":1,\"updated_at\":1456306719}', '2016-02-24 16:38:42', 'admin');
INSERT INTO `activity` VALUES ('63', 'U', 'common\\models\\Product', '14', '{\"category_id\":\"2\",\"price_sale\":\"100\",\"price_store\":\"200\",\"updated_at\":1456306727,\"stock\":\"0\"}', '{\"category_id\":2,\"price_sale\":100,\"price_store\":200,\"updated_at\":1456306722,\"stock\":20}', '2016-02-24 16:38:47', 'admin');
INSERT INTO `activity` VALUES ('64', 'U', 'common\\models\\Product', '16', '{\"search_term\":\"16|P00016|yertet|\",\"code\":\"P00016\"}', '{\"code\":\"\",\"search_term\":\"||yertet|\"}', '2016-02-24 16:41:36', 'admin');
INSERT INTO `activity` VALUES ('65', 'N', 'common\\models\\Product', '16', null, null, '2016-02-24 16:41:36', 'admin');
INSERT INTO `activity` VALUES ('66', 'D', 'common\\models\\Product', '16', null, null, '2016-02-24 16:42:03', 'admin');
INSERT INTO `activity` VALUES ('67', 'U', 'common\\models\\Product', '17', '{\"search_term\":\"17|P00017|tert|\",\"code\":\"P00017\"}', '{\"code\":\"\",\"search_term\":\"||tert|\"}', '2016-02-24 17:05:53', 'admin');
INSERT INTO `activity` VALUES ('68', 'N', 'common\\models\\Product', '17', null, null, '2016-02-24 17:05:53', 'admin');
INSERT INTO `activity` VALUES ('69', 'D', 'common\\models\\Product', '17', null, null, '2016-02-24 17:06:16', 'admin');
INSERT INTO `activity` VALUES ('70', 'N', 'common\\models\\TicketProductImport', '1', null, null, '2016-02-25 17:29:20', 'admin');
INSERT INTO `activity` VALUES ('71', 'U', 'common\\models\\TicketProductImport', '1', '{\"updated_at\":1456396351}', '{\"updated_at\":1456396159}', '2016-02-25 17:32:31', 'admin');
INSERT INTO `activity` VALUES ('72', 'U', 'common\\models\\TicketProductImport', '1', '{\"updated_at\":1456396353}', '{\"updated_at\":1456396351}', '2016-02-25 17:32:33', 'admin');
INSERT INTO `activity` VALUES ('73', 'U', 'common\\models\\TicketProductImport', '1', '{\"updated_at\":1456396370}', '{\"updated_at\":1456396353}', '2016-02-25 17:32:50', 'admin');
INSERT INTO `activity` VALUES ('74', 'U', 'common\\models\\TicketProductImport', '1', '{\"updated_at\":1456396379}', '{\"updated_at\":1456396370}', '2016-02-25 17:32:59', 'admin');
INSERT INTO `activity` VALUES ('75', 'N', 'common\\models\\TicketProductImport', '2', null, null, '2016-02-26 10:23:13', 'admin');
INSERT INTO `activity` VALUES ('76', 'N', 'common\\models\\TicketProductImport', '3', null, null, '2016-02-26 10:23:22', 'admin');
INSERT INTO `activity` VALUES ('77', 'N', 'common\\models\\TicketProductImport', '4', null, null, '2016-02-26 10:23:28', 'admin');
INSERT INTO `activity` VALUES ('78', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456457042}', '{\"updated_at\":1456457008}', '2016-02-26 10:24:02', 'admin');
INSERT INTO `activity` VALUES ('79', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456457046}', '{\"updated_at\":1456457042}', '2016-02-26 10:24:06', 'admin');
INSERT INTO `activity` VALUES ('80', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456457057}', '{\"updated_at\":1456457046}', '2016-02-26 10:24:17', 'admin');
INSERT INTO `activity` VALUES ('81', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456457143}', '{\"updated_at\":1456457057}', '2016-02-26 10:25:43', 'admin');
INSERT INTO `activity` VALUES ('82', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456457900}', '{\"updated_at\":1456457143}', '2016-02-26 10:38:20', 'admin');
INSERT INTO `activity` VALUES ('83', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456459993}', '{\"updated_at\":1456457900}', '2016-02-26 11:13:14', 'admin');
INSERT INTO `activity` VALUES ('84', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456459996}', '{\"updated_at\":1456459993}', '2016-02-26 11:13:17', 'admin');
INSERT INTO `activity` VALUES ('85', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460022}', '{\"updated_at\":1456459996}', '2016-02-26 11:13:42', 'admin');
INSERT INTO `activity` VALUES ('86', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460053}', '{\"updated_at\":1456460022}', '2016-02-26 11:14:13', 'admin');
INSERT INTO `activity` VALUES ('87', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460058}', '{\"updated_at\":1456460053}', '2016-02-26 11:14:18', 'admin');
INSERT INTO `activity` VALUES ('88', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460062}', '{\"updated_at\":1456460058}', '2016-02-26 11:14:22', 'admin');
INSERT INTO `activity` VALUES ('89', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460103}', '{\"updated_at\":1456460062}', '2016-02-26 11:15:03', 'admin');
INSERT INTO `activity` VALUES ('90', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460132}', '{\"updated_at\":1456460103}', '2016-02-26 11:15:32', 'admin');
INSERT INTO `activity` VALUES ('91', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460150}', '{\"updated_at\":1456460132}', '2016-02-26 11:15:50', 'admin');
INSERT INTO `activity` VALUES ('92', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460166}', '{\"updated_at\":1456460150}', '2016-02-26 11:16:06', 'admin');
INSERT INTO `activity` VALUES ('93', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460174}', '{\"updated_at\":1456460166}', '2016-02-26 11:16:14', 'admin');
INSERT INTO `activity` VALUES ('94', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460178}', '{\"updated_at\":1456460174}', '2016-02-26 11:16:18', 'admin');
INSERT INTO `activity` VALUES ('95', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460185}', '{\"updated_at\":1456460178}', '2016-02-26 11:16:25', 'admin');
INSERT INTO `activity` VALUES ('96', 'U', 'common\\models\\TicketProductImport', '4', '{\"updated_at\":1456460768}', '{\"updated_at\":1456460185}', '2016-02-26 11:26:08', 'admin');
INSERT INTO `activity` VALUES ('97', 'N', 'common\\models\\TicketProductImport', '5', null, null, '2016-02-26 16:28:44', 'admin');
INSERT INTO `activity` VALUES ('98', 'U', 'common\\models\\TicketProductImport', '5', '{\"updated_at\":1456479159}', '{\"updated_at\":1456478923}', '2016-02-26 16:32:40', 'admin');
INSERT INTO `activity` VALUES ('99', 'U', 'common\\models\\TicketProductImport', '5', '{\"updated_at\":1456479180}', '{\"updated_at\":1456479159}', '2016-02-26 16:33:00', 'admin');
INSERT INTO `activity` VALUES ('100', 'U', 'common\\models\\TicketProductImport', '5', '{\"updated_at\":1456479768}', '{\"updated_at\":1456479180}', '2016-02-26 16:42:48', 'admin');
INSERT INTO `activity` VALUES ('101', 'U', 'common\\models\\TicketProductImport', '5', '{\"updated_at\":1456479778}', '{\"updated_at\":1456479768}', '2016-02-26 16:42:59', 'admin');
INSERT INTO `activity` VALUES ('102', 'D', 'common\\models\\TicketProductImport', '5', null, null, '2016-02-26 17:05:21', 'admin');
INSERT INTO `activity` VALUES ('103', 'N', 'common\\models\\TicketProductImport', '6', null, null, '2016-02-26 17:05:29', 'admin');
INSERT INTO `activity` VALUES ('104', 'U', 'common\\models\\TicketProductImport', '6', '{\"updated_at\":1456481313}', '{\"updated_at\":1456481128}', '2016-02-26 17:08:33', 'admin');
INSERT INTO `activity` VALUES ('105', 'U', 'common\\models\\TicketProductImport', '6', '{\"updated_at\":1456481318}', '{\"updated_at\":1456481313}', '2016-02-26 17:08:38', 'admin');
INSERT INTO `activity` VALUES ('106', 'U', 'common\\models\\TicketProductImport', '6', '{\"updated_at\":1456481323}', '{\"updated_at\":1456481318}', '2016-02-26 17:08:43', 'admin');
INSERT INTO `activity` VALUES ('107', 'U', 'common\\models\\TicketProductImport', '6', '{\"updated_at\":1456805034}', '{\"updated_at\":1456481323}', '2016-03-01 11:03:54', 'admin');
INSERT INTO `activity` VALUES ('108', 'U', 'common\\models\\TicketProductImport', '6', '{\"status\":1,\"updated_at\":1456816898}', '{\"status\":0,\"updated_at\":1456805034}', '2016-03-01 14:21:38', 'admin');
INSERT INTO `activity` VALUES ('109', 'U', 'common\\models\\Product', '15', '{\"search_term\":\"P00015|123123123|\"}', '{\"search_term\":\"|123123123|\",\"code\":null}', '2016-03-01 14:21:39', 'admin');
INSERT INTO `activity` VALUES ('110', 'N', 'common\\models\\Product', '15', null, null, '2016-03-01 14:21:39', 'admin');
INSERT INTO `activity` VALUES ('111', 'U', 'common\\models\\Product', '16', '{\"search_term\":\"P00016|vfvdfv|\"}', '{\"search_term\":\"|vfvdfv|\",\"code\":null}', '2016-03-01 14:21:39', 'admin');
INSERT INTO `activity` VALUES ('112', 'N', 'common\\models\\Product', '16', null, null, '2016-03-01 14:21:39', 'admin');
INSERT INTO `activity` VALUES ('113', 'U', 'common\\models\\Product', '14', '{\"search_term\":\"P00014|Váy đầm họa tiết|​✓ Tên sản phẩm: Đầm Họa Tiết Hoa Xuân Cổ Kết Đá\\r\\n\\r\\n✓ Chất liệu : Vải Châu hoa cao cấp co giãn in họa tiết 3D\\r\\n\\r\\n✓ Thiết kết kiểu dáng đầm liền sa', '{\"search_term\":\"14|P00014|Váy đầm họa tiết|​✓ Tên sản phẩm: Đầm Họa Tiết Hoa Xuân Cổ Kết Đá\\r\\n\\r\\n✓ Chất liệu : Vải Châu hoa cao cấp co giãn in họa tiết 3D\\r\\n\\r\\n✓ Thiết kết kiểu dáng đầm liền', '2016-03-01 14:40:45', 'admin');
INSERT INTO `activity` VALUES ('114', 'U', 'common\\models\\Product', '14', '{\"status\":\"0\",\"updated_at\":1456818047}', '{\"status\":1,\"updated_at\":1456818045}', '2016-03-01 14:40:47', 'admin');
INSERT INTO `activity` VALUES ('115', 'N', 'common\\models\\TicketProductImport', '7', null, null, '2016-03-01 16:44:58', 'admin');
INSERT INTO `activity` VALUES ('116', 'U', 'common\\models\\TicketProductImport', '7', '{\"status\":1,\"updated_at\":1456825503}', '{\"status\":0,\"updated_at\":1456825498}', '2016-03-01 16:45:04', 'admin');
INSERT INTO `activity` VALUES ('117', 'U', 'common\\models\\TicketProductImport', '8', '[]', '{\"code\":null}', '2016-03-01 17:01:50', 'admin');
INSERT INTO `activity` VALUES ('118', 'N', 'common\\models\\TicketProductImport', '8', null, null, '2016-03-01 17:01:50', 'admin');
INSERT INTO `activity` VALUES ('119', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456887166}', '{\"updated_at\":1456826510}', '2016-03-02 09:52:46', 'admin');
INSERT INTO `activity` VALUES ('120', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456887646}', '{\"updated_at\":1456887166}', '2016-03-02 10:00:46', 'admin');
INSERT INTO `activity` VALUES ('121', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456887649}', '{\"updated_at\":1456887646}', '2016-03-02 10:00:49', 'admin');
INSERT INTO `activity` VALUES ('122', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456887662}', '{\"updated_at\":1456887649}', '2016-03-02 10:01:02', 'admin');
INSERT INTO `activity` VALUES ('123', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456887688}', '{\"updated_at\":1456887662}', '2016-03-02 10:01:28', 'admin');
INSERT INTO `activity` VALUES ('124', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456887692}', '{\"updated_at\":1456887688}', '2016-03-02 10:01:32', 'admin');
INSERT INTO `activity` VALUES ('125', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456887710}', '{\"updated_at\":1456887692}', '2016-03-02 10:01:50', 'admin');
INSERT INTO `activity` VALUES ('126', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456887728}', '{\"updated_at\":1456887710}', '2016-03-02 10:02:08', 'admin');
INSERT INTO `activity` VALUES ('127', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456887733}', '{\"updated_at\":1456887728}', '2016-03-02 10:02:13', 'admin');
INSERT INTO `activity` VALUES ('128', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456888758}', '{\"updated_at\":1456887733,\"date_import\":null}', '2016-03-02 10:19:18', 'admin');
INSERT INTO `activity` VALUES ('129', 'U', 'common\\models\\TicketProductImport', '8', '{\"date_import\":\"2016-03-02\"}', '{\"note\":null,\"date_import\":\"1970-01-01\"}', '2016-03-02 10:19:18', 'admin');
INSERT INTO `activity` VALUES ('130', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456888780,\"date_import\":\"2016-02-03\"}', '{\"updated_at\":1456888758,\"date_import\":\"2016-03-02\"}', '2016-03-02 10:19:40', 'admin');
INSERT INTO `activity` VALUES ('131', 'U', 'common\\models\\TicketProductImport', '8', '{\"date_import\":\"2016-04-03\"}', '{\"date_import\":\"2016-02-03\"}', '2016-03-02 10:19:40', 'admin');
INSERT INTO `activity` VALUES ('132', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456888842,\"date_import\":\"2016-03-04\"}', '{\"updated_at\":1456888780,\"date_import\":\"2016-04-03\"}', '2016-03-02 10:20:42', 'admin');
INSERT INTO `activity` VALUES ('133', 'U', 'common\\models\\TicketProductImport', '8', '{\"date_import\":\"2016-01-03\"}', '{\"date_import\":\"2016-03-04\"}', '2016-03-02 10:20:42', 'admin');
INSERT INTO `activity` VALUES ('134', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456888961}', '{\"updated_at\":1456888842}', '2016-03-02 10:22:41', 'admin');
INSERT INTO `activity` VALUES ('135', 'U', 'common\\models\\TicketProductImport', '8', '{\"date_import\":\"2016-01-05\"}', '{\"date_import\":\"2016-01-03\"}', '2016-03-02 10:22:41', 'admin');
INSERT INTO `activity` VALUES ('136', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456888973}', '{\"updated_at\":1456888961}', '2016-03-02 10:22:53', 'admin');
INSERT INTO `activity` VALUES ('137', 'U', 'common\\models\\TicketProductImport', '8', '{\"date_import\":\"2016-03-02\"}', '{\"date_import\":\"2016-01-05\"}', '2016-03-02 10:22:54', 'admin');
INSERT INTO `activity` VALUES ('138', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456890128}', '{\"updated_at\":1456888973}', '2016-03-02 10:42:08', 'admin');
INSERT INTO `activity` VALUES ('139', 'U', 'common\\models\\TicketProductImport', '8', '{\"note\":\"fasfdsf\"}', '{\"note\":\"\"}', '2016-03-02 10:42:08', 'admin');
INSERT INTO `activity` VALUES ('140', 'U', 'common\\models\\TicketProductImport', '8', '{\"status\":1,\"updated_at\":1456890217}', '{\"status\":0,\"updated_at\":1456890128}', '2016-03-02 10:43:37', 'admin');
INSERT INTO `activity` VALUES ('141', 'U', 'common\\models\\Product', '17', '{\"search_term\":\"P00017|4546356|\"}', '{\"search_term\":\"|4546356|\",\"code\":null}', '2016-03-02 10:43:38', 'admin');
INSERT INTO `activity` VALUES ('142', 'N', 'common\\models\\Product', '17', null, null, '2016-03-02 10:43:38', 'admin');
INSERT INTO `activity` VALUES ('143', 'U', 'common\\models\\Product', '18', '{\"search_term\":\"P00018|sgsg|\"}', '{\"search_term\":\"|sgsg|\",\"code\":null}', '2016-03-02 10:43:38', 'admin');
INSERT INTO `activity` VALUES ('144', 'N', 'common\\models\\Product', '18', null, null, '2016-03-02 10:43:38', 'admin');
INSERT INTO `activity` VALUES ('145', 'U', 'common\\models\\TicketProductImport', '8', '{\"updated_at\":1456890218,\"total_product\":\"2\",\"total_price\":\"7\"}', '{\"updated_at\":1456890217,\"total_product\":0,\"total_price\":0}', '2016-03-02 10:43:38', 'admin');
INSERT INTO `activity` VALUES ('146', 'U', 'common\\models\\TicketProductImport', '9', '[]', '{\"code\":null}', '2016-03-02 10:45:51', 'admin');
INSERT INTO `activity` VALUES ('147', 'N', 'common\\models\\TicketProductImport', '9', null, null, '2016-03-02 10:45:51', 'admin');
INSERT INTO `activity` VALUES ('148', 'U', 'common\\models\\TicketProductImport', '9', '[]', '{\"note\":null}', '2016-03-02 10:45:51', 'admin');
INSERT INTO `activity` VALUES ('149', 'D', 'common\\models\\TicketProductImport', '9', null, null, '2016-03-02 10:45:54', 'admin');
INSERT INTO `activity` VALUES ('150', 'U', 'common\\models\\TicketProductImport', '10', '[]', '{\"code\":null}', '2016-03-02 10:47:45', 'admin');
INSERT INTO `activity` VALUES ('151', 'N', 'common\\models\\TicketProductImport', '10', null, null, '2016-03-02 10:47:45', 'admin');
INSERT INTO `activity` VALUES ('152', 'U', 'common\\models\\TicketProductImport', '10', '[]', '{\"note\":null}', '2016-03-02 10:47:45', 'admin');
INSERT INTO `activity` VALUES ('153', 'U', 'common\\models\\TicketProductImport', '10', '{\"updated_at\":1456890530}', '{\"updated_at\":1456890465}', '2016-03-02 10:48:50', 'admin');
INSERT INTO `activity` VALUES ('154', 'U', 'common\\models\\TicketProductImport', '10', '{\"total_product\":\"1\",\"total_price\":\"1\"}', '{\"total_product\":0,\"total_price\":0}', '2016-03-02 10:48:50', 'admin');
INSERT INTO `activity` VALUES ('155', 'U', 'common\\models\\TicketProductImport', '10', '{\"updated_at\":1456890563}', '{\"updated_at\":1456890530}', '2016-03-02 10:49:23', 'admin');
INSERT INTO `activity` VALUES ('156', 'U', 'common\\models\\TicketProductImport', '10', '{\"total_product\":\"1\",\"total_price\":\"1\"}', '{\"total_product\":1,\"total_price\":1}', '2016-03-02 10:49:23', 'admin');
INSERT INTO `activity` VALUES ('157', 'U', 'common\\models\\TicketProductImport', '10', '{\"updated_at\":1456895057}', '{\"updated_at\":1456890563}', '2016-03-02 12:04:17', 'admin');
INSERT INTO `activity` VALUES ('158', 'U', 'common\\models\\TicketProductImport', '10', '{\"total_product\":\"1\",\"total_price\":\"1\"}', '{\"total_product\":1,\"total_price\":1}', '2016-03-02 12:04:17', 'admin');
INSERT INTO `activity` VALUES ('159', 'U', 'common\\models\\TicketProductImport', '10', '{\"updated_at\":1456895064}', '{\"updated_at\":1456895057}', '2016-03-02 12:04:24', 'admin');
INSERT INTO `activity` VALUES ('160', 'U', 'common\\models\\TicketProductImport', '10', '{\"total_product\":\"1\",\"total_price\":\"1\"}', '{\"total_product\":1,\"total_price\":1}', '2016-03-02 12:04:24', 'admin');
INSERT INTO `activity` VALUES ('161', 'U', 'common\\models\\TicketProductImport', '10', '{\"updated_at\":1456895066}', '{\"updated_at\":1456895064}', '2016-03-02 12:04:26', 'admin');
INSERT INTO `activity` VALUES ('162', 'U', 'common\\models\\TicketProductImport', '10', '{\"total_product\":\"1\",\"total_price\":\"1\"}', '{\"total_product\":1,\"total_price\":1}', '2016-03-02 12:04:26', 'admin');
INSERT INTO `activity` VALUES ('163', 'U', 'common\\models\\TicketProductImport', '10', '{\"updated_at\":1456895070}', '{\"updated_at\":1456895066}', '2016-03-02 12:04:30', 'admin');
INSERT INTO `activity` VALUES ('164', 'U', 'common\\models\\TicketProductImport', '10', '{\"total_product\":\"1\",\"total_price\":\"1\"}', '{\"total_product\":1,\"total_price\":1}', '2016-03-02 12:04:30', 'admin');
INSERT INTO `activity` VALUES ('165', 'U', 'common\\models\\TicketProductImport', '10', '{\"updated_at\":1456895135}', '{\"updated_at\":1456895070}', '2016-03-02 12:05:35', 'admin');
INSERT INTO `activity` VALUES ('166', 'U', 'common\\models\\TicketProductImport', '10', '{\"total_product\":\"1\",\"total_price\":\"1\"}', '{\"total_product\":1,\"total_price\":1}', '2016-03-02 12:05:35', 'admin');
INSERT INTO `activity` VALUES ('167', 'U', 'common\\models\\TicketProductImport', '10', '{\"updated_at\":1456895138}', '{\"updated_at\":1456895135}', '2016-03-02 12:05:38', 'admin');
INSERT INTO `activity` VALUES ('168', 'U', 'common\\models\\TicketProductImport', '10', '{\"total_product\":\"1\",\"total_price\":\"1\"}', '{\"total_product\":1,\"total_price\":1}', '2016-03-02 12:05:38', 'admin');
INSERT INTO `activity` VALUES ('169', 'N', 'common\\models\\Customer', '1', null, null, '2016-03-08 16:57:05', 'admin');
INSERT INTO `activity` VALUES ('170', 'N', 'common\\models\\Customer', '2', null, null, '2016-03-08 16:57:21', 'admin');
INSERT INTO `activity` VALUES ('171', 'N', 'common\\models\\Customer', '3', null, null, '2016-03-08 16:57:24', 'admin');
INSERT INTO `activity` VALUES ('172', 'N', 'common\\models\\Customer', '4', null, null, '2016-03-08 16:57:27', 'admin');
INSERT INTO `activity` VALUES ('173', 'N', 'common\\models\\Customer', '5', null, null, '2016-03-08 16:57:32', 'admin');
INSERT INTO `activity` VALUES ('174', 'N', 'common\\models\\Customer', '6', null, null, '2016-03-08 16:57:35', 'admin');
INSERT INTO `activity` VALUES ('175', 'N', 'common\\models\\Customer', '7', null, null, '2016-03-08 16:57:39', 'admin');
INSERT INTO `activity` VALUES ('176', 'N', 'common\\models\\Customer', '8', null, null, '2016-03-08 16:57:44', 'admin');
INSERT INTO `activity` VALUES ('177', 'N', 'common\\models\\Customer', '9', null, null, '2016-03-08 17:15:11', 'admin');
INSERT INTO `activity` VALUES ('178', 'U', 'common\\models\\Customer', '1', '{\"search_term\":\"C00001|123|3424\"}', '{\"search_term\":\"|123|3424\",\"code\":null}', '2016-03-08 17:52:24', 'admin');
INSERT INTO `activity` VALUES ('179', 'N', 'common\\models\\Customer', '1', null, null, '2016-03-08 17:52:24', 'admin');
INSERT INTO `activity` VALUES ('180', 'U', 'common\\models\\Customer', '2', '{\"search_term\":\"C00002|345345|345345\"}', '{\"search_term\":\"|345345|345345\",\"code\":null}', '2016-03-08 17:52:29', 'admin');
INSERT INTO `activity` VALUES ('181', 'N', 'common\\models\\Customer', '2', null, null, '2016-03-08 17:52:29', 'admin');
INSERT INTO `activity` VALUES ('182', 'U', 'common\\models\\Order', '1', '[]', '{\"code\":null}', '2016-03-09 15:18:57', 'admin');
INSERT INTO `activity` VALUES ('183', 'N', 'common\\models\\Order', '1', null, null, '2016-03-09 15:18:57', 'admin');
INSERT INTO `activity` VALUES ('184', 'U', 'common\\models\\Order', '2', '[]', '{\"code\":null}', '2016-03-09 15:25:33', 'admin');
INSERT INTO `activity` VALUES ('185', 'N', 'common\\models\\Order', '2', null, null, '2016-03-09 15:25:33', 'admin');
INSERT INTO `activity` VALUES ('186', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513507,\"discount\":\"0\"}', '{\"updated_at\":1457511933,\"sale_date\":null,\"note\":null,\"discount\":0}', '2016-03-09 15:51:48', 'admin');
INSERT INTO `activity` VALUES ('187', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513509,\"discount\":\"0\"}', '{\"updated_at\":1457513507,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:51:50', 'admin');
INSERT INTO `activity` VALUES ('188', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513511,\"discount\":\"0\"}', '{\"updated_at\":1457513509,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:51:52', 'admin');
INSERT INTO `activity` VALUES ('189', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513513,\"discount\":\"0\"}', '{\"updated_at\":1457513511,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:51:54', 'admin');
INSERT INTO `activity` VALUES ('190', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513515,\"discount\":\"0\"}', '{\"updated_at\":1457513513,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:51:56', 'admin');
INSERT INTO `activity` VALUES ('191', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513517,\"discount\":\"0\"}', '{\"updated_at\":1457513515,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:51:58', 'admin');
INSERT INTO `activity` VALUES ('192', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513519,\"discount\":\"0\"}', '{\"updated_at\":1457513517,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:00', 'admin');
INSERT INTO `activity` VALUES ('193', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513521,\"discount\":\"0\"}', '{\"updated_at\":1457513519,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:02', 'admin');
INSERT INTO `activity` VALUES ('194', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513523,\"discount\":\"0\"}', '{\"updated_at\":1457513521,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:04', 'admin');
INSERT INTO `activity` VALUES ('195', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513525,\"discount\":\"0\"}', '{\"updated_at\":1457513523,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:06', 'admin');
INSERT INTO `activity` VALUES ('196', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513527,\"discount\":\"0\"}', '{\"updated_at\":1457513525,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:08', 'admin');
INSERT INTO `activity` VALUES ('197', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513529,\"discount\":\"0\"}', '{\"updated_at\":1457513527,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:10', 'admin');
INSERT INTO `activity` VALUES ('198', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513531,\"discount\":\"0\"}', '{\"updated_at\":1457513529,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:12', 'admin');
INSERT INTO `activity` VALUES ('199', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513533,\"discount\":\"0\"}', '{\"updated_at\":1457513531,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:14', 'admin');
INSERT INTO `activity` VALUES ('200', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513535,\"discount\":\"0\"}', '{\"updated_at\":1457513533,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:16', 'admin');
INSERT INTO `activity` VALUES ('201', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513537,\"discount\":\"0\"}', '{\"updated_at\":1457513535,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:18', 'admin');
INSERT INTO `activity` VALUES ('202', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513539,\"discount\":\"0\"}', '{\"updated_at\":1457513537,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:20', 'admin');
INSERT INTO `activity` VALUES ('203', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513541,\"discount\":\"0\"}', '{\"updated_at\":1457513539,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:21', 'admin');
INSERT INTO `activity` VALUES ('204', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513543,\"discount\":\"0\"}', '{\"updated_at\":1457513541,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:24', 'admin');
INSERT INTO `activity` VALUES ('205', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513545,\"discount\":\"0\"}', '{\"updated_at\":1457513543,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:26', 'admin');
INSERT INTO `activity` VALUES ('206', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513547,\"discount\":\"0\"}', '{\"updated_at\":1457513545,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:28', 'admin');
INSERT INTO `activity` VALUES ('207', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513549,\"discount\":\"0\"}', '{\"updated_at\":1457513547,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:30', 'admin');
INSERT INTO `activity` VALUES ('208', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513551,\"discount\":\"0\"}', '{\"updated_at\":1457513549,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:32', 'admin');
INSERT INTO `activity` VALUES ('209', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513553,\"discount\":\"0\"}', '{\"updated_at\":1457513551,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:34', 'admin');
INSERT INTO `activity` VALUES ('210', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513555,\"discount\":\"0\"}', '{\"updated_at\":1457513553,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:36', 'admin');
INSERT INTO `activity` VALUES ('211', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513557,\"discount\":\"0\"}', '{\"updated_at\":1457513555,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:38', 'admin');
INSERT INTO `activity` VALUES ('212', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513559,\"discount\":\"0\"}', '{\"updated_at\":1457513557,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:40', 'admin');
INSERT INTO `activity` VALUES ('213', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513561,\"discount\":\"0\"}', '{\"updated_at\":1457513559,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:42', 'admin');
INSERT INTO `activity` VALUES ('214', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513563,\"discount\":\"0\"}', '{\"updated_at\":1457513561,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:44', 'admin');
INSERT INTO `activity` VALUES ('215', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513566,\"discount\":\"0\"}', '{\"updated_at\":1457513563,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:46', 'admin');
INSERT INTO `activity` VALUES ('216', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513568,\"discount\":\"0\"}', '{\"updated_at\":1457513566,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:48', 'admin');
INSERT INTO `activity` VALUES ('217', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513569,\"discount\":\"0\"}', '{\"updated_at\":1457513568,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:49', 'admin');
INSERT INTO `activity` VALUES ('218', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513571,\"discount\":\"0\"}', '{\"updated_at\":1457513569,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:52', 'admin');
INSERT INTO `activity` VALUES ('219', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513573,\"discount\":\"0\"}', '{\"updated_at\":1457513571,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:54', 'admin');
INSERT INTO `activity` VALUES ('220', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513575,\"discount\":\"0\"}', '{\"updated_at\":1457513573,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:56', 'admin');
INSERT INTO `activity` VALUES ('221', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513577,\"discount\":\"0\"}', '{\"updated_at\":1457513575,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:52:58', 'admin');
INSERT INTO `activity` VALUES ('222', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513579,\"discount\":\"0\"}', '{\"updated_at\":1457513577,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:00', 'admin');
INSERT INTO `activity` VALUES ('223', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513581,\"discount\":\"0\"}', '{\"updated_at\":1457513579,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:02', 'admin');
INSERT INTO `activity` VALUES ('224', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513583,\"discount\":\"0\"}', '{\"updated_at\":1457513581,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:04', 'admin');
INSERT INTO `activity` VALUES ('225', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513585,\"discount\":\"0\"}', '{\"updated_at\":1457513583,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:06', 'admin');
INSERT INTO `activity` VALUES ('226', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513587,\"discount\":\"0\"}', '{\"updated_at\":1457513585,\"sale_id\":null,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:08', 'admin');
INSERT INTO `activity` VALUES ('227', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513589,\"discount\":\"0\"}', '{\"updated_at\":1457513587,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:10', 'admin');
INSERT INTO `activity` VALUES ('228', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513592,\"discount\":\"0\"}', '{\"updated_at\":1457513589,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:12', 'admin');
INSERT INTO `activity` VALUES ('229', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513593,\"discount\":\"0\"}', '{\"updated_at\":1457513592,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:14', 'admin');
INSERT INTO `activity` VALUES ('230', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513595,\"discount\":\"0\"}', '{\"updated_at\":1457513593,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:16', 'admin');
INSERT INTO `activity` VALUES ('231', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513597,\"discount\":\"0\"}', '{\"updated_at\":1457513595,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:18', 'admin');
INSERT INTO `activity` VALUES ('232', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513600,\"discount\":\"0\"}', '{\"updated_at\":1457513597,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:20', 'admin');
INSERT INTO `activity` VALUES ('233', 'U', 'common\\models\\Order', '2', '{\"updated_at\":1457513602,\"discount\":\"0\"}', '{\"updated_at\":1457513600,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:22', 'admin');
INSERT INTO `activity` VALUES ('234', 'U', 'common\\models\\Order', '3', '[]', '{\"code\":null}', '2016-03-09 15:53:27', 'admin');
INSERT INTO `activity` VALUES ('235', 'N', 'common\\models\\Order', '3', null, null, '2016-03-09 15:53:27', 'admin');
INSERT INTO `activity` VALUES ('236', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513616,\"discount\":\"0\"}', '{\"updated_at\":1457513607,\"sale_date\":null,\"note\":null,\"discount\":0}', '2016-03-09 15:53:36', 'admin');
INSERT INTO `activity` VALUES ('237', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513621,\"discount\":\"0\"}', '{\"updated_at\":1457513616,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:41', 'admin');
INSERT INTO `activity` VALUES ('238', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513627,\"discount\":\"0\"}', '{\"updated_at\":1457513621,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:47', 'admin');
INSERT INTO `activity` VALUES ('239', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513632,\"discount\":\"0\"}', '{\"updated_at\":1457513627,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:52', 'admin');
INSERT INTO `activity` VALUES ('240', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513637,\"discount\":\"0\"}', '{\"updated_at\":1457513632,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:53:57', 'admin');
INSERT INTO `activity` VALUES ('241', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513642,\"discount\":\"0\"}', '{\"updated_at\":1457513637,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:02', 'admin');
INSERT INTO `activity` VALUES ('242', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513647,\"discount\":\"0\"}', '{\"updated_at\":1457513642,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:07', 'admin');
INSERT INTO `activity` VALUES ('243', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513652,\"discount\":\"0\"}', '{\"updated_at\":1457513647,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:12', 'admin');
INSERT INTO `activity` VALUES ('244', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513657,\"discount\":\"0\"}', '{\"updated_at\":1457513652,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:17', 'admin');
INSERT INTO `activity` VALUES ('245', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513662,\"discount\":\"0\"}', '{\"updated_at\":1457513657,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:22', 'admin');
INSERT INTO `activity` VALUES ('246', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513667,\"discount\":\"0\"}', '{\"updated_at\":1457513662,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:27', 'admin');
INSERT INTO `activity` VALUES ('247', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513672,\"discount\":\"0\"}', '{\"updated_at\":1457513667,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:32', 'admin');
INSERT INTO `activity` VALUES ('248', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513677,\"discount\":\"0\"}', '{\"updated_at\":1457513672,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:37', 'admin');
INSERT INTO `activity` VALUES ('249', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513682,\"discount\":\"0\"}', '{\"updated_at\":1457513677,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:42', 'admin');
INSERT INTO `activity` VALUES ('250', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513687,\"discount\":\"0\"}', '{\"updated_at\":1457513682,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:47', 'admin');
INSERT INTO `activity` VALUES ('251', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513692,\"discount\":\"0\"}', '{\"updated_at\":1457513687,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:52', 'admin');
INSERT INTO `activity` VALUES ('252', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513697,\"discount\":\"0\"}', '{\"updated_at\":1457513692,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:54:57', 'admin');
INSERT INTO `activity` VALUES ('253', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513702,\"discount\":\"0\"}', '{\"updated_at\":1457513697,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:02', 'admin');
INSERT INTO `activity` VALUES ('254', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513707,\"discount\":\"0\"}', '{\"updated_at\":1457513702,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:07', 'admin');
INSERT INTO `activity` VALUES ('255', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513712,\"discount\":\"0\"}', '{\"updated_at\":1457513707,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:12', 'admin');
INSERT INTO `activity` VALUES ('256', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513717,\"discount\":\"0\"}', '{\"updated_at\":1457513712,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:17', 'admin');
INSERT INTO `activity` VALUES ('257', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513722,\"discount\":\"0\"}', '{\"updated_at\":1457513717,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:22', 'admin');
INSERT INTO `activity` VALUES ('258', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513727,\"discount\":\"0\"}', '{\"updated_at\":1457513722,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:27', 'admin');
INSERT INTO `activity` VALUES ('259', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513732,\"discount\":\"0\"}', '{\"updated_at\":1457513727,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:32', 'admin');
INSERT INTO `activity` VALUES ('260', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513737,\"discount\":\"0\"}', '{\"updated_at\":1457513732,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:37', 'admin');
INSERT INTO `activity` VALUES ('261', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513742,\"discount\":\"0\"}', '{\"updated_at\":1457513737,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:42', 'admin');
INSERT INTO `activity` VALUES ('262', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513747,\"discount\":\"0\"}', '{\"updated_at\":1457513742,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:47', 'admin');
INSERT INTO `activity` VALUES ('263', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513752,\"discount\":\"0\"}', '{\"updated_at\":1457513747,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:52', 'admin');
INSERT INTO `activity` VALUES ('264', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513757,\"discount\":\"0\"}', '{\"updated_at\":1457513752,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:55:57', 'admin');
INSERT INTO `activity` VALUES ('265', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513762,\"discount\":\"0\"}', '{\"updated_at\":1457513757,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:56:02', 'admin');
INSERT INTO `activity` VALUES ('266', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513767,\"discount\":\"0\"}', '{\"updated_at\":1457513762,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:56:07', 'admin');
INSERT INTO `activity` VALUES ('267', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513772,\"discount\":\"0\"}', '{\"updated_at\":1457513767,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:56:12', 'admin');
INSERT INTO `activity` VALUES ('268', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513777,\"discount\":\"0\"}', '{\"updated_at\":1457513772,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:56:17', 'admin');
INSERT INTO `activity` VALUES ('269', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513782,\"discount\":\"0\"}', '{\"updated_at\":1457513777,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:56:22', 'admin');
INSERT INTO `activity` VALUES ('270', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513787,\"discount\":\"0\"}', '{\"updated_at\":1457513782,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:56:27', 'admin');
INSERT INTO `activity` VALUES ('271', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513795,\"discount\":\"0\"}', '{\"updated_at\":1457513787,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:56:35', 'admin');
INSERT INTO `activity` VALUES ('272', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513800,\"discount\":\"0\"}', '{\"updated_at\":1457513795,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:56:40', 'admin');
INSERT INTO `activity` VALUES ('273', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513805,\"discount\":\"0\"}', '{\"updated_at\":1457513800,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:56:45', 'admin');
INSERT INTO `activity` VALUES ('274', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513810,\"discount\":\"0\"}', '{\"updated_at\":1457513805,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:56:50', 'admin');
INSERT INTO `activity` VALUES ('275', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513821,\"discount\":\"0\"}', '{\"updated_at\":1457513810,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:57:01', 'admin');
INSERT INTO `activity` VALUES ('276', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513826,\"discount\":\"0\"}', '{\"updated_at\":1457513821,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:57:06', 'admin');
INSERT INTO `activity` VALUES ('277', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513831,\"discount\":\"0\"}', '{\"updated_at\":1457513826,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:57:11', 'admin');
INSERT INTO `activity` VALUES ('278', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513836,\"discount\":\"0\"}', '{\"updated_at\":1457513831,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:57:16', 'admin');
INSERT INTO `activity` VALUES ('279', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513841,\"discount\":\"0\"}', '{\"updated_at\":1457513836,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:57:21', 'admin');
INSERT INTO `activity` VALUES ('280', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513846,\"discount\":\"0\"}', '{\"updated_at\":1457513841,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:57:26', 'admin');
INSERT INTO `activity` VALUES ('281', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513851,\"discount\":\"0\"}', '{\"updated_at\":1457513846,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:57:31', 'admin');
INSERT INTO `activity` VALUES ('282', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513858,\"discount\":\"0\"}', '{\"updated_at\":1457513851,\"sale_date\":null,\"discount\":0}', '2016-03-09 15:57:38', 'admin');
INSERT INTO `activity` VALUES ('283', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513864,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513858,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:57:44', 'admin');
INSERT INTO `activity` VALUES ('284', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513869,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513864,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:57:49', 'admin');
INSERT INTO `activity` VALUES ('285', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513874,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513869,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:57:54', 'admin');
INSERT INTO `activity` VALUES ('286', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513879,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513874,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:57:59', 'admin');
INSERT INTO `activity` VALUES ('287', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513884,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513879,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:04', 'admin');
INSERT INTO `activity` VALUES ('288', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513889,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513884,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:09', 'admin');
INSERT INTO `activity` VALUES ('289', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513894,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513889,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:14', 'admin');
INSERT INTO `activity` VALUES ('290', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513899,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513894,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:19', 'admin');
INSERT INTO `activity` VALUES ('291', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513904,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513899,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:24', 'admin');
INSERT INTO `activity` VALUES ('292', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513909,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513904,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:29', 'admin');
INSERT INTO `activity` VALUES ('293', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513914,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513909,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:34', 'admin');
INSERT INTO `activity` VALUES ('294', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513919,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513914,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:39', 'admin');
INSERT INTO `activity` VALUES ('295', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513924,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513919,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:44', 'admin');
INSERT INTO `activity` VALUES ('296', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513929,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513924,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:49', 'admin');
INSERT INTO `activity` VALUES ('297', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513934,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513929,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:54', 'admin');
INSERT INTO `activity` VALUES ('298', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513939,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513934,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:58:59', 'admin');
INSERT INTO `activity` VALUES ('299', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513944,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513939,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:59:04', 'admin');
INSERT INTO `activity` VALUES ('300', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513949,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513944,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:59:09', 'admin');
INSERT INTO `activity` VALUES ('301', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513957,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513949,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:59:17', 'admin');
INSERT INTO `activity` VALUES ('302', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513962,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513957,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:59:22', 'admin');
INSERT INTO `activity` VALUES ('303', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513970,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513962,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:59:30', 'admin');
INSERT INTO `activity` VALUES ('304', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513976,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513970,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:59:36', 'admin');
INSERT INTO `activity` VALUES ('305', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513981,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513976,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:59:41', 'admin');
INSERT INTO `activity` VALUES ('306', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513986,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513981,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:59:46', 'admin');
INSERT INTO `activity` VALUES ('307', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513991,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513986,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:59:51', 'admin');
INSERT INTO `activity` VALUES ('308', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457513996,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513991,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 15:59:56', 'admin');
INSERT INTO `activity` VALUES ('309', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514001,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457513996,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:00:01', 'admin');
INSERT INTO `activity` VALUES ('310', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514006,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457514001,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:00:06', 'admin');
INSERT INTO `activity` VALUES ('311', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514011,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457514006,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:00:11', 'admin');
INSERT INTO `activity` VALUES ('312', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514015,\"sale_date\":\"03/09/2016 12:00 AM\",\"discount\":\"0\"}', '{\"updated_at\":1457514011,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:00:15', 'admin');
INSERT INTO `activity` VALUES ('313', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514021,\"sale_date\":\"We/03/162016 01:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514015,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:00:21', 'admin');
INSERT INTO `activity` VALUES ('314', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514026,\"sale_date\":\"We/03/162016 01:30:55\",\"discount\":\"0\"}', '{\"updated_at\":1457514021,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:00:26', 'admin');
INSERT INTO `activity` VALUES ('315', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514031,\"sale_date\":\"We/03/162016 01:30:55\",\"discount\":\"0\"}', '{\"updated_at\":1457514026,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:00:31', 'admin');
INSERT INTO `activity` VALUES ('316', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514039,\"sale_date\":\"17/03/162016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514031,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:00:39', 'admin');
INSERT INTO `activity` VALUES ('317', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514051,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514039,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:00:51', 'admin');
INSERT INTO `activity` VALUES ('318', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514056,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514051,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:00:56', 'admin');
INSERT INTO `activity` VALUES ('319', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514061,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514056,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:01:01', 'admin');
INSERT INTO `activity` VALUES ('320', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514066,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514061,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:01:06', 'admin');
INSERT INTO `activity` VALUES ('321', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514071,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514066,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:01:11', 'admin');
INSERT INTO `activity` VALUES ('322', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514080,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514071,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:01:20', 'admin');
INSERT INTO `activity` VALUES ('323', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514088,\"sale_date\":\"\",\"discount\":\"0\"}', '{\"updated_at\":1457514080,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:01:28', 'admin');
INSERT INTO `activity` VALUES ('324', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514093,\"discount\":\"0\"}', '{\"updated_at\":1457514088,\"sale_date\":null,\"discount\":0}', '2016-03-09 16:01:33', 'admin');
INSERT INTO `activity` VALUES ('325', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514098,\"discount\":\"0\"}', '{\"updated_at\":1457514093,\"sale_date\":null,\"discount\":0}', '2016-03-09 16:01:38', 'admin');
INSERT INTO `activity` VALUES ('326', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514103,\"discount\":\"0\"}', '{\"updated_at\":1457514098,\"sale_date\":null,\"discount\":0}', '2016-03-09 16:01:43', 'admin');
INSERT INTO `activity` VALUES ('327', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514108,\"discount\":\"0\"}', '{\"updated_at\":1457514103,\"sale_date\":null,\"discount\":0}', '2016-03-09 16:01:48', 'admin');
INSERT INTO `activity` VALUES ('328', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514113,\"discount\":\"0\"}', '{\"updated_at\":1457514108,\"sale_date\":null,\"discount\":0}', '2016-03-09 16:01:53', 'admin');
INSERT INTO `activity` VALUES ('329', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514118,\"discount\":\"0\"}', '{\"updated_at\":1457514113,\"sale_date\":null,\"discount\":0}', '2016-03-09 16:01:58', 'admin');
INSERT INTO `activity` VALUES ('330', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514123,\"discount\":\"0\"}', '{\"updated_at\":1457514118,\"sale_date\":null,\"discount\":0}', '2016-03-09 16:02:03', 'admin');
INSERT INTO `activity` VALUES ('331', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514128,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514123,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:02:08', 'admin');
INSERT INTO `activity` VALUES ('332', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514133,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514128,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:02:13', 'admin');
INSERT INTO `activity` VALUES ('333', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514138,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514133,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:02:18', 'admin');
INSERT INTO `activity` VALUES ('334', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514143,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514138,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:02:23', 'admin');
INSERT INTO `activity` VALUES ('335', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514148,\"sale_date\":\"09/03/2016 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514143,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:02:28', 'admin');
INSERT INTO `activity` VALUES ('336', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514159,\"sale_date\":\"2016-03-09 00:00:00\",\"discount\":\"0\"}', '{\"updated_at\":1457514148,\"sale_date\":\"0000-00-00 00:00:00\",\"discount\":0}', '2016-03-09 16:02:39', 'admin');
INSERT INTO `activity` VALUES ('337', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514164,\"discount\":\"0\"}', '{\"updated_at\":1457514159,\"discount\":0}', '2016-03-09 16:02:44', 'admin');
INSERT INTO `activity` VALUES ('338', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514178,\"note\":\"123123123\",\"discount\":\"0\"}', '{\"updated_at\":1457514164,\"note\":\"\",\"discount\":0}', '2016-03-09 16:02:58', 'admin');
INSERT INTO `activity` VALUES ('339', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514190,\"discount\":\"0\"}', '{\"updated_at\":1457514178,\"discount\":0}', '2016-03-09 16:03:10', 'admin');
INSERT INTO `activity` VALUES ('340', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514195,\"discount\":\"0\"}', '{\"updated_at\":1457514190,\"discount\":0}', '2016-03-09 16:03:15', 'admin');
INSERT INTO `activity` VALUES ('341', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514200,\"discount\":\"0\"}', '{\"updated_at\":1457514195,\"discount\":0}', '2016-03-09 16:03:20', 'admin');
INSERT INTO `activity` VALUES ('342', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514205,\"discount\":\"0\"}', '{\"updated_at\":1457514200,\"discount\":0}', '2016-03-09 16:03:25', 'admin');
INSERT INTO `activity` VALUES ('343', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514210,\"discount\":\"0\"}', '{\"updated_at\":1457514205,\"discount\":0}', '2016-03-09 16:03:30', 'admin');
INSERT INTO `activity` VALUES ('344', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514215,\"discount\":\"0\"}', '{\"updated_at\":1457514210,\"discount\":0}', '2016-03-09 16:03:35', 'admin');
INSERT INTO `activity` VALUES ('345', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514220,\"discount\":\"0\"}', '{\"updated_at\":1457514215,\"discount\":0}', '2016-03-09 16:03:40', 'admin');
INSERT INTO `activity` VALUES ('346', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514225,\"discount\":\"0\"}', '{\"updated_at\":1457514220,\"discount\":0}', '2016-03-09 16:03:45', 'admin');
INSERT INTO `activity` VALUES ('347', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514230,\"discount\":\"0\"}', '{\"updated_at\":1457514225,\"discount\":0}', '2016-03-09 16:03:50', 'admin');
INSERT INTO `activity` VALUES ('348', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514235,\"discount\":\"0\"}', '{\"updated_at\":1457514230,\"discount\":0}', '2016-03-09 16:03:55', 'admin');
INSERT INTO `activity` VALUES ('349', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514240,\"discount\":\"0\"}', '{\"updated_at\":1457514235,\"discount\":0}', '2016-03-09 16:04:00', 'admin');
INSERT INTO `activity` VALUES ('350', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514245,\"discount\":\"0\"}', '{\"updated_at\":1457514240,\"discount\":0}', '2016-03-09 16:04:05', 'admin');
INSERT INTO `activity` VALUES ('351', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514250,\"discount\":\"0\"}', '{\"updated_at\":1457514245,\"discount\":0}', '2016-03-09 16:04:10', 'admin');
INSERT INTO `activity` VALUES ('352', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514255,\"discount\":\"0\"}', '{\"updated_at\":1457514250,\"discount\":0}', '2016-03-09 16:04:15', 'admin');
INSERT INTO `activity` VALUES ('353', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514260,\"discount\":\"0\"}', '{\"updated_at\":1457514255,\"discount\":0}', '2016-03-09 16:04:20', 'admin');
INSERT INTO `activity` VALUES ('354', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514265,\"discount\":\"0\"}', '{\"updated_at\":1457514260,\"discount\":0}', '2016-03-09 16:04:25', 'admin');
INSERT INTO `activity` VALUES ('355', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514270,\"discount\":\"0\"}', '{\"updated_at\":1457514265,\"discount\":0}', '2016-03-09 16:04:30', 'admin');
INSERT INTO `activity` VALUES ('356', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514275,\"discount\":\"0\"}', '{\"updated_at\":1457514270,\"discount\":0}', '2016-03-09 16:04:35', 'admin');
INSERT INTO `activity` VALUES ('357', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514280,\"discount\":\"0\"}', '{\"updated_at\":1457514275,\"discount\":0}', '2016-03-09 16:04:40', 'admin');
INSERT INTO `activity` VALUES ('358', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514285,\"discount\":\"0\"}', '{\"updated_at\":1457514280,\"discount\":0}', '2016-03-09 16:04:45', 'admin');
INSERT INTO `activity` VALUES ('359', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514290,\"discount\":\"0\"}', '{\"updated_at\":1457514285,\"discount\":0}', '2016-03-09 16:04:50', 'admin');
INSERT INTO `activity` VALUES ('360', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514295,\"discount\":\"0\"}', '{\"updated_at\":1457514290,\"discount\":0}', '2016-03-09 16:04:55', 'admin');
INSERT INTO `activity` VALUES ('361', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514300,\"discount\":\"0\"}', '{\"updated_at\":1457514295,\"discount\":0}', '2016-03-09 16:05:00', 'admin');
INSERT INTO `activity` VALUES ('362', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514305,\"discount\":\"0\"}', '{\"updated_at\":1457514300,\"discount\":0}', '2016-03-09 16:05:05', 'admin');
INSERT INTO `activity` VALUES ('363', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514310,\"discount\":\"0\"}', '{\"updated_at\":1457514305,\"discount\":0}', '2016-03-09 16:05:10', 'admin');
INSERT INTO `activity` VALUES ('364', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514315,\"discount\":\"0\"}', '{\"updated_at\":1457514310,\"discount\":0}', '2016-03-09 16:05:15', 'admin');
INSERT INTO `activity` VALUES ('365', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514320,\"discount\":\"0\"}', '{\"updated_at\":1457514315,\"discount\":0}', '2016-03-09 16:05:20', 'admin');
INSERT INTO `activity` VALUES ('366', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514325,\"discount\":\"0\"}', '{\"updated_at\":1457514320,\"discount\":0}', '2016-03-09 16:05:25', 'admin');
INSERT INTO `activity` VALUES ('367', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514330,\"discount\":\"0\"}', '{\"updated_at\":1457514325,\"discount\":0}', '2016-03-09 16:05:30', 'admin');
INSERT INTO `activity` VALUES ('368', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514335,\"discount\":\"0\"}', '{\"updated_at\":1457514330,\"discount\":0}', '2016-03-09 16:05:35', 'admin');
INSERT INTO `activity` VALUES ('369', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514340,\"discount\":\"0\"}', '{\"updated_at\":1457514335,\"discount\":0}', '2016-03-09 16:05:40', 'admin');
INSERT INTO `activity` VALUES ('370', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514345,\"discount\":\"0\"}', '{\"updated_at\":1457514340,\"discount\":0}', '2016-03-09 16:05:45', 'admin');
INSERT INTO `activity` VALUES ('371', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514350,\"discount\":\"0\"}', '{\"updated_at\":1457514345,\"discount\":0}', '2016-03-09 16:05:50', 'admin');
INSERT INTO `activity` VALUES ('372', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514355,\"discount\":\"0\"}', '{\"updated_at\":1457514350,\"discount\":0}', '2016-03-09 16:05:55', 'admin');
INSERT INTO `activity` VALUES ('373', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514365,\"discount\":\"0\"}', '{\"updated_at\":1457514355,\"discount\":0}', '2016-03-09 16:06:05', 'admin');
INSERT INTO `activity` VALUES ('374', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514370,\"discount\":\"0\"}', '{\"updated_at\":1457514365,\"discount\":0}', '2016-03-09 16:06:10', 'admin');
INSERT INTO `activity` VALUES ('375', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514375,\"discount\":\"0\"}', '{\"updated_at\":1457514370,\"discount\":0}', '2016-03-09 16:06:15', 'admin');
INSERT INTO `activity` VALUES ('376', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514380,\"discount\":\"0\"}', '{\"updated_at\":1457514375,\"discount\":0}', '2016-03-09 16:06:20', 'admin');
INSERT INTO `activity` VALUES ('377', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514385,\"discount\":\"0\"}', '{\"updated_at\":1457514380,\"discount\":0}', '2016-03-09 16:06:25', 'admin');
INSERT INTO `activity` VALUES ('378', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514390,\"discount\":\"0\"}', '{\"updated_at\":1457514385,\"discount\":0}', '2016-03-09 16:06:30', 'admin');
INSERT INTO `activity` VALUES ('379', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514395,\"discount\":\"0\"}', '{\"updated_at\":1457514390,\"discount\":0}', '2016-03-09 16:06:35', 'admin');
INSERT INTO `activity` VALUES ('380', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514400,\"discount\":\"0\"}', '{\"updated_at\":1457514395,\"discount\":0}', '2016-03-09 16:06:40', 'admin');
INSERT INTO `activity` VALUES ('381', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514406,\"discount\":\"0\"}', '{\"updated_at\":1457514400,\"discount\":0}', '2016-03-09 16:06:46', 'admin');
INSERT INTO `activity` VALUES ('382', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514410,\"discount\":\"0\"}', '{\"updated_at\":1457514406,\"discount\":0}', '2016-03-09 16:06:50', 'admin');
INSERT INTO `activity` VALUES ('383', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514415,\"discount\":\"0\"}', '{\"updated_at\":1457514410,\"discount\":0}', '2016-03-09 16:06:55', 'admin');
INSERT INTO `activity` VALUES ('384', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514420,\"discount\":\"0\"}', '{\"updated_at\":1457514415,\"discount\":0}', '2016-03-09 16:07:01', 'admin');
INSERT INTO `activity` VALUES ('385', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514426,\"discount\":\"0\"}', '{\"updated_at\":1457514420,\"discount\":0}', '2016-03-09 16:07:06', 'admin');
INSERT INTO `activity` VALUES ('386', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514431,\"discount\":\"0\"}', '{\"updated_at\":1457514426,\"discount\":0}', '2016-03-09 16:07:11', 'admin');
INSERT INTO `activity` VALUES ('387', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514436,\"discount\":\"0\"}', '{\"updated_at\":1457514431,\"discount\":0}', '2016-03-09 16:07:16', 'admin');
INSERT INTO `activity` VALUES ('388', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514445,\"discount\":\"0\"}', '{\"updated_at\":1457514436,\"discount\":0}', '2016-03-09 16:07:25', 'admin');
INSERT INTO `activity` VALUES ('389', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514450,\"discount\":\"0\"}', '{\"updated_at\":1457514445,\"discount\":0}', '2016-03-09 16:07:30', 'admin');
INSERT INTO `activity` VALUES ('390', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514455,\"discount\":\"0\"}', '{\"updated_at\":1457514450,\"discount\":0}', '2016-03-09 16:07:35', 'admin');
INSERT INTO `activity` VALUES ('391', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514460,\"discount\":\"0\"}', '{\"updated_at\":1457514455,\"discount\":0}', '2016-03-09 16:07:40', 'admin');
INSERT INTO `activity` VALUES ('392', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514465,\"discount\":\"0\"}', '{\"updated_at\":1457514460,\"discount\":0}', '2016-03-09 16:07:45', 'admin');
INSERT INTO `activity` VALUES ('393', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514470,\"discount\":\"0\"}', '{\"updated_at\":1457514465,\"discount\":0}', '2016-03-09 16:07:50', 'admin');
INSERT INTO `activity` VALUES ('394', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514475,\"discount\":\"0\"}', '{\"updated_at\":1457514470,\"discount\":0}', '2016-03-09 16:07:55', 'admin');
INSERT INTO `activity` VALUES ('395', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514480,\"discount\":\"0\"}', '{\"updated_at\":1457514475,\"discount\":0}', '2016-03-09 16:08:00', 'admin');
INSERT INTO `activity` VALUES ('396', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457514485,\"discount\":\"0\"}', '{\"updated_at\":1457514480,\"discount\":0}', '2016-03-09 16:08:05', 'admin');
INSERT INTO `activity` VALUES ('397', 'U', 'common\\models\\Order', '4', '[]', '{\"code\":null}', '2016-03-09 16:08:28', 'admin');
INSERT INTO `activity` VALUES ('398', 'N', 'common\\models\\Order', '4', null, null, '2016-03-09 16:08:28', 'admin');
INSERT INTO `activity` VALUES ('399', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514514,\"discount\":\"0\"}', '{\"updated_at\":1457514508,\"note\":null,\"discount\":0}', '2016-03-09 16:08:34', 'admin');
INSERT INTO `activity` VALUES ('400', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514519,\"discount\":\"0\"}', '{\"updated_at\":1457514514,\"discount\":0}', '2016-03-09 16:08:39', 'admin');
INSERT INTO `activity` VALUES ('401', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514524,\"discount\":\"0\"}', '{\"updated_at\":1457514519,\"discount\":0}', '2016-03-09 16:08:44', 'admin');
INSERT INTO `activity` VALUES ('402', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514529,\"discount\":\"0\"}', '{\"updated_at\":1457514524,\"discount\":0}', '2016-03-09 16:08:49', 'admin');
INSERT INTO `activity` VALUES ('403', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514534,\"discount\":\"0\"}', '{\"updated_at\":1457514529,\"discount\":0}', '2016-03-09 16:08:54', 'admin');
INSERT INTO `activity` VALUES ('404', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514539,\"discount\":\"0\"}', '{\"updated_at\":1457514534,\"discount\":0}', '2016-03-09 16:08:59', 'admin');
INSERT INTO `activity` VALUES ('405', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514544,\"discount\":\"0\"}', '{\"updated_at\":1457514539,\"discount\":0}', '2016-03-09 16:09:04', 'admin');
INSERT INTO `activity` VALUES ('406', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514549,\"discount\":\"0\"}', '{\"updated_at\":1457514544,\"discount\":0}', '2016-03-09 16:09:09', 'admin');
INSERT INTO `activity` VALUES ('407', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514554,\"discount\":\"0\"}', '{\"updated_at\":1457514549,\"discount\":0}', '2016-03-09 16:09:14', 'admin');
INSERT INTO `activity` VALUES ('408', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514559,\"discount\":\"0\"}', '{\"updated_at\":1457514554,\"discount\":0}', '2016-03-09 16:09:19', 'admin');
INSERT INTO `activity` VALUES ('409', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514564,\"discount\":\"0\"}', '{\"updated_at\":1457514559,\"discount\":0}', '2016-03-09 16:09:24', 'admin');
INSERT INTO `activity` VALUES ('410', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514569,\"discount\":\"0\"}', '{\"updated_at\":1457514564,\"discount\":0}', '2016-03-09 16:09:29', 'admin');
INSERT INTO `activity` VALUES ('411', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514574,\"discount\":\"0\"}', '{\"updated_at\":1457514569,\"discount\":0}', '2016-03-09 16:09:34', 'admin');
INSERT INTO `activity` VALUES ('412', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514579,\"discount\":\"0\"}', '{\"updated_at\":1457514574,\"discount\":0}', '2016-03-09 16:09:39', 'admin');
INSERT INTO `activity` VALUES ('413', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514584,\"discount\":\"0\"}', '{\"updated_at\":1457514579,\"discount\":0}', '2016-03-09 16:09:44', 'admin');
INSERT INTO `activity` VALUES ('414', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514589,\"discount\":\"0\"}', '{\"updated_at\":1457514584,\"discount\":0}', '2016-03-09 16:09:49', 'admin');
INSERT INTO `activity` VALUES ('415', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514594,\"discount\":\"0\"}', '{\"updated_at\":1457514589,\"discount\":0}', '2016-03-09 16:09:54', 'admin');
INSERT INTO `activity` VALUES ('416', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514599,\"discount\":\"0\"}', '{\"updated_at\":1457514594,\"discount\":0}', '2016-03-09 16:09:59', 'admin');
INSERT INTO `activity` VALUES ('417', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514604,\"discount\":\"0\"}', '{\"updated_at\":1457514599,\"discount\":0}', '2016-03-09 16:10:04', 'admin');
INSERT INTO `activity` VALUES ('418', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514609,\"discount\":\"0\"}', '{\"updated_at\":1457514604,\"discount\":0}', '2016-03-09 16:10:09', 'admin');
INSERT INTO `activity` VALUES ('419', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514614,\"discount\":\"0\"}', '{\"updated_at\":1457514609,\"discount\":0}', '2016-03-09 16:10:14', 'admin');
INSERT INTO `activity` VALUES ('420', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514619,\"discount\":\"0\"}', '{\"updated_at\":1457514614,\"discount\":0}', '2016-03-09 16:10:19', 'admin');
INSERT INTO `activity` VALUES ('421', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514624,\"discount\":\"0\"}', '{\"updated_at\":1457514619,\"discount\":0}', '2016-03-09 16:10:24', 'admin');
INSERT INTO `activity` VALUES ('422', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514629,\"discount\":\"0\"}', '{\"updated_at\":1457514624,\"discount\":0}', '2016-03-09 16:10:29', 'admin');
INSERT INTO `activity` VALUES ('423', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514634,\"discount\":\"0\"}', '{\"updated_at\":1457514629,\"discount\":0}', '2016-03-09 16:10:34', 'admin');
INSERT INTO `activity` VALUES ('424', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514639,\"discount\":\"0\"}', '{\"updated_at\":1457514634,\"discount\":0}', '2016-03-09 16:10:39', 'admin');
INSERT INTO `activity` VALUES ('425', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514644,\"discount\":\"0\"}', '{\"updated_at\":1457514639,\"discount\":0}', '2016-03-09 16:10:44', 'admin');
INSERT INTO `activity` VALUES ('426', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514649,\"discount\":\"0\"}', '{\"updated_at\":1457514644,\"discount\":0}', '2016-03-09 16:10:49', 'admin');
INSERT INTO `activity` VALUES ('427', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514654,\"discount\":\"0\"}', '{\"updated_at\":1457514649,\"discount\":0}', '2016-03-09 16:10:54', 'admin');
INSERT INTO `activity` VALUES ('428', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514659,\"discount\":\"0\"}', '{\"updated_at\":1457514654,\"discount\":0}', '2016-03-09 16:10:59', 'admin');
INSERT INTO `activity` VALUES ('429', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514664,\"discount\":\"0\"}', '{\"updated_at\":1457514659,\"discount\":0}', '2016-03-09 16:11:04', 'admin');
INSERT INTO `activity` VALUES ('430', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514669,\"discount\":\"0\"}', '{\"updated_at\":1457514664,\"discount\":0}', '2016-03-09 16:11:09', 'admin');
INSERT INTO `activity` VALUES ('431', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514674,\"discount\":\"0\"}', '{\"updated_at\":1457514669,\"discount\":0}', '2016-03-09 16:11:14', 'admin');
INSERT INTO `activity` VALUES ('432', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514679,\"discount\":\"0\"}', '{\"updated_at\":1457514674,\"discount\":0}', '2016-03-09 16:11:19', 'admin');
INSERT INTO `activity` VALUES ('433', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514684,\"discount\":\"0\"}', '{\"updated_at\":1457514679,\"discount\":0}', '2016-03-09 16:11:24', 'admin');
INSERT INTO `activity` VALUES ('434', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514689,\"discount\":\"0\"}', '{\"updated_at\":1457514684,\"discount\":0}', '2016-03-09 16:11:29', 'admin');
INSERT INTO `activity` VALUES ('435', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514694,\"discount\":\"0\"}', '{\"updated_at\":1457514689,\"discount\":0}', '2016-03-09 16:11:34', 'admin');
INSERT INTO `activity` VALUES ('436', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514699,\"discount\":\"0\"}', '{\"updated_at\":1457514694,\"discount\":0}', '2016-03-09 16:11:39', 'admin');
INSERT INTO `activity` VALUES ('437', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514704,\"discount\":\"0\"}', '{\"updated_at\":1457514699,\"discount\":0}', '2016-03-09 16:11:44', 'admin');
INSERT INTO `activity` VALUES ('438', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514709,\"discount\":\"0\"}', '{\"updated_at\":1457514704,\"discount\":0}', '2016-03-09 16:11:49', 'admin');
INSERT INTO `activity` VALUES ('439', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514714,\"discount\":\"0\"}', '{\"updated_at\":1457514709,\"discount\":0}', '2016-03-09 16:11:54', 'admin');
INSERT INTO `activity` VALUES ('440', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514719,\"discount\":\"0\"}', '{\"updated_at\":1457514714,\"discount\":0}', '2016-03-09 16:11:59', 'admin');
INSERT INTO `activity` VALUES ('441', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514724,\"discount\":\"0\"}', '{\"updated_at\":1457514719,\"discount\":0}', '2016-03-09 16:12:04', 'admin');
INSERT INTO `activity` VALUES ('442', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514729,\"discount\":\"0\"}', '{\"updated_at\":1457514724,\"discount\":0}', '2016-03-09 16:12:09', 'admin');
INSERT INTO `activity` VALUES ('443', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514734,\"discount\":\"0\"}', '{\"updated_at\":1457514729,\"discount\":0}', '2016-03-09 16:12:14', 'admin');
INSERT INTO `activity` VALUES ('444', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514739,\"discount\":\"0\"}', '{\"updated_at\":1457514734,\"discount\":0}', '2016-03-09 16:12:19', 'admin');
INSERT INTO `activity` VALUES ('445', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514744,\"discount\":\"0\"}', '{\"updated_at\":1457514739,\"discount\":0}', '2016-03-09 16:12:24', 'admin');
INSERT INTO `activity` VALUES ('446', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514749,\"discount\":\"0\"}', '{\"updated_at\":1457514744,\"discount\":0}', '2016-03-09 16:12:29', 'admin');
INSERT INTO `activity` VALUES ('447', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514754,\"discount\":\"0\"}', '{\"updated_at\":1457514749,\"discount\":0}', '2016-03-09 16:12:34', 'admin');
INSERT INTO `activity` VALUES ('448', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514760,\"discount\":\"0\"}', '{\"updated_at\":1457514754,\"discount\":0}', '2016-03-09 16:12:41', 'admin');
INSERT INTO `activity` VALUES ('449', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514765,\"discount\":\"0\"}', '{\"updated_at\":1457514760,\"discount\":0}', '2016-03-09 16:12:45', 'admin');
INSERT INTO `activity` VALUES ('450', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514770,\"discount\":\"0\"}', '{\"updated_at\":1457514765,\"discount\":0}', '2016-03-09 16:12:50', 'admin');
INSERT INTO `activity` VALUES ('451', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514775,\"discount\":\"0\"}', '{\"updated_at\":1457514770,\"discount\":0}', '2016-03-09 16:12:56', 'admin');
INSERT INTO `activity` VALUES ('452', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514780,\"discount\":\"0\"}', '{\"updated_at\":1457514775,\"discount\":0}', '2016-03-09 16:13:00', 'admin');
INSERT INTO `activity` VALUES ('453', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514785,\"discount\":\"0\"}', '{\"updated_at\":1457514780,\"discount\":0}', '2016-03-09 16:13:05', 'admin');
INSERT INTO `activity` VALUES ('454', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514790,\"discount\":\"0\"}', '{\"updated_at\":1457514785,\"discount\":0}', '2016-03-09 16:13:11', 'admin');
INSERT INTO `activity` VALUES ('455', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514795,\"discount\":\"0\"}', '{\"updated_at\":1457514790,\"discount\":0}', '2016-03-09 16:13:15', 'admin');
INSERT INTO `activity` VALUES ('456', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514800,\"discount\":\"0\"}', '{\"updated_at\":1457514795,\"discount\":0}', '2016-03-09 16:13:20', 'admin');
INSERT INTO `activity` VALUES ('457', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514805,\"discount\":\"0\"}', '{\"updated_at\":1457514800,\"discount\":0}', '2016-03-09 16:13:26', 'admin');
INSERT INTO `activity` VALUES ('458', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514810,\"discount\":\"0\"}', '{\"updated_at\":1457514805,\"discount\":0}', '2016-03-09 16:13:30', 'admin');
INSERT INTO `activity` VALUES ('459', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514821,\"discount\":\"0\"}', '{\"updated_at\":1457514810,\"discount\":0}', '2016-03-09 16:13:41', 'admin');
INSERT INTO `activity` VALUES ('460', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514831,\"discount\":\"0\"}', '{\"updated_at\":1457514821,\"discount\":0}', '2016-03-09 16:13:51', 'admin');
INSERT INTO `activity` VALUES ('461', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514836,\"discount\":\"0\"}', '{\"updated_at\":1457514831,\"discount\":0}', '2016-03-09 16:13:56', 'admin');
INSERT INTO `activity` VALUES ('462', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514841,\"discount\":\"0\"}', '{\"updated_at\":1457514836,\"discount\":0}', '2016-03-09 16:14:01', 'admin');
INSERT INTO `activity` VALUES ('463', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514849,\"discount\":\"0\"}', '{\"updated_at\":1457514841,\"discount\":0}', '2016-03-09 16:14:09', 'admin');
INSERT INTO `activity` VALUES ('464', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514861,\"discount\":\"0\"}', '{\"updated_at\":1457514849,\"discount\":0}', '2016-03-09 16:14:21', 'admin');
INSERT INTO `activity` VALUES ('465', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514866,\"discount\":\"0\"}', '{\"updated_at\":1457514861,\"discount\":0}', '2016-03-09 16:14:26', 'admin');
INSERT INTO `activity` VALUES ('466', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514871,\"discount\":\"0\"}', '{\"updated_at\":1457514866,\"discount\":0}', '2016-03-09 16:14:31', 'admin');
INSERT INTO `activity` VALUES ('467', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514890,\"discount\":\"0\"}', '{\"updated_at\":1457514871,\"discount\":0}', '2016-03-09 16:14:50', 'admin');
INSERT INTO `activity` VALUES ('468', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514895,\"discount\":\"0\"}', '{\"updated_at\":1457514890,\"discount\":0}', '2016-03-09 16:14:55', 'admin');
INSERT INTO `activity` VALUES ('469', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514900,\"discount\":\"0\"}', '{\"updated_at\":1457514895,\"discount\":0}', '2016-03-09 16:15:00', 'admin');
INSERT INTO `activity` VALUES ('470', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514905,\"discount\":\"0\"}', '{\"updated_at\":1457514900,\"discount\":0}', '2016-03-09 16:15:05', 'admin');
INSERT INTO `activity` VALUES ('471', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514910,\"discount\":\"0\"}', '{\"updated_at\":1457514905,\"discount\":0}', '2016-03-09 16:15:10', 'admin');
INSERT INTO `activity` VALUES ('472', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514915,\"discount\":\"0\"}', '{\"updated_at\":1457514910,\"discount\":0}', '2016-03-09 16:15:15', 'admin');
INSERT INTO `activity` VALUES ('473', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514925,\"discount\":\"0\"}', '{\"updated_at\":1457514915,\"discount\":0}', '2016-03-09 16:15:25', 'admin');
INSERT INTO `activity` VALUES ('474', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457514930,\"discount\":\"0\"}', '{\"updated_at\":1457514925,\"discount\":0}', '2016-03-09 16:15:30', 'admin');
INSERT INTO `activity` VALUES ('475', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457515047,\"discount\":\"0\"}', '{\"updated_at\":1457514930,\"discount\":0}', '2016-03-09 16:17:28', 'admin');
INSERT INTO `activity` VALUES ('476', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457515052,\"discount\":\"0\"}', '{\"updated_at\":1457515047,\"discount\":0}', '2016-03-09 16:17:32', 'admin');
INSERT INTO `activity` VALUES ('477', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457515080,\"discount\":\"0\"}', '{\"updated_at\":1457515052,\"discount\":0}', '2016-03-09 16:18:00', 'admin');
INSERT INTO `activity` VALUES ('478', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515083,\"discount\":\"0\"}', '{\"updated_at\":1457514485,\"discount\":0}', '2016-03-09 16:18:03', 'admin');
INSERT INTO `activity` VALUES ('479', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515092,\"discount\":\"0\"}', '{\"updated_at\":1457515083,\"discount\":0}', '2016-03-09 16:18:12', 'admin');
INSERT INTO `activity` VALUES ('480', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515097,\"discount\":\"0\"}', '{\"updated_at\":1457515092,\"discount\":0}', '2016-03-09 16:18:17', 'admin');
INSERT INTO `activity` VALUES ('481', 'U', 'common\\models\\Order', '4', '{\"updated_at\":1457515102,\"discount\":\"0\",\"status\":1}', '{\"updated_at\":1457515080,\"discount\":0,\"status\":0}', '2016-03-09 16:18:22', 'admin');
INSERT INTO `activity` VALUES ('482', 'U', 'common\\models\\Order', '4', '{\"discount\":\"0\"}', '{\"discount\":0}', '2016-03-09 16:18:22', 'admin');
INSERT INTO `activity` VALUES ('483', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515108,\"discount\":\"0\"}', '{\"updated_at\":1457515097,\"discount\":0}', '2016-03-09 16:18:28', 'admin');
INSERT INTO `activity` VALUES ('484', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515113,\"discount\":\"0\"}', '{\"updated_at\":1457515108,\"discount\":0}', '2016-03-09 16:18:33', 'admin');
INSERT INTO `activity` VALUES ('485', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515118,\"discount\":\"0\"}', '{\"updated_at\":1457515113,\"discount\":0}', '2016-03-09 16:18:38', 'admin');
INSERT INTO `activity` VALUES ('486', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515123,\"discount\":\"0\"}', '{\"updated_at\":1457515118,\"discount\":0}', '2016-03-09 16:18:43', 'admin');
INSERT INTO `activity` VALUES ('487', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515128,\"discount\":\"0\"}', '{\"updated_at\":1457515123,\"discount\":0}', '2016-03-09 16:18:48', 'admin');
INSERT INTO `activity` VALUES ('488', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515133,\"discount\":\"0\"}', '{\"updated_at\":1457515128,\"discount\":0}', '2016-03-09 16:18:53', 'admin');
INSERT INTO `activity` VALUES ('489', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515138,\"discount\":\"0\"}', '{\"updated_at\":1457515133,\"discount\":0}', '2016-03-09 16:18:58', 'admin');
INSERT INTO `activity` VALUES ('490', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515143,\"discount\":\"0\"}', '{\"updated_at\":1457515138,\"discount\":0}', '2016-03-09 16:19:03', 'admin');
INSERT INTO `activity` VALUES ('491', 'U', 'common\\models\\Order', '3', '{\"updated_at\":1457515148,\"discount\":\"0\"}', '{\"updated_at\":1457515143,\"discount\":0}', '2016-03-09 16:19:08', 'admin');
INSERT INTO `activity` VALUES ('492', 'D', 'common\\models\\Order', '3', null, null, '2016-03-09 16:19:15', 'admin');
INSERT INTO `activity` VALUES ('493', 'U', 'common\\models\\Order', '5', '[]', '{\"code\":null}', '2016-03-09 16:19:15', 'admin');
INSERT INTO `activity` VALUES ('494', 'N', 'common\\models\\Order', '5', null, null, '2016-03-09 16:19:15', 'admin');
INSERT INTO `activity` VALUES ('495', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515161,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"discount\":\"\"}', '{\"updated_at\":1457515155,\"sale_date\":\"2016-03-09 16:19:15\",\"note\":null,\"discount\":0}', '2016-03-09 16:19:21', 'admin');
INSERT INTO `activity` VALUES ('496', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515166,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457515161,\"sale_date\":\"2016-03-09 16:19:21\",\"discount\":null}', '2016-03-09 16:19:26', 'admin');
INSERT INTO `activity` VALUES ('497', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515171,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457515166,\"sale_date\":\"2016-03-09 16:19:26\",\"discount\":null}', '2016-03-09 16:19:31', 'admin');
INSERT INTO `activity` VALUES ('498', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515179}', '{\"updated_at\":1457515171,\"discount\":null}', '2016-03-09 16:19:39', 'admin');
INSERT INTO `activity` VALUES ('499', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515184}', '{\"updated_at\":1457515179,\"discount\":null}', '2016-03-09 16:19:44', 'admin');
INSERT INTO `activity` VALUES ('500', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515189}', '{\"updated_at\":1457515184,\"discount\":null}', '2016-03-09 16:19:49', 'admin');
INSERT INTO `activity` VALUES ('501', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515195}', '{\"updated_at\":1457515189,\"discount\":null}', '2016-03-09 16:19:55', 'admin');
INSERT INTO `activity` VALUES ('502', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515200}', '{\"updated_at\":1457515195,\"discount\":null}', '2016-03-09 16:20:00', 'admin');
INSERT INTO `activity` VALUES ('503', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515205}', '{\"updated_at\":1457515200,\"discount\":null}', '2016-03-09 16:20:05', 'admin');
INSERT INTO `activity` VALUES ('504', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515210}', '{\"updated_at\":1457515205,\"discount\":null}', '2016-03-09 16:20:10', 'admin');
INSERT INTO `activity` VALUES ('505', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515215}', '{\"updated_at\":1457515210,\"discount\":null}', '2016-03-09 16:20:15', 'admin');
INSERT INTO `activity` VALUES ('506', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515220}', '{\"updated_at\":1457515215,\"discount\":null}', '2016-03-09 16:20:20', 'admin');
INSERT INTO `activity` VALUES ('507', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515225}', '{\"updated_at\":1457515220,\"discount\":null}', '2016-03-09 16:20:25', 'admin');
INSERT INTO `activity` VALUES ('508', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515230}', '{\"updated_at\":1457515225,\"discount\":null}', '2016-03-09 16:20:30', 'admin');
INSERT INTO `activity` VALUES ('509', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515235}', '{\"updated_at\":1457515230,\"discount\":null}', '2016-03-09 16:20:35', 'admin');
INSERT INTO `activity` VALUES ('510', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515240}', '{\"updated_at\":1457515235,\"discount\":null}', '2016-03-09 16:20:40', 'admin');
INSERT INTO `activity` VALUES ('511', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515245}', '{\"updated_at\":1457515240,\"discount\":null}', '2016-03-09 16:20:45', 'admin');
INSERT INTO `activity` VALUES ('512', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515250}', '{\"updated_at\":1457515245,\"discount\":null}', '2016-03-09 16:20:50', 'admin');
INSERT INTO `activity` VALUES ('513', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515255}', '{\"updated_at\":1457515250,\"discount\":null}', '2016-03-09 16:20:55', 'admin');
INSERT INTO `activity` VALUES ('514', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515260}', '{\"updated_at\":1457515255,\"discount\":null}', '2016-03-09 16:21:00', 'admin');
INSERT INTO `activity` VALUES ('515', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515265}', '{\"updated_at\":1457515260,\"discount\":null}', '2016-03-09 16:21:05', 'admin');
INSERT INTO `activity` VALUES ('516', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515270}', '{\"updated_at\":1457515265,\"discount\":null}', '2016-03-09 16:21:10', 'admin');
INSERT INTO `activity` VALUES ('517', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515275}', '{\"updated_at\":1457515270,\"discount\":null}', '2016-03-09 16:21:15', 'admin');
INSERT INTO `activity` VALUES ('518', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515280}', '{\"updated_at\":1457515275,\"discount\":null}', '2016-03-09 16:21:20', 'admin');
INSERT INTO `activity` VALUES ('519', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515285}', '{\"updated_at\":1457515280,\"discount\":null}', '2016-03-09 16:21:25', 'admin');
INSERT INTO `activity` VALUES ('520', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515290}', '{\"updated_at\":1457515285,\"discount\":null}', '2016-03-09 16:21:30', 'admin');
INSERT INTO `activity` VALUES ('521', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515295}', '{\"updated_at\":1457515290,\"discount\":null}', '2016-03-09 16:21:35', 'admin');
INSERT INTO `activity` VALUES ('522', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515300}', '{\"updated_at\":1457515295,\"discount\":null}', '2016-03-09 16:21:40', 'admin');
INSERT INTO `activity` VALUES ('523', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515305}', '{\"updated_at\":1457515300,\"discount\":null}', '2016-03-09 16:21:45', 'admin');
INSERT INTO `activity` VALUES ('524', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515310}', '{\"updated_at\":1457515305,\"discount\":null}', '2016-03-09 16:21:50', 'admin');
INSERT INTO `activity` VALUES ('525', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515315}', '{\"updated_at\":1457515310,\"discount\":null}', '2016-03-09 16:21:55', 'admin');
INSERT INTO `activity` VALUES ('526', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515320}', '{\"updated_at\":1457515315,\"discount\":null}', '2016-03-09 16:22:00', 'admin');
INSERT INTO `activity` VALUES ('527', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515325}', '{\"updated_at\":1457515320,\"discount\":null}', '2016-03-09 16:22:05', 'admin');
INSERT INTO `activity` VALUES ('528', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515330}', '{\"updated_at\":1457515325,\"discount\":null}', '2016-03-09 16:22:10', 'admin');
INSERT INTO `activity` VALUES ('529', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515335}', '{\"updated_at\":1457515330,\"discount\":null}', '2016-03-09 16:22:15', 'admin');
INSERT INTO `activity` VALUES ('530', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515340}', '{\"updated_at\":1457515335,\"discount\":null}', '2016-03-09 16:22:20', 'admin');
INSERT INTO `activity` VALUES ('531', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515345}', '{\"updated_at\":1457515340,\"discount\":null}', '2016-03-09 16:22:25', 'admin');
INSERT INTO `activity` VALUES ('532', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515350}', '{\"updated_at\":1457515345,\"discount\":null}', '2016-03-09 16:22:30', 'admin');
INSERT INTO `activity` VALUES ('533', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515355}', '{\"updated_at\":1457515350,\"discount\":null}', '2016-03-09 16:22:35', 'admin');
INSERT INTO `activity` VALUES ('534', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515360}', '{\"updated_at\":1457515355,\"discount\":null}', '2016-03-09 16:22:40', 'admin');
INSERT INTO `activity` VALUES ('535', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515365}', '{\"updated_at\":1457515360,\"discount\":null}', '2016-03-09 16:22:45', 'admin');
INSERT INTO `activity` VALUES ('536', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515370}', '{\"updated_at\":1457515365,\"discount\":null}', '2016-03-09 16:22:50', 'admin');
INSERT INTO `activity` VALUES ('537', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515375}', '{\"updated_at\":1457515370,\"discount\":null}', '2016-03-09 16:22:55', 'admin');
INSERT INTO `activity` VALUES ('538', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515380}', '{\"updated_at\":1457515375,\"discount\":null}', '2016-03-09 16:23:00', 'admin');
INSERT INTO `activity` VALUES ('539', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515385}', '{\"updated_at\":1457515380,\"discount\":null}', '2016-03-09 16:23:05', 'admin');
INSERT INTO `activity` VALUES ('540', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515390}', '{\"updated_at\":1457515385,\"discount\":null}', '2016-03-09 16:23:10', 'admin');
INSERT INTO `activity` VALUES ('541', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515395}', '{\"updated_at\":1457515390,\"discount\":null}', '2016-03-09 16:23:15', 'admin');
INSERT INTO `activity` VALUES ('542', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515400}', '{\"updated_at\":1457515395,\"discount\":null}', '2016-03-09 16:23:20', 'admin');
INSERT INTO `activity` VALUES ('543', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515405}', '{\"updated_at\":1457515400,\"discount\":null}', '2016-03-09 16:23:25', 'admin');
INSERT INTO `activity` VALUES ('544', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515410}', '{\"updated_at\":1457515405,\"discount\":null}', '2016-03-09 16:23:30', 'admin');
INSERT INTO `activity` VALUES ('545', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515415}', '{\"updated_at\":1457515410,\"discount\":null}', '2016-03-09 16:23:35', 'admin');
INSERT INTO `activity` VALUES ('546', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515420}', '{\"updated_at\":1457515415,\"discount\":null}', '2016-03-09 16:23:40', 'admin');
INSERT INTO `activity` VALUES ('547', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515425}', '{\"updated_at\":1457515420,\"discount\":null}', '2016-03-09 16:23:45', 'admin');
INSERT INTO `activity` VALUES ('548', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515430}', '{\"updated_at\":1457515425,\"discount\":null}', '2016-03-09 16:23:50', 'admin');
INSERT INTO `activity` VALUES ('549', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515435}', '{\"updated_at\":1457515430,\"discount\":null}', '2016-03-09 16:23:55', 'admin');
INSERT INTO `activity` VALUES ('550', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515440}', '{\"updated_at\":1457515435,\"discount\":null}', '2016-03-09 16:24:00', 'admin');
INSERT INTO `activity` VALUES ('551', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515445}', '{\"updated_at\":1457515440,\"discount\":null}', '2016-03-09 16:24:05', 'admin');
INSERT INTO `activity` VALUES ('552', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515450}', '{\"updated_at\":1457515445,\"discount\":null}', '2016-03-09 16:24:10', 'admin');
INSERT INTO `activity` VALUES ('553', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515455}', '{\"updated_at\":1457515450,\"discount\":null}', '2016-03-09 16:24:15', 'admin');
INSERT INTO `activity` VALUES ('554', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515459}', '{\"updated_at\":1457515455,\"discount\":null}', '2016-03-09 16:24:19', 'admin');
INSERT INTO `activity` VALUES ('555', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515464}', '{\"updated_at\":1457515459,\"discount\":null}', '2016-03-09 16:24:24', 'admin');
INSERT INTO `activity` VALUES ('556', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515469}', '{\"updated_at\":1457515464,\"discount\":null}', '2016-03-09 16:24:29', 'admin');
INSERT INTO `activity` VALUES ('557', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515474}', '{\"updated_at\":1457515469,\"discount\":null}', '2016-03-09 16:24:34', 'admin');
INSERT INTO `activity` VALUES ('558', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515479}', '{\"updated_at\":1457515474,\"discount\":null}', '2016-03-09 16:24:39', 'admin');
INSERT INTO `activity` VALUES ('559', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515484}', '{\"updated_at\":1457515479,\"discount\":null}', '2016-03-09 16:24:44', 'admin');
INSERT INTO `activity` VALUES ('560', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515489}', '{\"updated_at\":1457515484,\"discount\":null}', '2016-03-09 16:24:49', 'admin');
INSERT INTO `activity` VALUES ('561', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515494}', '{\"updated_at\":1457515489,\"discount\":null}', '2016-03-09 16:24:54', 'admin');
INSERT INTO `activity` VALUES ('562', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515499}', '{\"updated_at\":1457515494,\"discount\":null}', '2016-03-09 16:24:59', 'admin');
INSERT INTO `activity` VALUES ('563', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515504}', '{\"updated_at\":1457515499,\"discount\":null}', '2016-03-09 16:25:04', 'admin');
INSERT INTO `activity` VALUES ('564', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515509}', '{\"updated_at\":1457515504,\"discount\":null}', '2016-03-09 16:25:09', 'admin');
INSERT INTO `activity` VALUES ('565', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515514}', '{\"updated_at\":1457515509,\"discount\":null}', '2016-03-09 16:25:14', 'admin');
INSERT INTO `activity` VALUES ('566', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515519}', '{\"updated_at\":1457515514,\"discount\":null}', '2016-03-09 16:25:19', 'admin');
INSERT INTO `activity` VALUES ('567', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515524}', '{\"updated_at\":1457515519,\"discount\":null}', '2016-03-09 16:25:24', 'admin');
INSERT INTO `activity` VALUES ('568', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515529}', '{\"updated_at\":1457515524,\"discount\":null}', '2016-03-09 16:25:29', 'admin');
INSERT INTO `activity` VALUES ('569', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515537}', '{\"updated_at\":1457515529,\"customer_id\":null,\"discount\":null}', '2016-03-09 16:25:37', 'admin');
INSERT INTO `activity` VALUES ('570', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515540,\"customer_id\":\"1\"}', '{\"updated_at\":1457515537,\"customer_id\":1,\"discount\":null}', '2016-03-09 16:25:40', 'admin');
INSERT INTO `activity` VALUES ('571', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515545,\"note\":\"123123\",\"customer_id\":\"1\"}', '{\"updated_at\":1457515540,\"note\":\"\",\"customer_id\":1,\"discount\":null}', '2016-03-09 16:25:45', 'admin');
INSERT INTO `activity` VALUES ('572', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515550,\"customer_id\":\"1\"}', '{\"updated_at\":1457515545,\"customer_id\":1,\"discount\":null}', '2016-03-09 16:25:50', 'admin');
INSERT INTO `activity` VALUES ('573', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515555,\"customer_id\":\"1\"}', '{\"updated_at\":1457515550,\"customer_id\":1,\"discount\":null}', '2016-03-09 16:25:55', 'admin');
INSERT INTO `activity` VALUES ('574', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515560,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515555,\"customer_id\":1,\"discount\":12}', '2016-03-09 16:26:00', 'admin');
INSERT INTO `activity` VALUES ('575', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515565,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515560,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:05', 'admin');
INSERT INTO `activity` VALUES ('576', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515570,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515565,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:10', 'admin');
INSERT INTO `activity` VALUES ('577', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515575,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515570,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:15', 'admin');
INSERT INTO `activity` VALUES ('578', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515580,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515575,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:20', 'admin');
INSERT INTO `activity` VALUES ('579', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515585,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515580,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:25', 'admin');
INSERT INTO `activity` VALUES ('580', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515590,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515585,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:30', 'admin');
INSERT INTO `activity` VALUES ('581', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515595,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515590,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:35', 'admin');
INSERT INTO `activity` VALUES ('582', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515600,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515595,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:40', 'admin');
INSERT INTO `activity` VALUES ('583', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515605,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515600,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:45', 'admin');
INSERT INTO `activity` VALUES ('584', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515610,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515605,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:50', 'admin');
INSERT INTO `activity` VALUES ('585', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515615,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515610,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:26:55', 'admin');
INSERT INTO `activity` VALUES ('586', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515620,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515615,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:00', 'admin');
INSERT INTO `activity` VALUES ('587', 'U', 'common\\models\\Customer', '3', '{\"search_term\":\"C00003|54546546546546|5465464\"}', '{\"search_term\":\"|54546546546546|5465464\",\"code\":null}', '2016-03-09 16:27:01', 'admin');
INSERT INTO `activity` VALUES ('588', 'N', 'common\\models\\Customer', '3', null, null, '2016-03-09 16:27:01', 'admin');
INSERT INTO `activity` VALUES ('589', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515625,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515620,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:05', 'admin');
INSERT INTO `activity` VALUES ('590', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515630,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515625,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:10', 'admin');
INSERT INTO `activity` VALUES ('591', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515635,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515630,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:15', 'admin');
INSERT INTO `activity` VALUES ('592', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515640,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515635,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:20', 'admin');
INSERT INTO `activity` VALUES ('593', 'U', 'common\\models\\Customer', '4', '{\"search_term\":\"C00004|aaaaa|aaaa\"}', '{\"search_term\":\"|aaaaa|aaaa\",\"code\":null}', '2016-03-09 16:27:23', 'admin');
INSERT INTO `activity` VALUES ('594', 'N', 'common\\models\\Customer', '4', null, null, '2016-03-09 16:27:23', 'admin');
INSERT INTO `activity` VALUES ('595', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515645,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515640,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:25', 'admin');
INSERT INTO `activity` VALUES ('596', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515650,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515645,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:30', 'admin');
INSERT INTO `activity` VALUES ('597', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515655,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515650,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:35', 'admin');
INSERT INTO `activity` VALUES ('598', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515660,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515655,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:40', 'admin');
INSERT INTO `activity` VALUES ('599', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515665,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515660,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:45', 'admin');
INSERT INTO `activity` VALUES ('600', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515670,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457515665,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:50', 'admin');
INSERT INTO `activity` VALUES ('601', 'U', 'common\\models\\Customer', '5', '{\"updated_at\":1457515675,\"search_term\":\"C00005|vbbbbbbbb|bbbbbb\"}', '{\"search_term\":\"|vbbbbbbbb|bbbbbb\",\"updated_at\":1457515674,\"code\":null}', '2016-03-09 16:27:55', 'admin');
INSERT INTO `activity` VALUES ('602', 'N', 'common\\models\\Customer', '5', null, null, '2016-03-09 16:27:55', 'admin');
INSERT INTO `activity` VALUES ('603', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515675,\"customer_id\":\"5\",\"discount\":\"12313\"}', '{\"updated_at\":1457515670,\"customer_id\":1,\"discount\":12313}', '2016-03-09 16:27:55', 'admin');
INSERT INTO `activity` VALUES ('604', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515676,\"customer_id\":\"5\",\"discount\":\"12313\"}', '{\"updated_at\":1457515675,\"customer_id\":5,\"discount\":12313}', '2016-03-09 16:27:56', 'admin');
INSERT INTO `activity` VALUES ('605', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515681,\"customer_id\":\"5\",\"discount\":\"12313\"}', '{\"updated_at\":1457515676,\"customer_id\":5,\"discount\":12313}', '2016-03-09 16:28:01', 'admin');
INSERT INTO `activity` VALUES ('606', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515686,\"customer_id\":\"5\",\"discount\":\"12313\"}', '{\"updated_at\":1457515681,\"customer_id\":5,\"discount\":12313}', '2016-03-09 16:28:06', 'admin');
INSERT INTO `activity` VALUES ('607', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515695,\"discount\":\"12313\"}', '{\"updated_at\":1457515686,\"discount\":12313}', '2016-03-09 16:28:15', 'admin');
INSERT INTO `activity` VALUES ('608', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515700,\"discount\":\"12313\"}', '{\"updated_at\":1457515695,\"discount\":12313}', '2016-03-09 16:28:20', 'admin');
INSERT INTO `activity` VALUES ('609', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515705,\"discount\":\"12313\"}', '{\"updated_at\":1457515700,\"discount\":12313}', '2016-03-09 16:28:25', 'admin');
INSERT INTO `activity` VALUES ('610', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515710,\"discount\":\"12313\"}', '{\"updated_at\":1457515705,\"discount\":12313}', '2016-03-09 16:28:30', 'admin');
INSERT INTO `activity` VALUES ('611', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515715,\"discount\":\"12313\"}', '{\"updated_at\":1457515710,\"discount\":12313}', '2016-03-09 16:28:35', 'admin');
INSERT INTO `activity` VALUES ('612', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515720,\"discount\":\"12313\"}', '{\"updated_at\":1457515715,\"discount\":12313}', '2016-03-09 16:28:40', 'admin');
INSERT INTO `activity` VALUES ('613', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515725,\"discount\":\"12313\"}', '{\"updated_at\":1457515720,\"discount\":12313}', '2016-03-09 16:28:45', 'admin');
INSERT INTO `activity` VALUES ('614', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515730,\"discount\":\"12313\"}', '{\"updated_at\":1457515725,\"discount\":12313}', '2016-03-09 16:28:50', 'admin');
INSERT INTO `activity` VALUES ('615', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515735,\"discount\":\"12313\"}', '{\"updated_at\":1457515730,\"discount\":12313}', '2016-03-09 16:28:55', 'admin');
INSERT INTO `activity` VALUES ('616', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515740,\"discount\":\"12313\"}', '{\"updated_at\":1457515735,\"discount\":12313}', '2016-03-09 16:29:00', 'admin');
INSERT INTO `activity` VALUES ('617', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515745,\"discount\":\"12313\"}', '{\"updated_at\":1457515740,\"discount\":12313}', '2016-03-09 16:29:05', 'admin');
INSERT INTO `activity` VALUES ('618', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515750,\"discount\":\"12313\"}', '{\"updated_at\":1457515745,\"discount\":12313}', '2016-03-09 16:29:10', 'admin');
INSERT INTO `activity` VALUES ('619', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515755,\"discount\":\"12313\"}', '{\"updated_at\":1457515750,\"discount\":12313}', '2016-03-09 16:29:15', 'admin');
INSERT INTO `activity` VALUES ('620', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515760,\"discount\":\"12313\"}', '{\"updated_at\":1457515755,\"discount\":12313}', '2016-03-09 16:29:20', 'admin');
INSERT INTO `activity` VALUES ('621', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515765,\"discount\":\"12313\"}', '{\"updated_at\":1457515760,\"discount\":12313}', '2016-03-09 16:29:25', 'admin');
INSERT INTO `activity` VALUES ('622', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515770,\"discount\":\"12313\"}', '{\"updated_at\":1457515765,\"discount\":12313}', '2016-03-09 16:29:30', 'admin');
INSERT INTO `activity` VALUES ('623', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515775,\"discount\":\"12313\"}', '{\"updated_at\":1457515770,\"discount\":12313}', '2016-03-09 16:29:35', 'admin');
INSERT INTO `activity` VALUES ('624', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515780,\"discount\":\"12313\"}', '{\"updated_at\":1457515775,\"discount\":12313}', '2016-03-09 16:29:40', 'admin');
INSERT INTO `activity` VALUES ('625', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515785,\"discount\":\"12313\"}', '{\"updated_at\":1457515780,\"discount\":12313}', '2016-03-09 16:29:45', 'admin');
INSERT INTO `activity` VALUES ('626', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515790,\"discount\":\"12313\"}', '{\"updated_at\":1457515785,\"discount\":12313}', '2016-03-09 16:29:50', 'admin');
INSERT INTO `activity` VALUES ('627', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515795,\"discount\":\"12313\"}', '{\"updated_at\":1457515790,\"discount\":12313}', '2016-03-09 16:29:55', 'admin');
INSERT INTO `activity` VALUES ('628', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515800,\"discount\":\"12313\"}', '{\"updated_at\":1457515795,\"discount\":12313}', '2016-03-09 16:30:00', 'admin');
INSERT INTO `activity` VALUES ('629', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515805,\"discount\":\"12313\"}', '{\"updated_at\":1457515800,\"discount\":12313}', '2016-03-09 16:30:05', 'admin');
INSERT INTO `activity` VALUES ('630', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515810,\"discount\":\"12313\"}', '{\"updated_at\":1457515805,\"discount\":12313}', '2016-03-09 16:30:10', 'admin');
INSERT INTO `activity` VALUES ('631', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515815,\"discount\":\"12313\"}', '{\"updated_at\":1457515810,\"discount\":12313}', '2016-03-09 16:30:15', 'admin');
INSERT INTO `activity` VALUES ('632', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515821,\"discount\":\"12313\"}', '{\"updated_at\":1457515815,\"discount\":12313}', '2016-03-09 16:30:21', 'admin');
INSERT INTO `activity` VALUES ('633', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515826,\"discount\":\"12313\"}', '{\"updated_at\":1457515821,\"discount\":12313}', '2016-03-09 16:30:26', 'admin');
INSERT INTO `activity` VALUES ('634', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515831,\"discount\":\"12313\"}', '{\"updated_at\":1457515826,\"discount\":12313}', '2016-03-09 16:30:31', 'admin');
INSERT INTO `activity` VALUES ('635', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515836,\"discount\":\"12313\"}', '{\"updated_at\":1457515831,\"discount\":12313}', '2016-03-09 16:30:36', 'admin');
INSERT INTO `activity` VALUES ('636', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515841,\"discount\":\"12313\"}', '{\"updated_at\":1457515836,\"discount\":12313}', '2016-03-09 16:30:41', 'admin');
INSERT INTO `activity` VALUES ('637', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515846,\"discount\":\"12313\"}', '{\"updated_at\":1457515841,\"discount\":12313}', '2016-03-09 16:30:46', 'admin');
INSERT INTO `activity` VALUES ('638', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515851,\"discount\":\"12313\"}', '{\"updated_at\":1457515846,\"discount\":12313}', '2016-03-09 16:30:51', 'admin');
INSERT INTO `activity` VALUES ('639', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515856,\"discount\":\"12313\"}', '{\"updated_at\":1457515851,\"discount\":12313}', '2016-03-09 16:30:56', 'admin');
INSERT INTO `activity` VALUES ('640', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515861,\"discount\":\"12313\"}', '{\"updated_at\":1457515856,\"discount\":12313}', '2016-03-09 16:31:01', 'admin');
INSERT INTO `activity` VALUES ('641', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515866,\"discount\":\"12313\"}', '{\"updated_at\":1457515861,\"discount\":12313}', '2016-03-09 16:31:06', 'admin');
INSERT INTO `activity` VALUES ('642', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515871,\"discount\":\"12313\"}', '{\"updated_at\":1457515866,\"discount\":12313}', '2016-03-09 16:31:11', 'admin');
INSERT INTO `activity` VALUES ('643', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515877,\"discount\":\"12313\"}', '{\"updated_at\":1457515871,\"discount\":12313}', '2016-03-09 16:31:17', 'admin');
INSERT INTO `activity` VALUES ('644', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515881,\"discount\":\"12313\"}', '{\"updated_at\":1457515877,\"discount\":12313}', '2016-03-09 16:31:21', 'admin');
INSERT INTO `activity` VALUES ('645', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515886,\"discount\":\"12313\"}', '{\"updated_at\":1457515881,\"discount\":12313}', '2016-03-09 16:31:26', 'admin');
INSERT INTO `activity` VALUES ('646', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515891,\"discount\":\"12313\"}', '{\"updated_at\":1457515886,\"discount\":12313}', '2016-03-09 16:31:31', 'admin');
INSERT INTO `activity` VALUES ('647', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515896,\"discount\":\"12313\"}', '{\"updated_at\":1457515891,\"discount\":12313}', '2016-03-09 16:31:36', 'admin');
INSERT INTO `activity` VALUES ('648', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515901,\"discount\":\"12313\"}', '{\"updated_at\":1457515896,\"discount\":12313}', '2016-03-09 16:31:41', 'admin');
INSERT INTO `activity` VALUES ('649', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515906,\"discount\":\"12313\"}', '{\"updated_at\":1457515901,\"discount\":12313}', '2016-03-09 16:31:46', 'admin');
INSERT INTO `activity` VALUES ('650', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515911,\"discount\":\"12313\"}', '{\"updated_at\":1457515906,\"discount\":12313}', '2016-03-09 16:31:51', 'admin');
INSERT INTO `activity` VALUES ('651', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515916,\"discount\":\"12313\"}', '{\"updated_at\":1457515911,\"discount\":12313}', '2016-03-09 16:31:56', 'admin');
INSERT INTO `activity` VALUES ('652', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515921,\"discount\":\"12313\"}', '{\"updated_at\":1457515916,\"discount\":12313}', '2016-03-09 16:32:01', 'admin');
INSERT INTO `activity` VALUES ('653', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515926,\"discount\":\"12313\"}', '{\"updated_at\":1457515921,\"discount\":12313}', '2016-03-09 16:32:06', 'admin');
INSERT INTO `activity` VALUES ('654', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515931,\"discount\":\"12313\"}', '{\"updated_at\":1457515926,\"discount\":12313}', '2016-03-09 16:32:11', 'admin');
INSERT INTO `activity` VALUES ('655', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515936,\"discount\":\"12313\"}', '{\"updated_at\":1457515931,\"discount\":12313}', '2016-03-09 16:32:16', 'admin');
INSERT INTO `activity` VALUES ('656', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515941,\"discount\":\"12313\"}', '{\"updated_at\":1457515936,\"discount\":12313}', '2016-03-09 16:32:21', 'admin');
INSERT INTO `activity` VALUES ('657', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515946,\"discount\":\"12313\"}', '{\"updated_at\":1457515941,\"discount\":12313}', '2016-03-09 16:32:26', 'admin');
INSERT INTO `activity` VALUES ('658', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515951,\"discount\":\"12313\"}', '{\"updated_at\":1457515946,\"discount\":12313}', '2016-03-09 16:32:31', 'admin');
INSERT INTO `activity` VALUES ('659', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515956,\"discount\":\"12313\"}', '{\"updated_at\":1457515951,\"discount\":12313}', '2016-03-09 16:32:36', 'admin');
INSERT INTO `activity` VALUES ('660', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515961,\"discount\":\"12313\"}', '{\"updated_at\":1457515956,\"discount\":12313}', '2016-03-09 16:32:41', 'admin');
INSERT INTO `activity` VALUES ('661', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515966,\"discount\":\"12313\"}', '{\"updated_at\":1457515961,\"discount\":12313}', '2016-03-09 16:32:46', 'admin');
INSERT INTO `activity` VALUES ('662', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515971,\"discount\":\"12313\"}', '{\"updated_at\":1457515966,\"discount\":12313}', '2016-03-09 16:32:51', 'admin');
INSERT INTO `activity` VALUES ('663', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515976,\"discount\":\"12313\"}', '{\"updated_at\":1457515971,\"discount\":12313}', '2016-03-09 16:32:56', 'admin');
INSERT INTO `activity` VALUES ('664', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515981,\"discount\":\"12313\"}', '{\"updated_at\":1457515976,\"discount\":12313}', '2016-03-09 16:33:01', 'admin');
INSERT INTO `activity` VALUES ('665', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515986,\"discount\":\"12313\"}', '{\"updated_at\":1457515981,\"discount\":12313}', '2016-03-09 16:33:06', 'admin');
INSERT INTO `activity` VALUES ('666', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515991,\"discount\":\"12313\"}', '{\"updated_at\":1457515986,\"discount\":12313}', '2016-03-09 16:33:11', 'admin');
INSERT INTO `activity` VALUES ('667', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457515996,\"discount\":\"12313\"}', '{\"updated_at\":1457515991,\"discount\":12313}', '2016-03-09 16:33:16', 'admin');
INSERT INTO `activity` VALUES ('668', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516001,\"discount\":\"12313\"}', '{\"updated_at\":1457515996,\"discount\":12313}', '2016-03-09 16:33:21', 'admin');
INSERT INTO `activity` VALUES ('669', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516006,\"discount\":\"12313\"}', '{\"updated_at\":1457516001,\"discount\":12313}', '2016-03-09 16:33:26', 'admin');
INSERT INTO `activity` VALUES ('670', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516011,\"discount\":\"12313\"}', '{\"updated_at\":1457516006,\"discount\":12313}', '2016-03-09 16:33:31', 'admin');
INSERT INTO `activity` VALUES ('671', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516016,\"discount\":\"12313\"}', '{\"updated_at\":1457516011,\"discount\":12313}', '2016-03-09 16:33:36', 'admin');
INSERT INTO `activity` VALUES ('672', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516021,\"discount\":\"12313\"}', '{\"updated_at\":1457516016,\"discount\":12313}', '2016-03-09 16:33:41', 'admin');
INSERT INTO `activity` VALUES ('673', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516026,\"discount\":\"12313\"}', '{\"updated_at\":1457516021,\"discount\":12313}', '2016-03-09 16:33:46', 'admin');
INSERT INTO `activity` VALUES ('674', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516031,\"discount\":\"12313\"}', '{\"updated_at\":1457516026,\"discount\":12313}', '2016-03-09 16:33:51', 'admin');
INSERT INTO `activity` VALUES ('675', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516036,\"discount\":\"12313\"}', '{\"updated_at\":1457516031,\"discount\":12313}', '2016-03-09 16:33:56', 'admin');
INSERT INTO `activity` VALUES ('676', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516041,\"discount\":\"12313\"}', '{\"updated_at\":1457516036,\"discount\":12313}', '2016-03-09 16:34:01', 'admin');
INSERT INTO `activity` VALUES ('677', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516046,\"discount\":\"12313\"}', '{\"updated_at\":1457516041,\"discount\":12313}', '2016-03-09 16:34:06', 'admin');
INSERT INTO `activity` VALUES ('678', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516051,\"discount\":\"12313\"}', '{\"updated_at\":1457516046,\"discount\":12313}', '2016-03-09 16:34:11', 'admin');
INSERT INTO `activity` VALUES ('679', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516056,\"discount\":\"12313\"}', '{\"updated_at\":1457516051,\"discount\":12313}', '2016-03-09 16:34:16', 'admin');
INSERT INTO `activity` VALUES ('680', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516061,\"discount\":\"12313\"}', '{\"updated_at\":1457516056,\"discount\":12313}', '2016-03-09 16:34:21', 'admin');
INSERT INTO `activity` VALUES ('681', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516066,\"discount\":\"12313\"}', '{\"updated_at\":1457516061,\"discount\":12313}', '2016-03-09 16:34:26', 'admin');
INSERT INTO `activity` VALUES ('682', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516071,\"discount\":\"12313\"}', '{\"updated_at\":1457516066,\"discount\":12313}', '2016-03-09 16:34:31', 'admin');
INSERT INTO `activity` VALUES ('683', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516076,\"discount\":\"12313\"}', '{\"updated_at\":1457516071,\"discount\":12313}', '2016-03-09 16:34:36', 'admin');
INSERT INTO `activity` VALUES ('684', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516081,\"discount\":\"12313\"}', '{\"updated_at\":1457516076,\"discount\":12313}', '2016-03-09 16:34:41', 'admin');
INSERT INTO `activity` VALUES ('685', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516086,\"discount\":\"12313\"}', '{\"updated_at\":1457516081,\"discount\":12313}', '2016-03-09 16:34:46', 'admin');
INSERT INTO `activity` VALUES ('686', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516091,\"discount\":\"12313\"}', '{\"updated_at\":1457516086,\"discount\":12313}', '2016-03-09 16:34:51', 'admin');
INSERT INTO `activity` VALUES ('687', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516096,\"discount\":\"12313\"}', '{\"updated_at\":1457516091,\"discount\":12313}', '2016-03-09 16:34:56', 'admin');
INSERT INTO `activity` VALUES ('688', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516101,\"discount\":\"12313\"}', '{\"updated_at\":1457516096,\"discount\":12313}', '2016-03-09 16:35:01', 'admin');
INSERT INTO `activity` VALUES ('689', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516106,\"discount\":\"12313\"}', '{\"updated_at\":1457516101,\"discount\":12313}', '2016-03-09 16:35:06', 'admin');
INSERT INTO `activity` VALUES ('690', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516111,\"discount\":\"12313\"}', '{\"updated_at\":1457516106,\"discount\":12313}', '2016-03-09 16:35:11', 'admin');
INSERT INTO `activity` VALUES ('691', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516116,\"discount\":\"12313\"}', '{\"updated_at\":1457516111,\"discount\":12313}', '2016-03-09 16:35:16', 'admin');
INSERT INTO `activity` VALUES ('692', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516121,\"discount\":\"12313\"}', '{\"updated_at\":1457516116,\"discount\":12313}', '2016-03-09 16:35:21', 'admin');
INSERT INTO `activity` VALUES ('693', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516126,\"discount\":\"12313\"}', '{\"updated_at\":1457516121,\"discount\":12313}', '2016-03-09 16:35:26', 'admin');
INSERT INTO `activity` VALUES ('694', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516131,\"discount\":\"12313\"}', '{\"updated_at\":1457516126,\"discount\":12313}', '2016-03-09 16:35:31', 'admin');
INSERT INTO `activity` VALUES ('695', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516136,\"discount\":\"12313\"}', '{\"updated_at\":1457516131,\"discount\":12313}', '2016-03-09 16:35:36', 'admin');
INSERT INTO `activity` VALUES ('696', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516141,\"discount\":\"12313\"}', '{\"updated_at\":1457516136,\"discount\":12313}', '2016-03-09 16:35:41', 'admin');
INSERT INTO `activity` VALUES ('697', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516146,\"discount\":\"12313\"}', '{\"updated_at\":1457516141,\"discount\":12313}', '2016-03-09 16:35:46', 'admin');
INSERT INTO `activity` VALUES ('698', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516151,\"discount\":\"12313\"}', '{\"updated_at\":1457516146,\"discount\":12313}', '2016-03-09 16:35:51', 'admin');
INSERT INTO `activity` VALUES ('699', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516156,\"discount\":\"12313\"}', '{\"updated_at\":1457516151,\"discount\":12313}', '2016-03-09 16:35:56', 'admin');
INSERT INTO `activity` VALUES ('700', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516161,\"discount\":\"12313\"}', '{\"updated_at\":1457516156,\"discount\":12313}', '2016-03-09 16:36:01', 'admin');
INSERT INTO `activity` VALUES ('701', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516166,\"discount\":\"12313\"}', '{\"updated_at\":1457516161,\"discount\":12313}', '2016-03-09 16:36:06', 'admin');
INSERT INTO `activity` VALUES ('702', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516171,\"discount\":\"12313\"}', '{\"updated_at\":1457516166,\"discount\":12313}', '2016-03-09 16:36:11', 'admin');
INSERT INTO `activity` VALUES ('703', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516176,\"discount\":\"12313\"}', '{\"updated_at\":1457516171,\"discount\":12313}', '2016-03-09 16:36:16', 'admin');
INSERT INTO `activity` VALUES ('704', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516181,\"discount\":\"12313\"}', '{\"updated_at\":1457516176,\"discount\":12313}', '2016-03-09 16:36:21', 'admin');
INSERT INTO `activity` VALUES ('705', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516186,\"discount\":\"12313\"}', '{\"updated_at\":1457516181,\"discount\":12313}', '2016-03-09 16:36:26', 'admin');
INSERT INTO `activity` VALUES ('706', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516191,\"discount\":\"12313\"}', '{\"updated_at\":1457516186,\"discount\":12313}', '2016-03-09 16:36:31', 'admin');
INSERT INTO `activity` VALUES ('707', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516196,\"discount\":\"12313\"}', '{\"updated_at\":1457516191,\"discount\":12313}', '2016-03-09 16:36:36', 'admin');
INSERT INTO `activity` VALUES ('708', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516201,\"discount\":\"12313\"}', '{\"updated_at\":1457516196,\"discount\":12313}', '2016-03-09 16:36:41', 'admin');
INSERT INTO `activity` VALUES ('709', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516206,\"discount\":\"12313\"}', '{\"updated_at\":1457516201,\"discount\":12313}', '2016-03-09 16:36:46', 'admin');
INSERT INTO `activity` VALUES ('710', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516211,\"discount\":\"12313\"}', '{\"updated_at\":1457516206,\"discount\":12313}', '2016-03-09 16:36:51', 'admin');
INSERT INTO `activity` VALUES ('711', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516216,\"discount\":\"12313\"}', '{\"updated_at\":1457516211,\"discount\":12313}', '2016-03-09 16:36:56', 'admin');
INSERT INTO `activity` VALUES ('712', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516221,\"discount\":\"12313\"}', '{\"updated_at\":1457516216,\"discount\":12313}', '2016-03-09 16:37:01', 'admin');
INSERT INTO `activity` VALUES ('713', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516226,\"discount\":\"12313\"}', '{\"updated_at\":1457516221,\"discount\":12313}', '2016-03-09 16:37:06', 'admin');
INSERT INTO `activity` VALUES ('714', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516231,\"discount\":\"12313\"}', '{\"updated_at\":1457516226,\"discount\":12313}', '2016-03-09 16:37:11', 'admin');
INSERT INTO `activity` VALUES ('715', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516236,\"discount\":\"12313\"}', '{\"updated_at\":1457516231,\"discount\":12313}', '2016-03-09 16:37:16', 'admin');
INSERT INTO `activity` VALUES ('716', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516241,\"discount\":\"12313\"}', '{\"updated_at\":1457516236,\"discount\":12313}', '2016-03-09 16:37:21', 'admin');
INSERT INTO `activity` VALUES ('717', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516246,\"discount\":\"12313\"}', '{\"updated_at\":1457516241,\"discount\":12313}', '2016-03-09 16:37:26', 'admin');
INSERT INTO `activity` VALUES ('718', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516251,\"discount\":\"12313\"}', '{\"updated_at\":1457516246,\"discount\":12313}', '2016-03-09 16:37:31', 'admin');
INSERT INTO `activity` VALUES ('719', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516256,\"discount\":\"12313\"}', '{\"updated_at\":1457516251,\"discount\":12313}', '2016-03-09 16:37:36', 'admin');
INSERT INTO `activity` VALUES ('720', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516261,\"discount\":\"12313\"}', '{\"updated_at\":1457516256,\"discount\":12313}', '2016-03-09 16:37:41', 'admin');
INSERT INTO `activity` VALUES ('721', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516266,\"discount\":\"12313\"}', '{\"updated_at\":1457516261,\"discount\":12313}', '2016-03-09 16:37:46', 'admin');
INSERT INTO `activity` VALUES ('722', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516271,\"discount\":\"12313\"}', '{\"updated_at\":1457516266,\"discount\":12313}', '2016-03-09 16:37:51', 'admin');
INSERT INTO `activity` VALUES ('723', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516276,\"discount\":\"12313\"}', '{\"updated_at\":1457516271,\"discount\":12313}', '2016-03-09 16:37:56', 'admin');
INSERT INTO `activity` VALUES ('724', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516281,\"discount\":\"12313\"}', '{\"updated_at\":1457516276,\"discount\":12313}', '2016-03-09 16:38:01', 'admin');
INSERT INTO `activity` VALUES ('725', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516286,\"discount\":\"12313\"}', '{\"updated_at\":1457516281,\"discount\":12313}', '2016-03-09 16:38:06', 'admin');
INSERT INTO `activity` VALUES ('726', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516291,\"discount\":\"12313\"}', '{\"updated_at\":1457516286,\"discount\":12313}', '2016-03-09 16:38:11', 'admin');
INSERT INTO `activity` VALUES ('727', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516296,\"discount\":\"12313\"}', '{\"updated_at\":1457516291,\"discount\":12313}', '2016-03-09 16:38:16', 'admin');
INSERT INTO `activity` VALUES ('728', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516301,\"discount\":\"12313\"}', '{\"updated_at\":1457516296,\"discount\":12313}', '2016-03-09 16:38:21', 'admin');
INSERT INTO `activity` VALUES ('729', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516306,\"discount\":\"12313\"}', '{\"updated_at\":1457516301,\"discount\":12313}', '2016-03-09 16:38:26', 'admin');
INSERT INTO `activity` VALUES ('730', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516311,\"discount\":\"12313\"}', '{\"updated_at\":1457516306,\"discount\":12313}', '2016-03-09 16:38:31', 'admin');
INSERT INTO `activity` VALUES ('731', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516316,\"discount\":\"12313\"}', '{\"updated_at\":1457516311,\"discount\":12313}', '2016-03-09 16:38:36', 'admin');
INSERT INTO `activity` VALUES ('732', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516321,\"discount\":\"12313\"}', '{\"updated_at\":1457516316,\"discount\":12313}', '2016-03-09 16:38:41', 'admin');
INSERT INTO `activity` VALUES ('733', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516326,\"discount\":\"12313\"}', '{\"updated_at\":1457516321,\"discount\":12313}', '2016-03-09 16:38:46', 'admin');
INSERT INTO `activity` VALUES ('734', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516331,\"discount\":\"12313\"}', '{\"updated_at\":1457516326,\"discount\":12313}', '2016-03-09 16:38:51', 'admin');
INSERT INTO `activity` VALUES ('735', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516336,\"discount\":\"12313\"}', '{\"updated_at\":1457516331,\"discount\":12313}', '2016-03-09 16:38:56', 'admin');
INSERT INTO `activity` VALUES ('736', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516341,\"discount\":\"12313\"}', '{\"updated_at\":1457516336,\"discount\":12313}', '2016-03-09 16:39:01', 'admin');
INSERT INTO `activity` VALUES ('737', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516346,\"discount\":\"12313\"}', '{\"updated_at\":1457516341,\"discount\":12313}', '2016-03-09 16:39:06', 'admin');
INSERT INTO `activity` VALUES ('738', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516351,\"discount\":\"12313\"}', '{\"updated_at\":1457516346,\"discount\":12313}', '2016-03-09 16:39:11', 'admin');
INSERT INTO `activity` VALUES ('739', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516356,\"discount\":\"12313\"}', '{\"updated_at\":1457516351,\"discount\":12313}', '2016-03-09 16:39:16', 'admin');
INSERT INTO `activity` VALUES ('740', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516361,\"discount\":\"12313\"}', '{\"updated_at\":1457516356,\"discount\":12313}', '2016-03-09 16:39:21', 'admin');
INSERT INTO `activity` VALUES ('741', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516366,\"discount\":\"12313\"}', '{\"updated_at\":1457516361,\"discount\":12313}', '2016-03-09 16:39:26', 'admin');
INSERT INTO `activity` VALUES ('742', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516371,\"discount\":\"12313\"}', '{\"updated_at\":1457516366,\"discount\":12313}', '2016-03-09 16:39:31', 'admin');
INSERT INTO `activity` VALUES ('743', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516376,\"discount\":\"12313\"}', '{\"updated_at\":1457516371,\"discount\":12313}', '2016-03-09 16:39:36', 'admin');
INSERT INTO `activity` VALUES ('744', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516381,\"discount\":\"12313\"}', '{\"updated_at\":1457516376,\"discount\":12313}', '2016-03-09 16:39:41', 'admin');
INSERT INTO `activity` VALUES ('745', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516386,\"discount\":\"12313\"}', '{\"updated_at\":1457516381,\"discount\":12313}', '2016-03-09 16:39:46', 'admin');
INSERT INTO `activity` VALUES ('746', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516391,\"discount\":\"12313\"}', '{\"updated_at\":1457516386,\"discount\":12313}', '2016-03-09 16:39:51', 'admin');
INSERT INTO `activity` VALUES ('747', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516396,\"discount\":\"12313\"}', '{\"updated_at\":1457516391,\"discount\":12313}', '2016-03-09 16:39:56', 'admin');
INSERT INTO `activity` VALUES ('748', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516401,\"discount\":\"12313\"}', '{\"updated_at\":1457516396,\"discount\":12313}', '2016-03-09 16:40:01', 'admin');
INSERT INTO `activity` VALUES ('749', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516406,\"discount\":\"12313\"}', '{\"updated_at\":1457516401,\"discount\":12313}', '2016-03-09 16:40:06', 'admin');
INSERT INTO `activity` VALUES ('750', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516411,\"discount\":\"12313\"}', '{\"updated_at\":1457516406,\"discount\":12313}', '2016-03-09 16:40:11', 'admin');
INSERT INTO `activity` VALUES ('751', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516416,\"discount\":\"12313\"}', '{\"updated_at\":1457516411,\"discount\":12313}', '2016-03-09 16:40:16', 'admin');
INSERT INTO `activity` VALUES ('752', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516421,\"discount\":\"12313\"}', '{\"updated_at\":1457516416,\"discount\":12313}', '2016-03-09 16:40:21', 'admin');
INSERT INTO `activity` VALUES ('753', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516426,\"discount\":\"12313\"}', '{\"updated_at\":1457516421,\"discount\":12313}', '2016-03-09 16:40:26', 'admin');
INSERT INTO `activity` VALUES ('754', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516431,\"discount\":\"12313\"}', '{\"updated_at\":1457516426,\"discount\":12313}', '2016-03-09 16:40:31', 'admin');
INSERT INTO `activity` VALUES ('755', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516436,\"discount\":\"12313\"}', '{\"updated_at\":1457516431,\"discount\":12313}', '2016-03-09 16:40:36', 'admin');
INSERT INTO `activity` VALUES ('756', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516441,\"discount\":\"12313\"}', '{\"updated_at\":1457516436,\"discount\":12313}', '2016-03-09 16:40:41', 'admin');
INSERT INTO `activity` VALUES ('757', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516446,\"discount\":\"12313\"}', '{\"updated_at\":1457516441,\"discount\":12313}', '2016-03-09 16:40:46', 'admin');
INSERT INTO `activity` VALUES ('758', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516451,\"discount\":\"12313\"}', '{\"updated_at\":1457516446,\"discount\":12313}', '2016-03-09 16:40:51', 'admin');
INSERT INTO `activity` VALUES ('759', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516456,\"discount\":\"12313\"}', '{\"updated_at\":1457516451,\"discount\":12313}', '2016-03-09 16:40:56', 'admin');
INSERT INTO `activity` VALUES ('760', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516461,\"discount\":\"12313\"}', '{\"updated_at\":1457516456,\"discount\":12313}', '2016-03-09 16:41:01', 'admin');
INSERT INTO `activity` VALUES ('761', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516466,\"discount\":\"12313\"}', '{\"updated_at\":1457516461,\"discount\":12313}', '2016-03-09 16:41:06', 'admin');
INSERT INTO `activity` VALUES ('762', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516471,\"discount\":\"12313\"}', '{\"updated_at\":1457516466,\"discount\":12313}', '2016-03-09 16:41:11', 'admin');
INSERT INTO `activity` VALUES ('763', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516476,\"discount\":\"12313\"}', '{\"updated_at\":1457516471,\"discount\":12313}', '2016-03-09 16:41:16', 'admin');
INSERT INTO `activity` VALUES ('764', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516481,\"discount\":\"12313\"}', '{\"updated_at\":1457516476,\"discount\":12313}', '2016-03-09 16:41:21', 'admin');
INSERT INTO `activity` VALUES ('765', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516486,\"discount\":\"12313\"}', '{\"updated_at\":1457516481,\"discount\":12313}', '2016-03-09 16:41:26', 'admin');
INSERT INTO `activity` VALUES ('766', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516491,\"discount\":\"12313\"}', '{\"updated_at\":1457516486,\"discount\":12313}', '2016-03-09 16:41:31', 'admin');
INSERT INTO `activity` VALUES ('767', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516496,\"discount\":\"12313\"}', '{\"updated_at\":1457516491,\"discount\":12313}', '2016-03-09 16:41:36', 'admin');
INSERT INTO `activity` VALUES ('768', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516501,\"discount\":\"12313\"}', '{\"updated_at\":1457516496,\"discount\":12313}', '2016-03-09 16:41:41', 'admin');
INSERT INTO `activity` VALUES ('769', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516506,\"discount\":\"12313\"}', '{\"updated_at\":1457516501,\"discount\":12313}', '2016-03-09 16:41:46', 'admin');
INSERT INTO `activity` VALUES ('770', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516511,\"discount\":\"12313\"}', '{\"updated_at\":1457516506,\"discount\":12313}', '2016-03-09 16:41:51', 'admin');
INSERT INTO `activity` VALUES ('771', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516516,\"discount\":\"12313\"}', '{\"updated_at\":1457516511,\"discount\":12313}', '2016-03-09 16:41:56', 'admin');
INSERT INTO `activity` VALUES ('772', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516521,\"discount\":\"12313\"}', '{\"updated_at\":1457516516,\"discount\":12313}', '2016-03-09 16:42:01', 'admin');
INSERT INTO `activity` VALUES ('773', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516526,\"discount\":\"12313\"}', '{\"updated_at\":1457516521,\"discount\":12313}', '2016-03-09 16:42:06', 'admin');
INSERT INTO `activity` VALUES ('774', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516531,\"discount\":\"12313\"}', '{\"updated_at\":1457516526,\"discount\":12313}', '2016-03-09 16:42:11', 'admin');
INSERT INTO `activity` VALUES ('775', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516536,\"discount\":\"12313\"}', '{\"updated_at\":1457516531,\"discount\":12313}', '2016-03-09 16:42:16', 'admin');
INSERT INTO `activity` VALUES ('776', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516541,\"discount\":\"12313\"}', '{\"updated_at\":1457516536,\"discount\":12313}', '2016-03-09 16:42:21', 'admin');
INSERT INTO `activity` VALUES ('777', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516546,\"discount\":\"12313\"}', '{\"updated_at\":1457516541,\"discount\":12313}', '2016-03-09 16:42:26', 'admin');
INSERT INTO `activity` VALUES ('778', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516551,\"discount\":\"12313\"}', '{\"updated_at\":1457516546,\"discount\":12313}', '2016-03-09 16:42:31', 'admin');
INSERT INTO `activity` VALUES ('779', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516556,\"discount\":\"12313\"}', '{\"updated_at\":1457516551,\"discount\":12313}', '2016-03-09 16:42:36', 'admin');
INSERT INTO `activity` VALUES ('780', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516560,\"discount\":\"12313\"}', '{\"updated_at\":1457516556,\"discount\":12313}', '2016-03-09 16:42:40', 'admin');
INSERT INTO `activity` VALUES ('781', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516566,\"discount\":\"12313\"}', '{\"updated_at\":1457516560,\"discount\":12313}', '2016-03-09 16:42:46', 'admin');
INSERT INTO `activity` VALUES ('782', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516571,\"discount\":\"12313\"}', '{\"updated_at\":1457516566,\"discount\":12313}', '2016-03-09 16:42:51', 'admin');
INSERT INTO `activity` VALUES ('783', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516576,\"discount\":\"12313\"}', '{\"updated_at\":1457516571,\"discount\":12313}', '2016-03-09 16:42:56', 'admin');
INSERT INTO `activity` VALUES ('784', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516581,\"discount\":\"12313\"}', '{\"updated_at\":1457516576,\"discount\":12313}', '2016-03-09 16:43:01', 'admin');
INSERT INTO `activity` VALUES ('785', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516586,\"discount\":\"12313\"}', '{\"updated_at\":1457516581,\"discount\":12313}', '2016-03-09 16:43:06', 'admin');
INSERT INTO `activity` VALUES ('786', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516591,\"discount\":\"12313\"}', '{\"updated_at\":1457516586,\"discount\":12313}', '2016-03-09 16:43:11', 'admin');
INSERT INTO `activity` VALUES ('787', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516596,\"discount\":\"12313\"}', '{\"updated_at\":1457516591,\"discount\":12313}', '2016-03-09 16:43:16', 'admin');
INSERT INTO `activity` VALUES ('788', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516601,\"discount\":\"12313\"}', '{\"updated_at\":1457516596,\"discount\":12313}', '2016-03-09 16:43:21', 'admin');
INSERT INTO `activity` VALUES ('789', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516606,\"discount\":\"12313\"}', '{\"updated_at\":1457516601,\"discount\":12313}', '2016-03-09 16:43:26', 'admin');
INSERT INTO `activity` VALUES ('790', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516611,\"discount\":\"12313\"}', '{\"updated_at\":1457516606,\"discount\":12313}', '2016-03-09 16:43:31', 'admin');
INSERT INTO `activity` VALUES ('791', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516616,\"discount\":\"12313\"}', '{\"updated_at\":1457516611,\"discount\":12313}', '2016-03-09 16:43:36', 'admin');
INSERT INTO `activity` VALUES ('792', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516621,\"discount\":\"12313\"}', '{\"updated_at\":1457516616,\"discount\":12313}', '2016-03-09 16:43:41', 'admin');
INSERT INTO `activity` VALUES ('793', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516626,\"discount\":\"12313\"}', '{\"updated_at\":1457516621,\"discount\":12313}', '2016-03-09 16:43:46', 'admin');
INSERT INTO `activity` VALUES ('794', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516631,\"discount\":\"12313\"}', '{\"updated_at\":1457516626,\"discount\":12313}', '2016-03-09 16:43:51', 'admin');
INSERT INTO `activity` VALUES ('795', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516636,\"discount\":\"12313\"}', '{\"updated_at\":1457516631,\"discount\":12313}', '2016-03-09 16:43:56', 'admin');
INSERT INTO `activity` VALUES ('796', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516641,\"discount\":\"12313\"}', '{\"updated_at\":1457516636,\"discount\":12313}', '2016-03-09 16:44:01', 'admin');
INSERT INTO `activity` VALUES ('797', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516646,\"discount\":\"12313\"}', '{\"updated_at\":1457516641,\"discount\":12313}', '2016-03-09 16:44:06', 'admin');
INSERT INTO `activity` VALUES ('798', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516651,\"discount\":\"12313\"}', '{\"updated_at\":1457516646,\"discount\":12313}', '2016-03-09 16:44:11', 'admin');
INSERT INTO `activity` VALUES ('799', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516656,\"discount\":\"12313\"}', '{\"updated_at\":1457516651,\"discount\":12313}', '2016-03-09 16:44:16', 'admin');
INSERT INTO `activity` VALUES ('800', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516661,\"discount\":\"12313\"}', '{\"updated_at\":1457516656,\"discount\":12313}', '2016-03-09 16:44:21', 'admin');
INSERT INTO `activity` VALUES ('801', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516666,\"discount\":\"12313\"}', '{\"updated_at\":1457516661,\"discount\":12313}', '2016-03-09 16:44:26', 'admin');
INSERT INTO `activity` VALUES ('802', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516671,\"discount\":\"12313\"}', '{\"updated_at\":1457516666,\"discount\":12313}', '2016-03-09 16:44:31', 'admin');
INSERT INTO `activity` VALUES ('803', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516676,\"discount\":\"12313\"}', '{\"updated_at\":1457516671,\"discount\":12313}', '2016-03-09 16:44:36', 'admin');
INSERT INTO `activity` VALUES ('804', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516681,\"discount\":\"12313\"}', '{\"updated_at\":1457516676,\"discount\":12313}', '2016-03-09 16:44:41', 'admin');
INSERT INTO `activity` VALUES ('805', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516686,\"discount\":\"12313\"}', '{\"updated_at\":1457516681,\"discount\":12313}', '2016-03-09 16:44:46', 'admin');
INSERT INTO `activity` VALUES ('806', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516691,\"discount\":\"12313\"}', '{\"updated_at\":1457516686,\"discount\":12313}', '2016-03-09 16:44:51', 'admin');
INSERT INTO `activity` VALUES ('807', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516696,\"discount\":\"12313\"}', '{\"updated_at\":1457516691,\"discount\":12313}', '2016-03-09 16:44:56', 'admin');
INSERT INTO `activity` VALUES ('808', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516701,\"discount\":\"12313\"}', '{\"updated_at\":1457516696,\"discount\":12313}', '2016-03-09 16:45:01', 'admin');
INSERT INTO `activity` VALUES ('809', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516706,\"discount\":\"12313\"}', '{\"updated_at\":1457516701,\"discount\":12313}', '2016-03-09 16:45:06', 'admin');
INSERT INTO `activity` VALUES ('810', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516711,\"discount\":\"12313\"}', '{\"updated_at\":1457516706,\"discount\":12313}', '2016-03-09 16:45:11', 'admin');
INSERT INTO `activity` VALUES ('811', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516716,\"discount\":\"12313\"}', '{\"updated_at\":1457516711,\"discount\":12313}', '2016-03-09 16:45:16', 'admin');
INSERT INTO `activity` VALUES ('812', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516721,\"discount\":\"12313\"}', '{\"updated_at\":1457516716,\"discount\":12313}', '2016-03-09 16:45:21', 'admin');
INSERT INTO `activity` VALUES ('813', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516726,\"discount\":\"12313\"}', '{\"updated_at\":1457516721,\"discount\":12313}', '2016-03-09 16:45:26', 'admin');
INSERT INTO `activity` VALUES ('814', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516731,\"discount\":\"12313\"}', '{\"updated_at\":1457516726,\"discount\":12313}', '2016-03-09 16:45:31', 'admin');
INSERT INTO `activity` VALUES ('815', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516736,\"discount\":\"12313\"}', '{\"updated_at\":1457516731,\"discount\":12313}', '2016-03-09 16:45:36', 'admin');
INSERT INTO `activity` VALUES ('816', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516741,\"discount\":\"12313\"}', '{\"updated_at\":1457516736,\"discount\":12313}', '2016-03-09 16:45:41', 'admin');
INSERT INTO `activity` VALUES ('817', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516746,\"discount\":\"12313\"}', '{\"updated_at\":1457516741,\"discount\":12313}', '2016-03-09 16:45:46', 'admin');
INSERT INTO `activity` VALUES ('818', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516751,\"discount\":\"12313\"}', '{\"updated_at\":1457516746,\"discount\":12313}', '2016-03-09 16:45:51', 'admin');
INSERT INTO `activity` VALUES ('819', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516756,\"discount\":\"12313\"}', '{\"updated_at\":1457516751,\"discount\":12313}', '2016-03-09 16:45:56', 'admin');
INSERT INTO `activity` VALUES ('820', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516761,\"discount\":\"12313\"}', '{\"updated_at\":1457516756,\"discount\":12313}', '2016-03-09 16:46:01', 'admin');
INSERT INTO `activity` VALUES ('821', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516766,\"discount\":\"12313\"}', '{\"updated_at\":1457516761,\"discount\":12313}', '2016-03-09 16:46:06', 'admin');
INSERT INTO `activity` VALUES ('822', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516771,\"discount\":\"12313\"}', '{\"updated_at\":1457516766,\"discount\":12313}', '2016-03-09 16:46:11', 'admin');
INSERT INTO `activity` VALUES ('823', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516776,\"discount\":\"12313\"}', '{\"updated_at\":1457516771,\"discount\":12313}', '2016-03-09 16:46:16', 'admin');
INSERT INTO `activity` VALUES ('824', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516781,\"discount\":\"12313\"}', '{\"updated_at\":1457516776,\"discount\":12313}', '2016-03-09 16:46:21', 'admin');
INSERT INTO `activity` VALUES ('825', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516786,\"discount\":\"12313\"}', '{\"updated_at\":1457516781,\"discount\":12313}', '2016-03-09 16:46:26', 'admin');
INSERT INTO `activity` VALUES ('826', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516791,\"discount\":\"12313\"}', '{\"updated_at\":1457516786,\"discount\":12313}', '2016-03-09 16:46:31', 'admin');
INSERT INTO `activity` VALUES ('827', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516796,\"discount\":\"12313\"}', '{\"updated_at\":1457516791,\"discount\":12313}', '2016-03-09 16:46:36', 'admin');
INSERT INTO `activity` VALUES ('828', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516801,\"discount\":\"12313\"}', '{\"updated_at\":1457516796,\"discount\":12313}', '2016-03-09 16:46:41', 'admin');
INSERT INTO `activity` VALUES ('829', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516806,\"discount\":\"12313\"}', '{\"updated_at\":1457516801,\"discount\":12313}', '2016-03-09 16:46:46', 'admin');
INSERT INTO `activity` VALUES ('830', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516811,\"discount\":\"12313\"}', '{\"updated_at\":1457516806,\"discount\":12313}', '2016-03-09 16:46:51', 'admin');
INSERT INTO `activity` VALUES ('831', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516816,\"discount\":\"12313\"}', '{\"updated_at\":1457516811,\"discount\":12313}', '2016-03-09 16:46:56', 'admin');
INSERT INTO `activity` VALUES ('832', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516821,\"discount\":\"12313\"}', '{\"updated_at\":1457516816,\"discount\":12313}', '2016-03-09 16:47:01', 'admin');
INSERT INTO `activity` VALUES ('833', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516826,\"discount\":\"12313\"}', '{\"updated_at\":1457516821,\"discount\":12313}', '2016-03-09 16:47:06', 'admin');
INSERT INTO `activity` VALUES ('834', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516831,\"discount\":\"12313\"}', '{\"updated_at\":1457516826,\"discount\":12313}', '2016-03-09 16:47:11', 'admin');
INSERT INTO `activity` VALUES ('835', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516836,\"discount\":\"12313\"}', '{\"updated_at\":1457516831,\"discount\":12313}', '2016-03-09 16:47:16', 'admin');
INSERT INTO `activity` VALUES ('836', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516841,\"discount\":\"12313\"}', '{\"updated_at\":1457516836,\"discount\":12313}', '2016-03-09 16:47:21', 'admin');
INSERT INTO `activity` VALUES ('837', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516846,\"discount\":\"12313\"}', '{\"updated_at\":1457516841,\"discount\":12313}', '2016-03-09 16:47:26', 'admin');
INSERT INTO `activity` VALUES ('838', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516851,\"discount\":\"12313\"}', '{\"updated_at\":1457516846,\"discount\":12313}', '2016-03-09 16:47:31', 'admin');
INSERT INTO `activity` VALUES ('839', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516856,\"discount\":\"12313\"}', '{\"updated_at\":1457516851,\"discount\":12313}', '2016-03-09 16:47:36', 'admin');
INSERT INTO `activity` VALUES ('840', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516861,\"discount\":\"12313\"}', '{\"updated_at\":1457516856,\"discount\":12313}', '2016-03-09 16:47:41', 'admin');
INSERT INTO `activity` VALUES ('841', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516866,\"discount\":\"12313\"}', '{\"updated_at\":1457516861,\"discount\":12313}', '2016-03-09 16:47:46', 'admin');
INSERT INTO `activity` VALUES ('842', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516871,\"discount\":\"12313\"}', '{\"updated_at\":1457516866,\"discount\":12313}', '2016-03-09 16:47:51', 'admin');
INSERT INTO `activity` VALUES ('843', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516876,\"discount\":\"12313\"}', '{\"updated_at\":1457516871,\"discount\":12313}', '2016-03-09 16:47:56', 'admin');
INSERT INTO `activity` VALUES ('844', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516881,\"discount\":\"12313\"}', '{\"updated_at\":1457516876,\"discount\":12313}', '2016-03-09 16:48:01', 'admin');
INSERT INTO `activity` VALUES ('845', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516886,\"discount\":\"12313\"}', '{\"updated_at\":1457516881,\"discount\":12313}', '2016-03-09 16:48:06', 'admin');
INSERT INTO `activity` VALUES ('846', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516891,\"discount\":\"12313\"}', '{\"updated_at\":1457516886,\"discount\":12313}', '2016-03-09 16:48:11', 'admin');
INSERT INTO `activity` VALUES ('847', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516896,\"discount\":\"12313\"}', '{\"updated_at\":1457516891,\"discount\":12313}', '2016-03-09 16:48:16', 'admin');
INSERT INTO `activity` VALUES ('848', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516901,\"discount\":\"12313\"}', '{\"updated_at\":1457516896,\"discount\":12313}', '2016-03-09 16:48:21', 'admin');
INSERT INTO `activity` VALUES ('849', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516906,\"discount\":\"12313\"}', '{\"updated_at\":1457516901,\"discount\":12313}', '2016-03-09 16:48:26', 'admin');
INSERT INTO `activity` VALUES ('850', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516911,\"discount\":\"12313\"}', '{\"updated_at\":1457516906,\"discount\":12313}', '2016-03-09 16:48:31', 'admin');
INSERT INTO `activity` VALUES ('851', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516916,\"discount\":\"12313\"}', '{\"updated_at\":1457516911,\"discount\":12313}', '2016-03-09 16:48:36', 'admin');
INSERT INTO `activity` VALUES ('852', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516921,\"discount\":\"12313\"}', '{\"updated_at\":1457516916,\"discount\":12313}', '2016-03-09 16:48:41', 'admin');
INSERT INTO `activity` VALUES ('853', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516926,\"discount\":\"12313\"}', '{\"updated_at\":1457516921,\"discount\":12313}', '2016-03-09 16:48:46', 'admin');
INSERT INTO `activity` VALUES ('854', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516931,\"discount\":\"12313\"}', '{\"updated_at\":1457516926,\"discount\":12313}', '2016-03-09 16:48:51', 'admin');
INSERT INTO `activity` VALUES ('855', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516936,\"discount\":\"12313\"}', '{\"updated_at\":1457516931,\"discount\":12313}', '2016-03-09 16:48:56', 'admin');
INSERT INTO `activity` VALUES ('856', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516941,\"discount\":\"12313\"}', '{\"updated_at\":1457516936,\"discount\":12313}', '2016-03-09 16:49:01', 'admin');
INSERT INTO `activity` VALUES ('857', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516946,\"discount\":\"12313\"}', '{\"updated_at\":1457516941,\"discount\":12313}', '2016-03-09 16:49:06', 'admin');
INSERT INTO `activity` VALUES ('858', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516951,\"discount\":\"12313\"}', '{\"updated_at\":1457516946,\"discount\":12313}', '2016-03-09 16:49:11', 'admin');
INSERT INTO `activity` VALUES ('859', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516956,\"discount\":\"12313\"}', '{\"updated_at\":1457516951,\"discount\":12313}', '2016-03-09 16:49:16', 'admin');
INSERT INTO `activity` VALUES ('860', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516961,\"discount\":\"12313\"}', '{\"updated_at\":1457516956,\"discount\":12313}', '2016-03-09 16:49:21', 'admin');
INSERT INTO `activity` VALUES ('861', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516966,\"discount\":\"12313\"}', '{\"updated_at\":1457516961,\"discount\":12313}', '2016-03-09 16:49:26', 'admin');
INSERT INTO `activity` VALUES ('862', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516971,\"discount\":\"12313\"}', '{\"updated_at\":1457516966,\"discount\":12313}', '2016-03-09 16:49:31', 'admin');
INSERT INTO `activity` VALUES ('863', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516976,\"discount\":\"12313\"}', '{\"updated_at\":1457516971,\"discount\":12313}', '2016-03-09 16:49:36', 'admin');
INSERT INTO `activity` VALUES ('864', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516981,\"discount\":\"12313\"}', '{\"updated_at\":1457516976,\"discount\":12313}', '2016-03-09 16:49:41', 'admin');
INSERT INTO `activity` VALUES ('865', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516986,\"discount\":\"12313\"}', '{\"updated_at\":1457516981,\"discount\":12313}', '2016-03-09 16:49:46', 'admin');
INSERT INTO `activity` VALUES ('866', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516991,\"discount\":\"12313\"}', '{\"updated_at\":1457516986,\"discount\":12313}', '2016-03-09 16:49:51', 'admin');
INSERT INTO `activity` VALUES ('867', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457516996,\"discount\":\"12313\"}', '{\"updated_at\":1457516991,\"discount\":12313}', '2016-03-09 16:49:56', 'admin');
INSERT INTO `activity` VALUES ('868', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517001,\"discount\":\"12313\"}', '{\"updated_at\":1457516996,\"discount\":12313}', '2016-03-09 16:50:01', 'admin');
INSERT INTO `activity` VALUES ('869', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517006,\"discount\":\"12313\"}', '{\"updated_at\":1457517001,\"discount\":12313}', '2016-03-09 16:50:06', 'admin');
INSERT INTO `activity` VALUES ('870', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517011,\"discount\":\"12313\"}', '{\"updated_at\":1457517006,\"discount\":12313}', '2016-03-09 16:50:11', 'admin');
INSERT INTO `activity` VALUES ('871', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517016,\"discount\":\"12313\"}', '{\"updated_at\":1457517011,\"discount\":12313}', '2016-03-09 16:50:16', 'admin');
INSERT INTO `activity` VALUES ('872', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517021,\"discount\":\"12313\"}', '{\"updated_at\":1457517016,\"discount\":12313}', '2016-03-09 16:50:21', 'admin');
INSERT INTO `activity` VALUES ('873', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517026,\"discount\":\"12313\"}', '{\"updated_at\":1457517021,\"discount\":12313}', '2016-03-09 16:50:26', 'admin');
INSERT INTO `activity` VALUES ('874', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517031,\"discount\":\"12313\"}', '{\"updated_at\":1457517026,\"discount\":12313}', '2016-03-09 16:50:31', 'admin');
INSERT INTO `activity` VALUES ('875', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517036,\"discount\":\"12313\"}', '{\"updated_at\":1457517031,\"discount\":12313}', '2016-03-09 16:50:36', 'admin');
INSERT INTO `activity` VALUES ('876', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517041,\"discount\":\"12313\"}', '{\"updated_at\":1457517036,\"discount\":12313}', '2016-03-09 16:50:41', 'admin');
INSERT INTO `activity` VALUES ('877', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517046,\"discount\":\"12313\"}', '{\"updated_at\":1457517041,\"discount\":12313}', '2016-03-09 16:50:46', 'admin');
INSERT INTO `activity` VALUES ('878', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517051,\"discount\":\"12313\"}', '{\"updated_at\":1457517046,\"discount\":12313}', '2016-03-09 16:50:51', 'admin');
INSERT INTO `activity` VALUES ('879', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517056,\"discount\":\"12313\"}', '{\"updated_at\":1457517051,\"discount\":12313}', '2016-03-09 16:50:56', 'admin');
INSERT INTO `activity` VALUES ('880', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517061,\"discount\":\"12313\"}', '{\"updated_at\":1457517056,\"discount\":12313}', '2016-03-09 16:51:01', 'admin');
INSERT INTO `activity` VALUES ('881', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517066,\"discount\":\"12313\"}', '{\"updated_at\":1457517061,\"discount\":12313}', '2016-03-09 16:51:06', 'admin');
INSERT INTO `activity` VALUES ('882', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517071,\"discount\":\"12313\"}', '{\"updated_at\":1457517066,\"discount\":12313}', '2016-03-09 16:51:11', 'admin');
INSERT INTO `activity` VALUES ('883', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517076,\"discount\":\"12313\"}', '{\"updated_at\":1457517071,\"discount\":12313}', '2016-03-09 16:51:16', 'admin');
INSERT INTO `activity` VALUES ('884', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517081,\"discount\":\"12313\"}', '{\"updated_at\":1457517076,\"discount\":12313}', '2016-03-09 16:51:21', 'admin');
INSERT INTO `activity` VALUES ('885', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517086,\"discount\":\"12313\"}', '{\"updated_at\":1457517081,\"discount\":12313}', '2016-03-09 16:51:26', 'admin');
INSERT INTO `activity` VALUES ('886', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517091,\"discount\":\"12313\"}', '{\"updated_at\":1457517086,\"discount\":12313}', '2016-03-09 16:51:31', 'admin');
INSERT INTO `activity` VALUES ('887', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517096,\"discount\":\"12313\"}', '{\"updated_at\":1457517091,\"discount\":12313}', '2016-03-09 16:51:36', 'admin');
INSERT INTO `activity` VALUES ('888', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517101,\"discount\":\"12313\"}', '{\"updated_at\":1457517096,\"discount\":12313}', '2016-03-09 16:51:41', 'admin');
INSERT INTO `activity` VALUES ('889', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517106,\"discount\":\"12313\"}', '{\"updated_at\":1457517101,\"discount\":12313}', '2016-03-09 16:51:46', 'admin');
INSERT INTO `activity` VALUES ('890', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517111,\"discount\":\"12313\"}', '{\"updated_at\":1457517106,\"discount\":12313}', '2016-03-09 16:51:51', 'admin');
INSERT INTO `activity` VALUES ('891', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517116,\"discount\":\"12313\"}', '{\"updated_at\":1457517111,\"discount\":12313}', '2016-03-09 16:51:56', 'admin');
INSERT INTO `activity` VALUES ('892', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517121,\"discount\":\"12313\"}', '{\"updated_at\":1457517116,\"discount\":12313}', '2016-03-09 16:52:01', 'admin');
INSERT INTO `activity` VALUES ('893', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517126,\"discount\":\"12313\"}', '{\"updated_at\":1457517121,\"discount\":12313}', '2016-03-09 16:52:06', 'admin');
INSERT INTO `activity` VALUES ('894', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517131,\"discount\":\"12313\"}', '{\"updated_at\":1457517126,\"discount\":12313}', '2016-03-09 16:52:11', 'admin');
INSERT INTO `activity` VALUES ('895', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517136,\"discount\":\"12313\"}', '{\"updated_at\":1457517131,\"discount\":12313}', '2016-03-09 16:52:16', 'admin');
INSERT INTO `activity` VALUES ('896', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517141,\"discount\":\"12313\"}', '{\"updated_at\":1457517136,\"discount\":12313}', '2016-03-09 16:52:21', 'admin');
INSERT INTO `activity` VALUES ('897', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517146,\"discount\":\"12313\"}', '{\"updated_at\":1457517141,\"discount\":12313}', '2016-03-09 16:52:26', 'admin');
INSERT INTO `activity` VALUES ('898', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517151,\"discount\":\"12313\"}', '{\"updated_at\":1457517146,\"discount\":12313}', '2016-03-09 16:52:31', 'admin');
INSERT INTO `activity` VALUES ('899', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517156,\"discount\":\"12313\"}', '{\"updated_at\":1457517151,\"discount\":12313}', '2016-03-09 16:52:36', 'admin');
INSERT INTO `activity` VALUES ('900', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517161,\"discount\":\"12313\"}', '{\"updated_at\":1457517156,\"discount\":12313}', '2016-03-09 16:52:41', 'admin');
INSERT INTO `activity` VALUES ('901', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517166,\"discount\":\"12313\"}', '{\"updated_at\":1457517161,\"discount\":12313}', '2016-03-09 16:52:46', 'admin');
INSERT INTO `activity` VALUES ('902', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517171,\"discount\":\"12313\"}', '{\"updated_at\":1457517166,\"discount\":12313}', '2016-03-09 16:52:51', 'admin');
INSERT INTO `activity` VALUES ('903', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517176,\"discount\":\"12313\"}', '{\"updated_at\":1457517171,\"discount\":12313}', '2016-03-09 16:52:56', 'admin');
INSERT INTO `activity` VALUES ('904', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517181,\"discount\":\"12313\"}', '{\"updated_at\":1457517176,\"discount\":12313}', '2016-03-09 16:53:01', 'admin');
INSERT INTO `activity` VALUES ('905', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517186,\"discount\":\"12313\"}', '{\"updated_at\":1457517181,\"discount\":12313}', '2016-03-09 16:53:06', 'admin');
INSERT INTO `activity` VALUES ('906', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517191,\"discount\":\"12313\"}', '{\"updated_at\":1457517186,\"discount\":12313}', '2016-03-09 16:53:11', 'admin');
INSERT INTO `activity` VALUES ('907', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517196,\"discount\":\"12313\"}', '{\"updated_at\":1457517191,\"discount\":12313}', '2016-03-09 16:53:16', 'admin');
INSERT INTO `activity` VALUES ('908', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517201,\"discount\":\"12313\"}', '{\"updated_at\":1457517196,\"discount\":12313}', '2016-03-09 16:53:21', 'admin');
INSERT INTO `activity` VALUES ('909', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517206,\"discount\":\"12313\"}', '{\"updated_at\":1457517201,\"discount\":12313}', '2016-03-09 16:53:26', 'admin');
INSERT INTO `activity` VALUES ('910', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517211,\"discount\":\"12313\"}', '{\"updated_at\":1457517206,\"discount\":12313}', '2016-03-09 16:53:31', 'admin');
INSERT INTO `activity` VALUES ('911', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517216,\"discount\":\"12313\"}', '{\"updated_at\":1457517211,\"discount\":12313}', '2016-03-09 16:53:36', 'admin');
INSERT INTO `activity` VALUES ('912', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517221,\"discount\":\"12313\"}', '{\"updated_at\":1457517216,\"discount\":12313}', '2016-03-09 16:53:41', 'admin');
INSERT INTO `activity` VALUES ('913', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517226,\"discount\":\"12313\"}', '{\"updated_at\":1457517221,\"discount\":12313}', '2016-03-09 16:53:46', 'admin');
INSERT INTO `activity` VALUES ('914', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517231,\"discount\":\"12313\"}', '{\"updated_at\":1457517226,\"discount\":12313}', '2016-03-09 16:53:51', 'admin');
INSERT INTO `activity` VALUES ('915', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517236,\"discount\":\"12313\"}', '{\"updated_at\":1457517231,\"discount\":12313}', '2016-03-09 16:53:56', 'admin');
INSERT INTO `activity` VALUES ('916', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517241,\"discount\":\"12313\"}', '{\"updated_at\":1457517236,\"discount\":12313}', '2016-03-09 16:54:01', 'admin');
INSERT INTO `activity` VALUES ('917', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517246,\"discount\":\"12313\"}', '{\"updated_at\":1457517241,\"discount\":12313}', '2016-03-09 16:54:06', 'admin');
INSERT INTO `activity` VALUES ('918', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517251,\"discount\":\"12313\"}', '{\"updated_at\":1457517246,\"discount\":12313}', '2016-03-09 16:54:11', 'admin');
INSERT INTO `activity` VALUES ('919', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517256,\"discount\":\"12313\"}', '{\"updated_at\":1457517251,\"discount\":12313}', '2016-03-09 16:54:16', 'admin');
INSERT INTO `activity` VALUES ('920', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517261,\"discount\":\"12313\"}', '{\"updated_at\":1457517256,\"discount\":12313}', '2016-03-09 16:54:21', 'admin');
INSERT INTO `activity` VALUES ('921', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517266,\"discount\":\"12313\"}', '{\"updated_at\":1457517261,\"discount\":12313}', '2016-03-09 16:54:26', 'admin');
INSERT INTO `activity` VALUES ('922', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517271,\"discount\":\"12313\"}', '{\"updated_at\":1457517266,\"discount\":12313}', '2016-03-09 16:54:31', 'admin');
INSERT INTO `activity` VALUES ('923', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517276,\"discount\":\"12313\"}', '{\"updated_at\":1457517271,\"discount\":12313}', '2016-03-09 16:54:36', 'admin');
INSERT INTO `activity` VALUES ('924', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517281,\"discount\":\"12313\"}', '{\"updated_at\":1457517276,\"discount\":12313}', '2016-03-09 16:54:41', 'admin');
INSERT INTO `activity` VALUES ('925', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517286,\"discount\":\"12313\"}', '{\"updated_at\":1457517281,\"discount\":12313}', '2016-03-09 16:54:46', 'admin');
INSERT INTO `activity` VALUES ('926', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517290,\"discount\":\"12313\"}', '{\"updated_at\":1457517286,\"discount\":12313}', '2016-03-09 16:54:50', 'admin');
INSERT INTO `activity` VALUES ('927', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517296,\"discount\":\"12313\"}', '{\"updated_at\":1457517290,\"discount\":12313}', '2016-03-09 16:54:56', 'admin');
INSERT INTO `activity` VALUES ('928', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517301,\"discount\":\"12313\"}', '{\"updated_at\":1457517296,\"discount\":12313}', '2016-03-09 16:55:01', 'admin');
INSERT INTO `activity` VALUES ('929', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517306,\"discount\":\"12313\"}', '{\"updated_at\":1457517301,\"discount\":12313}', '2016-03-09 16:55:06', 'admin');
INSERT INTO `activity` VALUES ('930', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517311,\"discount\":\"12313\"}', '{\"updated_at\":1457517306,\"discount\":12313}', '2016-03-09 16:55:11', 'admin');
INSERT INTO `activity` VALUES ('931', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517316,\"discount\":\"12313\"}', '{\"updated_at\":1457517311,\"discount\":12313}', '2016-03-09 16:55:16', 'admin');
INSERT INTO `activity` VALUES ('932', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517321,\"discount\":\"12313\"}', '{\"updated_at\":1457517316,\"discount\":12313}', '2016-03-09 16:55:21', 'admin');
INSERT INTO `activity` VALUES ('933', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517326,\"discount\":\"12313\"}', '{\"updated_at\":1457517321,\"discount\":12313}', '2016-03-09 16:55:26', 'admin');
INSERT INTO `activity` VALUES ('934', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517331,\"discount\":\"12313\"}', '{\"updated_at\":1457517326,\"discount\":12313}', '2016-03-09 16:55:31', 'admin');
INSERT INTO `activity` VALUES ('935', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517336,\"discount\":\"12313\"}', '{\"updated_at\":1457517331,\"discount\":12313}', '2016-03-09 16:55:36', 'admin');
INSERT INTO `activity` VALUES ('936', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517341,\"discount\":\"12313\"}', '{\"updated_at\":1457517336,\"discount\":12313}', '2016-03-09 16:55:41', 'admin');
INSERT INTO `activity` VALUES ('937', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517346,\"discount\":\"12313\"}', '{\"updated_at\":1457517341,\"discount\":12313}', '2016-03-09 16:55:46', 'admin');
INSERT INTO `activity` VALUES ('938', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517351,\"discount\":\"12313\"}', '{\"updated_at\":1457517346,\"discount\":12313}', '2016-03-09 16:55:51', 'admin');
INSERT INTO `activity` VALUES ('939', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517356,\"discount\":\"12313\"}', '{\"updated_at\":1457517351,\"discount\":12313}', '2016-03-09 16:55:56', 'admin');
INSERT INTO `activity` VALUES ('940', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517361,\"discount\":\"12313\"}', '{\"updated_at\":1457517356,\"discount\":12313}', '2016-03-09 16:56:01', 'admin');
INSERT INTO `activity` VALUES ('941', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517366,\"discount\":\"12313\"}', '{\"updated_at\":1457517361,\"discount\":12313}', '2016-03-09 16:56:06', 'admin');
INSERT INTO `activity` VALUES ('942', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517371,\"discount\":\"12313\"}', '{\"updated_at\":1457517366,\"discount\":12313}', '2016-03-09 16:56:11', 'admin');
INSERT INTO `activity` VALUES ('943', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517376,\"discount\":\"12313\"}', '{\"updated_at\":1457517371,\"discount\":12313}', '2016-03-09 16:56:16', 'admin');
INSERT INTO `activity` VALUES ('944', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517381,\"discount\":\"12313\"}', '{\"updated_at\":1457517376,\"discount\":12313}', '2016-03-09 16:56:21', 'admin');
INSERT INTO `activity` VALUES ('945', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517386,\"discount\":\"12313\"}', '{\"updated_at\":1457517381,\"discount\":12313}', '2016-03-09 16:56:26', 'admin');
INSERT INTO `activity` VALUES ('946', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517391,\"discount\":\"12313\"}', '{\"updated_at\":1457517386,\"discount\":12313}', '2016-03-09 16:56:31', 'admin');
INSERT INTO `activity` VALUES ('947', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517396,\"discount\":\"12313\"}', '{\"updated_at\":1457517391,\"discount\":12313}', '2016-03-09 16:56:36', 'admin');
INSERT INTO `activity` VALUES ('948', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517401,\"discount\":\"12313\"}', '{\"updated_at\":1457517396,\"discount\":12313}', '2016-03-09 16:56:41', 'admin');
INSERT INTO `activity` VALUES ('949', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517406,\"discount\":\"12313\"}', '{\"updated_at\":1457517401,\"discount\":12313}', '2016-03-09 16:56:46', 'admin');
INSERT INTO `activity` VALUES ('950', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517411,\"discount\":\"12313\"}', '{\"updated_at\":1457517406,\"discount\":12313}', '2016-03-09 16:56:51', 'admin');
INSERT INTO `activity` VALUES ('951', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517416,\"discount\":\"12313\"}', '{\"updated_at\":1457517411,\"discount\":12313}', '2016-03-09 16:56:56', 'admin');
INSERT INTO `activity` VALUES ('952', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517421,\"discount\":\"12313\"}', '{\"updated_at\":1457517416,\"discount\":12313}', '2016-03-09 16:57:01', 'admin');
INSERT INTO `activity` VALUES ('953', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517426,\"discount\":\"12313\"}', '{\"updated_at\":1457517421,\"discount\":12313}', '2016-03-09 16:57:06', 'admin');
INSERT INTO `activity` VALUES ('954', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517431,\"discount\":\"12313\"}', '{\"updated_at\":1457517426,\"discount\":12313}', '2016-03-09 16:57:11', 'admin');
INSERT INTO `activity` VALUES ('955', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517436,\"discount\":\"12313\"}', '{\"updated_at\":1457517431,\"discount\":12313}', '2016-03-09 16:57:16', 'admin');
INSERT INTO `activity` VALUES ('956', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517441,\"discount\":\"12313\"}', '{\"updated_at\":1457517436,\"discount\":12313}', '2016-03-09 16:57:21', 'admin');
INSERT INTO `activity` VALUES ('957', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517446,\"discount\":\"12313\"}', '{\"updated_at\":1457517441,\"discount\":12313}', '2016-03-09 16:57:26', 'admin');
INSERT INTO `activity` VALUES ('958', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517451,\"discount\":\"12313\"}', '{\"updated_at\":1457517446,\"discount\":12313}', '2016-03-09 16:57:31', 'admin');
INSERT INTO `activity` VALUES ('959', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517456,\"discount\":\"12313\"}', '{\"updated_at\":1457517451,\"discount\":12313}', '2016-03-09 16:57:36', 'admin');
INSERT INTO `activity` VALUES ('960', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517461,\"discount\":\"12313\"}', '{\"updated_at\":1457517456,\"discount\":12313}', '2016-03-09 16:57:41', 'admin');
INSERT INTO `activity` VALUES ('961', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517466,\"discount\":\"12313\"}', '{\"updated_at\":1457517461,\"discount\":12313}', '2016-03-09 16:57:46', 'admin');
INSERT INTO `activity` VALUES ('962', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517471,\"discount\":\"12313\"}', '{\"updated_at\":1457517466,\"discount\":12313}', '2016-03-09 16:57:51', 'admin');
INSERT INTO `activity` VALUES ('963', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517476,\"discount\":\"12313\"}', '{\"updated_at\":1457517471,\"discount\":12313}', '2016-03-09 16:57:56', 'admin');
INSERT INTO `activity` VALUES ('964', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517481,\"discount\":\"12313\"}', '{\"updated_at\":1457517476,\"discount\":12313}', '2016-03-09 16:58:01', 'admin');
INSERT INTO `activity` VALUES ('965', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517486,\"discount\":\"12313\"}', '{\"updated_at\":1457517481,\"discount\":12313}', '2016-03-09 16:58:06', 'admin');
INSERT INTO `activity` VALUES ('966', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517491,\"discount\":\"12313\"}', '{\"updated_at\":1457517486,\"discount\":12313}', '2016-03-09 16:58:11', 'admin');
INSERT INTO `activity` VALUES ('967', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517496,\"discount\":\"12313\"}', '{\"updated_at\":1457517491,\"discount\":12313}', '2016-03-09 16:58:16', 'admin');
INSERT INTO `activity` VALUES ('968', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517501,\"discount\":\"12313\"}', '{\"updated_at\":1457517496,\"discount\":12313}', '2016-03-09 16:58:21', 'admin');
INSERT INTO `activity` VALUES ('969', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517506,\"discount\":\"12313\"}', '{\"updated_at\":1457517501,\"discount\":12313}', '2016-03-09 16:58:26', 'admin');
INSERT INTO `activity` VALUES ('970', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517511,\"discount\":\"12313\"}', '{\"updated_at\":1457517506,\"discount\":12313}', '2016-03-09 16:58:31', 'admin');
INSERT INTO `activity` VALUES ('971', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517516,\"discount\":\"12313\"}', '{\"updated_at\":1457517511,\"discount\":12313}', '2016-03-09 16:58:36', 'admin');
INSERT INTO `activity` VALUES ('972', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517521,\"discount\":\"12313\"}', '{\"updated_at\":1457517516,\"discount\":12313}', '2016-03-09 16:58:41', 'admin');
INSERT INTO `activity` VALUES ('973', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517526,\"discount\":\"12313\"}', '{\"updated_at\":1457517521,\"discount\":12313}', '2016-03-09 16:58:46', 'admin');
INSERT INTO `activity` VALUES ('974', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517531,\"discount\":\"12313\"}', '{\"updated_at\":1457517526,\"discount\":12313}', '2016-03-09 16:58:51', 'admin');
INSERT INTO `activity` VALUES ('975', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517536,\"discount\":\"12313\"}', '{\"updated_at\":1457517531,\"discount\":12313}', '2016-03-09 16:58:56', 'admin');
INSERT INTO `activity` VALUES ('976', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517541,\"discount\":\"12313\"}', '{\"updated_at\":1457517536,\"discount\":12313}', '2016-03-09 16:59:01', 'admin');
INSERT INTO `activity` VALUES ('977', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517546,\"discount\":\"12313\"}', '{\"updated_at\":1457517541,\"discount\":12313}', '2016-03-09 16:59:06', 'admin');
INSERT INTO `activity` VALUES ('978', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517551,\"discount\":\"12313\"}', '{\"updated_at\":1457517546,\"discount\":12313}', '2016-03-09 16:59:11', 'admin');
INSERT INTO `activity` VALUES ('979', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517556,\"discount\":\"12313\"}', '{\"updated_at\":1457517551,\"discount\":12313}', '2016-03-09 16:59:16', 'admin');
INSERT INTO `activity` VALUES ('980', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517561,\"discount\":\"12313\"}', '{\"updated_at\":1457517556,\"discount\":12313}', '2016-03-09 16:59:21', 'admin');
INSERT INTO `activity` VALUES ('981', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517566,\"discount\":\"12313\"}', '{\"updated_at\":1457517561,\"discount\":12313}', '2016-03-09 16:59:26', 'admin');
INSERT INTO `activity` VALUES ('982', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517571,\"discount\":\"12313\"}', '{\"updated_at\":1457517566,\"discount\":12313}', '2016-03-09 16:59:31', 'admin');
INSERT INTO `activity` VALUES ('983', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517576,\"discount\":\"12313\"}', '{\"updated_at\":1457517571,\"discount\":12313}', '2016-03-09 16:59:36', 'admin');
INSERT INTO `activity` VALUES ('984', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517581,\"discount\":\"12313\"}', '{\"updated_at\":1457517576,\"discount\":12313}', '2016-03-09 16:59:41', 'admin');
INSERT INTO `activity` VALUES ('985', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517586,\"discount\":\"12313\"}', '{\"updated_at\":1457517581,\"discount\":12313}', '2016-03-09 16:59:46', 'admin');
INSERT INTO `activity` VALUES ('986', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517591,\"discount\":\"12313\"}', '{\"updated_at\":1457517586,\"discount\":12313}', '2016-03-09 16:59:51', 'admin');
INSERT INTO `activity` VALUES ('987', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517596,\"discount\":\"12313\"}', '{\"updated_at\":1457517591,\"discount\":12313}', '2016-03-09 16:59:56', 'admin');
INSERT INTO `activity` VALUES ('988', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517601,\"discount\":\"12313\"}', '{\"updated_at\":1457517596,\"discount\":12313}', '2016-03-09 17:00:01', 'admin');
INSERT INTO `activity` VALUES ('989', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517606,\"discount\":\"12313\"}', '{\"updated_at\":1457517601,\"discount\":12313}', '2016-03-09 17:00:06', 'admin');
INSERT INTO `activity` VALUES ('990', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517611,\"discount\":\"12313\"}', '{\"updated_at\":1457517606,\"discount\":12313}', '2016-03-09 17:00:11', 'admin');
INSERT INTO `activity` VALUES ('991', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517616,\"discount\":\"12313\"}', '{\"updated_at\":1457517611,\"discount\":12313}', '2016-03-09 17:00:16', 'admin');
INSERT INTO `activity` VALUES ('992', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517621,\"discount\":\"12313\"}', '{\"updated_at\":1457517616,\"discount\":12313}', '2016-03-09 17:00:21', 'admin');
INSERT INTO `activity` VALUES ('993', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517626,\"discount\":\"12313\"}', '{\"updated_at\":1457517621,\"discount\":12313}', '2016-03-09 17:00:26', 'admin');
INSERT INTO `activity` VALUES ('994', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517631,\"discount\":\"12313\"}', '{\"updated_at\":1457517626,\"discount\":12313}', '2016-03-09 17:00:31', 'admin');
INSERT INTO `activity` VALUES ('995', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517636,\"discount\":\"12313\"}', '{\"updated_at\":1457517631,\"discount\":12313}', '2016-03-09 17:00:36', 'admin');
INSERT INTO `activity` VALUES ('996', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517641,\"discount\":\"12313\"}', '{\"updated_at\":1457517636,\"discount\":12313}', '2016-03-09 17:00:41', 'admin');
INSERT INTO `activity` VALUES ('997', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517646,\"discount\":\"12313\"}', '{\"updated_at\":1457517641,\"discount\":12313}', '2016-03-09 17:00:46', 'admin');
INSERT INTO `activity` VALUES ('998', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517651,\"discount\":\"12313\"}', '{\"updated_at\":1457517646,\"discount\":12313}', '2016-03-09 17:00:51', 'admin');
INSERT INTO `activity` VALUES ('999', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517656,\"discount\":\"12313\"}', '{\"updated_at\":1457517651,\"discount\":12313}', '2016-03-09 17:00:56', 'admin');
INSERT INTO `activity` VALUES ('1000', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517661,\"discount\":\"12313\"}', '{\"updated_at\":1457517656,\"discount\":12313}', '2016-03-09 17:01:01', 'admin');
INSERT INTO `activity` VALUES ('1001', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517666,\"discount\":\"12313\"}', '{\"updated_at\":1457517661,\"discount\":12313}', '2016-03-09 17:01:06', 'admin');
INSERT INTO `activity` VALUES ('1002', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517671,\"discount\":\"12313\"}', '{\"updated_at\":1457517666,\"discount\":12313}', '2016-03-09 17:01:11', 'admin');
INSERT INTO `activity` VALUES ('1003', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517676,\"discount\":\"12313\"}', '{\"updated_at\":1457517671,\"discount\":12313}', '2016-03-09 17:01:16', 'admin');
INSERT INTO `activity` VALUES ('1004', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517681,\"discount\":\"12313\"}', '{\"updated_at\":1457517676,\"discount\":12313}', '2016-03-09 17:01:21', 'admin');
INSERT INTO `activity` VALUES ('1005', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517686,\"discount\":\"12313\"}', '{\"updated_at\":1457517681,\"discount\":12313}', '2016-03-09 17:01:26', 'admin');
INSERT INTO `activity` VALUES ('1006', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517691,\"discount\":\"12313\"}', '{\"updated_at\":1457517686,\"discount\":12313}', '2016-03-09 17:01:31', 'admin');
INSERT INTO `activity` VALUES ('1007', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517696,\"discount\":\"12313\"}', '{\"updated_at\":1457517691,\"discount\":12313}', '2016-03-09 17:01:36', 'admin');
INSERT INTO `activity` VALUES ('1008', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517701,\"discount\":\"12313\"}', '{\"updated_at\":1457517696,\"discount\":12313}', '2016-03-09 17:01:41', 'admin');
INSERT INTO `activity` VALUES ('1009', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517706,\"discount\":\"12313\"}', '{\"updated_at\":1457517701,\"discount\":12313}', '2016-03-09 17:01:46', 'admin');
INSERT INTO `activity` VALUES ('1010', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517711,\"discount\":\"12313\"}', '{\"updated_at\":1457517706,\"discount\":12313}', '2016-03-09 17:01:51', 'admin');
INSERT INTO `activity` VALUES ('1011', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517716,\"discount\":\"12313\"}', '{\"updated_at\":1457517711,\"discount\":12313}', '2016-03-09 17:01:56', 'admin');
INSERT INTO `activity` VALUES ('1012', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517721,\"discount\":\"12313\"}', '{\"updated_at\":1457517716,\"discount\":12313}', '2016-03-09 17:02:01', 'admin');
INSERT INTO `activity` VALUES ('1013', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517726,\"discount\":\"12313\"}', '{\"updated_at\":1457517721,\"discount\":12313}', '2016-03-09 17:02:06', 'admin');
INSERT INTO `activity` VALUES ('1014', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517731,\"discount\":\"12313\"}', '{\"updated_at\":1457517726,\"discount\":12313}', '2016-03-09 17:02:11', 'admin');
INSERT INTO `activity` VALUES ('1015', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517736,\"discount\":\"12313\"}', '{\"updated_at\":1457517731,\"discount\":12313}', '2016-03-09 17:02:16', 'admin');
INSERT INTO `activity` VALUES ('1016', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517741,\"discount\":\"12313\"}', '{\"updated_at\":1457517736,\"discount\":12313}', '2016-03-09 17:02:21', 'admin');
INSERT INTO `activity` VALUES ('1017', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517746,\"discount\":\"12313\"}', '{\"updated_at\":1457517741,\"discount\":12313}', '2016-03-09 17:02:26', 'admin');
INSERT INTO `activity` VALUES ('1018', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517751,\"discount\":\"12313\"}', '{\"updated_at\":1457517746,\"discount\":12313}', '2016-03-09 17:02:31', 'admin');
INSERT INTO `activity` VALUES ('1019', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517756,\"discount\":\"12313\"}', '{\"updated_at\":1457517751,\"discount\":12313}', '2016-03-09 17:02:36', 'admin');
INSERT INTO `activity` VALUES ('1020', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517761,\"discount\":\"12313\"}', '{\"updated_at\":1457517756,\"discount\":12313}', '2016-03-09 17:02:41', 'admin');
INSERT INTO `activity` VALUES ('1021', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517766,\"discount\":\"12313\"}', '{\"updated_at\":1457517761,\"discount\":12313}', '2016-03-09 17:02:46', 'admin');
INSERT INTO `activity` VALUES ('1022', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517771,\"discount\":\"12313\"}', '{\"updated_at\":1457517766,\"discount\":12313}', '2016-03-09 17:02:51', 'admin');
INSERT INTO `activity` VALUES ('1023', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517776,\"discount\":\"12313\"}', '{\"updated_at\":1457517771,\"discount\":12313}', '2016-03-09 17:02:56', 'admin');
INSERT INTO `activity` VALUES ('1024', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517781,\"discount\":\"12313\"}', '{\"updated_at\":1457517776,\"discount\":12313}', '2016-03-09 17:03:01', 'admin');
INSERT INTO `activity` VALUES ('1025', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517786,\"discount\":\"12313\"}', '{\"updated_at\":1457517781,\"discount\":12313}', '2016-03-09 17:03:06', 'admin');
INSERT INTO `activity` VALUES ('1026', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517791,\"discount\":\"12313\"}', '{\"updated_at\":1457517786,\"discount\":12313}', '2016-03-09 17:03:11', 'admin');
INSERT INTO `activity` VALUES ('1027', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517796,\"discount\":\"12313\"}', '{\"updated_at\":1457517791,\"discount\":12313}', '2016-03-09 17:03:16', 'admin');
INSERT INTO `activity` VALUES ('1028', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517801,\"discount\":\"12313\"}', '{\"updated_at\":1457517796,\"discount\":12313}', '2016-03-09 17:03:21', 'admin');
INSERT INTO `activity` VALUES ('1029', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517806,\"discount\":\"12313\"}', '{\"updated_at\":1457517801,\"discount\":12313}', '2016-03-09 17:03:26', 'admin');
INSERT INTO `activity` VALUES ('1030', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517811,\"discount\":\"12313\"}', '{\"updated_at\":1457517806,\"discount\":12313}', '2016-03-09 17:03:31', 'admin');
INSERT INTO `activity` VALUES ('1031', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517816,\"discount\":\"12313\"}', '{\"updated_at\":1457517811,\"discount\":12313}', '2016-03-09 17:03:36', 'admin');
INSERT INTO `activity` VALUES ('1032', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517821,\"discount\":\"12313\"}', '{\"updated_at\":1457517816,\"discount\":12313}', '2016-03-09 17:03:41', 'admin');
INSERT INTO `activity` VALUES ('1033', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517826,\"discount\":\"12313\"}', '{\"updated_at\":1457517821,\"discount\":12313}', '2016-03-09 17:03:46', 'admin');
INSERT INTO `activity` VALUES ('1034', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517831,\"discount\":\"12313\"}', '{\"updated_at\":1457517826,\"discount\":12313}', '2016-03-09 17:03:51', 'admin');
INSERT INTO `activity` VALUES ('1035', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517836,\"discount\":\"12313\"}', '{\"updated_at\":1457517831,\"discount\":12313}', '2016-03-09 17:03:56', 'admin');
INSERT INTO `activity` VALUES ('1036', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517841,\"discount\":\"12313\"}', '{\"updated_at\":1457517836,\"discount\":12313}', '2016-03-09 17:04:01', 'admin');
INSERT INTO `activity` VALUES ('1037', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517846,\"discount\":\"12313\"}', '{\"updated_at\":1457517841,\"discount\":12313}', '2016-03-09 17:04:06', 'admin');
INSERT INTO `activity` VALUES ('1038', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517851,\"discount\":\"12313\"}', '{\"updated_at\":1457517846,\"discount\":12313}', '2016-03-09 17:04:11', 'admin');
INSERT INTO `activity` VALUES ('1039', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517856,\"discount\":\"12313\"}', '{\"updated_at\":1457517851,\"discount\":12313}', '2016-03-09 17:04:16', 'admin');
INSERT INTO `activity` VALUES ('1040', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517861,\"discount\":\"12313\"}', '{\"updated_at\":1457517856,\"discount\":12313}', '2016-03-09 17:04:21', 'admin');
INSERT INTO `activity` VALUES ('1041', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517866,\"discount\":\"12313\"}', '{\"updated_at\":1457517861,\"discount\":12313}', '2016-03-09 17:04:26', 'admin');
INSERT INTO `activity` VALUES ('1042', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517871,\"discount\":\"12313\"}', '{\"updated_at\":1457517866,\"discount\":12313}', '2016-03-09 17:04:31', 'admin');
INSERT INTO `activity` VALUES ('1043', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517876,\"discount\":\"12313\"}', '{\"updated_at\":1457517871,\"discount\":12313}', '2016-03-09 17:04:36', 'admin');
INSERT INTO `activity` VALUES ('1044', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517881,\"discount\":\"12313\"}', '{\"updated_at\":1457517876,\"discount\":12313}', '2016-03-09 17:04:41', 'admin');
INSERT INTO `activity` VALUES ('1045', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517886,\"discount\":\"12313\"}', '{\"updated_at\":1457517881,\"discount\":12313}', '2016-03-09 17:04:46', 'admin');
INSERT INTO `activity` VALUES ('1046', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517891,\"discount\":\"12313\"}', '{\"updated_at\":1457517886,\"discount\":12313}', '2016-03-09 17:04:51', 'admin');
INSERT INTO `activity` VALUES ('1047', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517896,\"discount\":\"12313\"}', '{\"updated_at\":1457517891,\"discount\":12313}', '2016-03-09 17:04:56', 'admin');
INSERT INTO `activity` VALUES ('1048', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517901,\"discount\":\"12313\"}', '{\"updated_at\":1457517896,\"discount\":12313}', '2016-03-09 17:05:01', 'admin');
INSERT INTO `activity` VALUES ('1049', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517906,\"discount\":\"12313\"}', '{\"updated_at\":1457517901,\"discount\":12313}', '2016-03-09 17:05:06', 'admin');
INSERT INTO `activity` VALUES ('1050', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517911,\"discount\":\"12313\"}', '{\"updated_at\":1457517906,\"discount\":12313}', '2016-03-09 17:05:11', 'admin');
INSERT INTO `activity` VALUES ('1051', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517916,\"discount\":\"12313\"}', '{\"updated_at\":1457517911,\"discount\":12313}', '2016-03-09 17:05:16', 'admin');
INSERT INTO `activity` VALUES ('1052', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517921,\"discount\":\"12313\"}', '{\"updated_at\":1457517916,\"discount\":12313}', '2016-03-09 17:05:21', 'admin');
INSERT INTO `activity` VALUES ('1053', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517926,\"discount\":\"12313\"}', '{\"updated_at\":1457517921,\"discount\":12313}', '2016-03-09 17:05:26', 'admin');
INSERT INTO `activity` VALUES ('1054', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517931,\"discount\":\"12313\"}', '{\"updated_at\":1457517926,\"discount\":12313}', '2016-03-09 17:05:31', 'admin');
INSERT INTO `activity` VALUES ('1055', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517936,\"discount\":\"12313\"}', '{\"updated_at\":1457517931,\"discount\":12313}', '2016-03-09 17:05:36', 'admin');
INSERT INTO `activity` VALUES ('1056', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517941,\"discount\":\"12313\"}', '{\"updated_at\":1457517936,\"discount\":12313}', '2016-03-09 17:05:41', 'admin');
INSERT INTO `activity` VALUES ('1057', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517946,\"discount\":\"12313\"}', '{\"updated_at\":1457517941,\"discount\":12313}', '2016-03-09 17:05:46', 'admin');
INSERT INTO `activity` VALUES ('1058', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517951,\"discount\":\"12313\"}', '{\"updated_at\":1457517946,\"discount\":12313}', '2016-03-09 17:05:51', 'admin');
INSERT INTO `activity` VALUES ('1059', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517956,\"discount\":\"12313\"}', '{\"updated_at\":1457517951,\"discount\":12313}', '2016-03-09 17:05:56', 'admin');
INSERT INTO `activity` VALUES ('1060', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517961,\"discount\":\"12313\"}', '{\"updated_at\":1457517956,\"discount\":12313}', '2016-03-09 17:06:01', 'admin');
INSERT INTO `activity` VALUES ('1061', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517966,\"discount\":\"12313\"}', '{\"updated_at\":1457517961,\"discount\":12313}', '2016-03-09 17:06:06', 'admin');
INSERT INTO `activity` VALUES ('1062', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517971,\"discount\":\"12313\"}', '{\"updated_at\":1457517966,\"discount\":12313}', '2016-03-09 17:06:11', 'admin');
INSERT INTO `activity` VALUES ('1063', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517976,\"discount\":\"12313\"}', '{\"updated_at\":1457517971,\"discount\":12313}', '2016-03-09 17:06:16', 'admin');
INSERT INTO `activity` VALUES ('1064', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517981,\"discount\":\"12313\"}', '{\"updated_at\":1457517976,\"discount\":12313}', '2016-03-09 17:06:21', 'admin');
INSERT INTO `activity` VALUES ('1065', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517986,\"discount\":\"12313\"}', '{\"updated_at\":1457517981,\"discount\":12313}', '2016-03-09 17:06:26', 'admin');
INSERT INTO `activity` VALUES ('1066', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517991,\"discount\":\"12313\"}', '{\"updated_at\":1457517986,\"discount\":12313}', '2016-03-09 17:06:31', 'admin');
INSERT INTO `activity` VALUES ('1067', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457517996,\"discount\":\"12313\"}', '{\"updated_at\":1457517991,\"discount\":12313}', '2016-03-09 17:06:36', 'admin');
INSERT INTO `activity` VALUES ('1068', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518001,\"discount\":\"12313\"}', '{\"updated_at\":1457517996,\"discount\":12313}', '2016-03-09 17:06:41', 'admin');
INSERT INTO `activity` VALUES ('1069', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518006,\"discount\":\"12313\"}', '{\"updated_at\":1457518001,\"discount\":12313}', '2016-03-09 17:06:46', 'admin');
INSERT INTO `activity` VALUES ('1070', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518011,\"discount\":\"12313\"}', '{\"updated_at\":1457518006,\"discount\":12313}', '2016-03-09 17:06:51', 'admin');
INSERT INTO `activity` VALUES ('1071', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518016,\"discount\":\"12313\"}', '{\"updated_at\":1457518011,\"discount\":12313}', '2016-03-09 17:06:56', 'admin');
INSERT INTO `activity` VALUES ('1072', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518021,\"discount\":\"12313\"}', '{\"updated_at\":1457518016,\"discount\":12313}', '2016-03-09 17:07:01', 'admin');
INSERT INTO `activity` VALUES ('1073', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518026,\"discount\":\"12313\"}', '{\"updated_at\":1457518021,\"discount\":12313}', '2016-03-09 17:07:06', 'admin');
INSERT INTO `activity` VALUES ('1074', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518031,\"discount\":\"12313\"}', '{\"updated_at\":1457518026,\"discount\":12313}', '2016-03-09 17:07:11', 'admin');
INSERT INTO `activity` VALUES ('1075', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518036,\"discount\":\"12313\"}', '{\"updated_at\":1457518031,\"discount\":12313}', '2016-03-09 17:07:16', 'admin');
INSERT INTO `activity` VALUES ('1076', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518041,\"discount\":\"12313\"}', '{\"updated_at\":1457518036,\"discount\":12313}', '2016-03-09 17:07:21', 'admin');
INSERT INTO `activity` VALUES ('1077', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518046,\"discount\":\"12313\"}', '{\"updated_at\":1457518041,\"discount\":12313}', '2016-03-09 17:07:26', 'admin');
INSERT INTO `activity` VALUES ('1078', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518051,\"discount\":\"12313\"}', '{\"updated_at\":1457518046,\"discount\":12313}', '2016-03-09 17:07:31', 'admin');
INSERT INTO `activity` VALUES ('1079', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518056,\"discount\":\"12313\"}', '{\"updated_at\":1457518051,\"discount\":12313}', '2016-03-09 17:07:36', 'admin');
INSERT INTO `activity` VALUES ('1080', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518061,\"discount\":\"12313\"}', '{\"updated_at\":1457518056,\"discount\":12313}', '2016-03-09 17:07:41', 'admin');
INSERT INTO `activity` VALUES ('1081', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518066,\"discount\":\"12313\"}', '{\"updated_at\":1457518061,\"discount\":12313}', '2016-03-09 17:07:46', 'admin');
INSERT INTO `activity` VALUES ('1082', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518071,\"discount\":\"12313\"}', '{\"updated_at\":1457518066,\"discount\":12313}', '2016-03-09 17:07:51', 'admin');
INSERT INTO `activity` VALUES ('1083', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518076,\"discount\":\"12313\"}', '{\"updated_at\":1457518071,\"discount\":12313}', '2016-03-09 17:07:56', 'admin');
INSERT INTO `activity` VALUES ('1084', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518081,\"discount\":\"12313\"}', '{\"updated_at\":1457518076,\"discount\":12313}', '2016-03-09 17:08:01', 'admin');
INSERT INTO `activity` VALUES ('1085', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518086,\"discount\":\"12313\"}', '{\"updated_at\":1457518081,\"discount\":12313}', '2016-03-09 17:08:06', 'admin');
INSERT INTO `activity` VALUES ('1086', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518091,\"discount\":\"12313\"}', '{\"updated_at\":1457518086,\"discount\":12313}', '2016-03-09 17:08:11', 'admin');
INSERT INTO `activity` VALUES ('1087', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518096,\"discount\":\"12313\"}', '{\"updated_at\":1457518091,\"discount\":12313}', '2016-03-09 17:08:16', 'admin');
INSERT INTO `activity` VALUES ('1088', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518101,\"discount\":\"12313\"}', '{\"updated_at\":1457518096,\"discount\":12313}', '2016-03-09 17:08:21', 'admin');
INSERT INTO `activity` VALUES ('1089', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518106,\"discount\":\"12313\"}', '{\"updated_at\":1457518101,\"discount\":12313}', '2016-03-09 17:08:26', 'admin');
INSERT INTO `activity` VALUES ('1090', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518111,\"discount\":\"12313\"}', '{\"updated_at\":1457518106,\"discount\":12313}', '2016-03-09 17:08:31', 'admin');
INSERT INTO `activity` VALUES ('1091', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518116,\"discount\":\"12313\"}', '{\"updated_at\":1457518111,\"discount\":12313}', '2016-03-09 17:08:36', 'admin');
INSERT INTO `activity` VALUES ('1092', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518121,\"discount\":\"12313\"}', '{\"updated_at\":1457518116,\"discount\":12313}', '2016-03-09 17:08:41', 'admin');
INSERT INTO `activity` VALUES ('1093', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518126,\"discount\":\"12313\"}', '{\"updated_at\":1457518121,\"discount\":12313}', '2016-03-09 17:08:46', 'admin');
INSERT INTO `activity` VALUES ('1094', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518131,\"discount\":\"12313\"}', '{\"updated_at\":1457518126,\"discount\":12313}', '2016-03-09 17:08:51', 'admin');
INSERT INTO `activity` VALUES ('1095', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518136,\"discount\":\"12313\"}', '{\"updated_at\":1457518131,\"discount\":12313}', '2016-03-09 17:08:56', 'admin');
INSERT INTO `activity` VALUES ('1096', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518141,\"discount\":\"12313\"}', '{\"updated_at\":1457518136,\"discount\":12313}', '2016-03-09 17:09:01', 'admin');
INSERT INTO `activity` VALUES ('1097', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518146,\"discount\":\"12313\"}', '{\"updated_at\":1457518141,\"discount\":12313}', '2016-03-09 17:09:06', 'admin');
INSERT INTO `activity` VALUES ('1098', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518151,\"discount\":\"12313\"}', '{\"updated_at\":1457518146,\"discount\":12313}', '2016-03-09 17:09:11', 'admin');
INSERT INTO `activity` VALUES ('1099', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518156,\"discount\":\"12313\"}', '{\"updated_at\":1457518151,\"discount\":12313}', '2016-03-09 17:09:16', 'admin');
INSERT INTO `activity` VALUES ('1100', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518161,\"discount\":\"12313\"}', '{\"updated_at\":1457518156,\"discount\":12313}', '2016-03-09 17:09:21', 'admin');
INSERT INTO `activity` VALUES ('1101', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518166,\"discount\":\"12313\"}', '{\"updated_at\":1457518161,\"discount\":12313}', '2016-03-09 17:09:26', 'admin');
INSERT INTO `activity` VALUES ('1102', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518171,\"discount\":\"12313\"}', '{\"updated_at\":1457518166,\"discount\":12313}', '2016-03-09 17:09:31', 'admin');
INSERT INTO `activity` VALUES ('1103', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518176,\"discount\":\"12313\"}', '{\"updated_at\":1457518171,\"discount\":12313}', '2016-03-09 17:09:36', 'admin');
INSERT INTO `activity` VALUES ('1104', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518181,\"discount\":\"12313\"}', '{\"updated_at\":1457518176,\"discount\":12313}', '2016-03-09 17:09:41', 'admin');
INSERT INTO `activity` VALUES ('1105', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518186,\"discount\":\"12313\"}', '{\"updated_at\":1457518181,\"discount\":12313}', '2016-03-09 17:09:46', 'admin');
INSERT INTO `activity` VALUES ('1106', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518191,\"discount\":\"12313\"}', '{\"updated_at\":1457518186,\"discount\":12313}', '2016-03-09 17:09:51', 'admin');
INSERT INTO `activity` VALUES ('1107', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518196,\"discount\":\"12313\"}', '{\"updated_at\":1457518191,\"discount\":12313}', '2016-03-09 17:09:56', 'admin');
INSERT INTO `activity` VALUES ('1108', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518201,\"discount\":\"12313\"}', '{\"updated_at\":1457518196,\"discount\":12313}', '2016-03-09 17:10:01', 'admin');
INSERT INTO `activity` VALUES ('1109', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518206,\"discount\":\"12313\"}', '{\"updated_at\":1457518201,\"discount\":12313}', '2016-03-09 17:10:06', 'admin');
INSERT INTO `activity` VALUES ('1110', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518211,\"discount\":\"12313\"}', '{\"updated_at\":1457518206,\"discount\":12313}', '2016-03-09 17:10:11', 'admin');
INSERT INTO `activity` VALUES ('1111', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518216,\"discount\":\"12313\"}', '{\"updated_at\":1457518211,\"discount\":12313}', '2016-03-09 17:10:16', 'admin');
INSERT INTO `activity` VALUES ('1112', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518221,\"discount\":\"12313\"}', '{\"updated_at\":1457518216,\"discount\":12313}', '2016-03-09 17:10:21', 'admin');
INSERT INTO `activity` VALUES ('1113', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518226,\"discount\":\"12313\"}', '{\"updated_at\":1457518221,\"discount\":12313}', '2016-03-09 17:10:26', 'admin');
INSERT INTO `activity` VALUES ('1114', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518231,\"discount\":\"12313\"}', '{\"updated_at\":1457518226,\"discount\":12313}', '2016-03-09 17:10:31', 'admin');
INSERT INTO `activity` VALUES ('1115', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518236,\"discount\":\"12313\"}', '{\"updated_at\":1457518231,\"discount\":12313}', '2016-03-09 17:10:36', 'admin');
INSERT INTO `activity` VALUES ('1116', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518241,\"discount\":\"12313\"}', '{\"updated_at\":1457518236,\"discount\":12313}', '2016-03-09 17:10:41', 'admin');
INSERT INTO `activity` VALUES ('1117', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518246,\"discount\":\"12313\"}', '{\"updated_at\":1457518241,\"discount\":12313}', '2016-03-09 17:10:46', 'admin');
INSERT INTO `activity` VALUES ('1118', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518251,\"discount\":\"12313\"}', '{\"updated_at\":1457518246,\"discount\":12313}', '2016-03-09 17:10:51', 'admin');
INSERT INTO `activity` VALUES ('1119', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518256,\"discount\":\"12313\"}', '{\"updated_at\":1457518251,\"discount\":12313}', '2016-03-09 17:10:56', 'admin');
INSERT INTO `activity` VALUES ('1120', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518261,\"discount\":\"12313\"}', '{\"updated_at\":1457518256,\"discount\":12313}', '2016-03-09 17:11:01', 'admin');
INSERT INTO `activity` VALUES ('1121', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518266,\"discount\":\"12313\"}', '{\"updated_at\":1457518261,\"discount\":12313}', '2016-03-09 17:11:06', 'admin');
INSERT INTO `activity` VALUES ('1122', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518271,\"discount\":\"12313\"}', '{\"updated_at\":1457518266,\"discount\":12313}', '2016-03-09 17:11:11', 'admin');
INSERT INTO `activity` VALUES ('1123', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518276,\"discount\":\"12313\"}', '{\"updated_at\":1457518271,\"discount\":12313}', '2016-03-09 17:11:16', 'admin');
INSERT INTO `activity` VALUES ('1124', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518281,\"discount\":\"12313\"}', '{\"updated_at\":1457518276,\"discount\":12313}', '2016-03-09 17:11:21', 'admin');
INSERT INTO `activity` VALUES ('1125', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518286,\"discount\":\"12313\"}', '{\"updated_at\":1457518281,\"discount\":12313}', '2016-03-09 17:11:26', 'admin');
INSERT INTO `activity` VALUES ('1126', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518291,\"discount\":\"12313\"}', '{\"updated_at\":1457518286,\"discount\":12313}', '2016-03-09 17:11:31', 'admin');
INSERT INTO `activity` VALUES ('1127', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518296,\"discount\":\"12313\"}', '{\"updated_at\":1457518291,\"discount\":12313}', '2016-03-09 17:11:36', 'admin');
INSERT INTO `activity` VALUES ('1128', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518301,\"discount\":\"12313\"}', '{\"updated_at\":1457518296,\"discount\":12313}', '2016-03-09 17:11:41', 'admin');
INSERT INTO `activity` VALUES ('1129', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518306,\"discount\":\"12313\"}', '{\"updated_at\":1457518301,\"discount\":12313}', '2016-03-09 17:11:46', 'admin');
INSERT INTO `activity` VALUES ('1130', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518311,\"discount\":\"12313\"}', '{\"updated_at\":1457518306,\"discount\":12313}', '2016-03-09 17:11:51', 'admin');
INSERT INTO `activity` VALUES ('1131', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518316,\"discount\":\"12313\"}', '{\"updated_at\":1457518311,\"discount\":12313}', '2016-03-09 17:11:56', 'admin');
INSERT INTO `activity` VALUES ('1132', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518321,\"discount\":\"12313\"}', '{\"updated_at\":1457518316,\"discount\":12313}', '2016-03-09 17:12:01', 'admin');
INSERT INTO `activity` VALUES ('1133', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518326,\"discount\":\"12313\"}', '{\"updated_at\":1457518321,\"discount\":12313}', '2016-03-09 17:12:06', 'admin');
INSERT INTO `activity` VALUES ('1134', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518331,\"discount\":\"12313\"}', '{\"updated_at\":1457518326,\"discount\":12313}', '2016-03-09 17:12:11', 'admin');
INSERT INTO `activity` VALUES ('1135', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518336,\"discount\":\"12313\"}', '{\"updated_at\":1457518331,\"discount\":12313}', '2016-03-09 17:12:16', 'admin');
INSERT INTO `activity` VALUES ('1136', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518341,\"discount\":\"12313\"}', '{\"updated_at\":1457518336,\"discount\":12313}', '2016-03-09 17:12:21', 'admin');
INSERT INTO `activity` VALUES ('1137', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518346,\"discount\":\"12313\"}', '{\"updated_at\":1457518341,\"discount\":12313}', '2016-03-09 17:12:26', 'admin');
INSERT INTO `activity` VALUES ('1138', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518351,\"discount\":\"12313\"}', '{\"updated_at\":1457518346,\"discount\":12313}', '2016-03-09 17:12:31', 'admin');
INSERT INTO `activity` VALUES ('1139', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518356,\"discount\":\"12313\"}', '{\"updated_at\":1457518351,\"discount\":12313}', '2016-03-09 17:12:36', 'admin');
INSERT INTO `activity` VALUES ('1140', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518361,\"discount\":\"12313\"}', '{\"updated_at\":1457518356,\"discount\":12313}', '2016-03-09 17:12:41', 'admin');
INSERT INTO `activity` VALUES ('1141', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518366,\"discount\":\"12313\"}', '{\"updated_at\":1457518361,\"discount\":12313}', '2016-03-09 17:12:46', 'admin');
INSERT INTO `activity` VALUES ('1142', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518371,\"discount\":\"12313\"}', '{\"updated_at\":1457518366,\"discount\":12313}', '2016-03-09 17:12:51', 'admin');
INSERT INTO `activity` VALUES ('1143', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518376,\"discount\":\"12313\"}', '{\"updated_at\":1457518371,\"discount\":12313}', '2016-03-09 17:12:56', 'admin');
INSERT INTO `activity` VALUES ('1144', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518381,\"discount\":\"12313\"}', '{\"updated_at\":1457518376,\"discount\":12313}', '2016-03-09 17:13:01', 'admin');
INSERT INTO `activity` VALUES ('1145', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518386,\"discount\":\"12313\"}', '{\"updated_at\":1457518381,\"discount\":12313}', '2016-03-09 17:13:06', 'admin');
INSERT INTO `activity` VALUES ('1146', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518391,\"discount\":\"12313\"}', '{\"updated_at\":1457518386,\"discount\":12313}', '2016-03-09 17:13:11', 'admin');
INSERT INTO `activity` VALUES ('1147', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518396,\"discount\":\"12313\"}', '{\"updated_at\":1457518391,\"discount\":12313}', '2016-03-09 17:13:16', 'admin');
INSERT INTO `activity` VALUES ('1148', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518401,\"discount\":\"12313\"}', '{\"updated_at\":1457518396,\"discount\":12313}', '2016-03-09 17:13:21', 'admin');
INSERT INTO `activity` VALUES ('1149', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518406,\"discount\":\"12313\"}', '{\"updated_at\":1457518401,\"discount\":12313}', '2016-03-09 17:13:26', 'admin');
INSERT INTO `activity` VALUES ('1150', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518411,\"discount\":\"12313\"}', '{\"updated_at\":1457518406,\"discount\":12313}', '2016-03-09 17:13:31', 'admin');
INSERT INTO `activity` VALUES ('1151', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518416,\"discount\":\"12313\"}', '{\"updated_at\":1457518411,\"discount\":12313}', '2016-03-09 17:13:36', 'admin');
INSERT INTO `activity` VALUES ('1152', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518421,\"discount\":\"12313\"}', '{\"updated_at\":1457518416,\"discount\":12313}', '2016-03-09 17:13:41', 'admin');
INSERT INTO `activity` VALUES ('1153', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518426,\"discount\":\"12313\"}', '{\"updated_at\":1457518421,\"discount\":12313}', '2016-03-09 17:13:46', 'admin');
INSERT INTO `activity` VALUES ('1154', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518431,\"discount\":\"12313\"}', '{\"updated_at\":1457518426,\"discount\":12313}', '2016-03-09 17:13:51', 'admin');
INSERT INTO `activity` VALUES ('1155', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518436,\"discount\":\"12313\"}', '{\"updated_at\":1457518431,\"discount\":12313}', '2016-03-09 17:13:56', 'admin');
INSERT INTO `activity` VALUES ('1156', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518441,\"discount\":\"12313\"}', '{\"updated_at\":1457518436,\"discount\":12313}', '2016-03-09 17:14:01', 'admin');
INSERT INTO `activity` VALUES ('1157', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518446,\"discount\":\"12313\"}', '{\"updated_at\":1457518441,\"discount\":12313}', '2016-03-09 17:14:06', 'admin');
INSERT INTO `activity` VALUES ('1158', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518451,\"discount\":\"12313\"}', '{\"updated_at\":1457518446,\"discount\":12313}', '2016-03-09 17:14:11', 'admin');
INSERT INTO `activity` VALUES ('1159', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518456,\"discount\":\"12313\"}', '{\"updated_at\":1457518451,\"discount\":12313}', '2016-03-09 17:14:16', 'admin');
INSERT INTO `activity` VALUES ('1160', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518461,\"discount\":\"12313\"}', '{\"updated_at\":1457518456,\"discount\":12313}', '2016-03-09 17:14:21', 'admin');
INSERT INTO `activity` VALUES ('1161', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518466,\"discount\":\"12313\"}', '{\"updated_at\":1457518461,\"discount\":12313}', '2016-03-09 17:14:26', 'admin');
INSERT INTO `activity` VALUES ('1162', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518471,\"discount\":\"12313\"}', '{\"updated_at\":1457518466,\"discount\":12313}', '2016-03-09 17:14:31', 'admin');
INSERT INTO `activity` VALUES ('1163', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518476,\"discount\":\"12313\"}', '{\"updated_at\":1457518471,\"discount\":12313}', '2016-03-09 17:14:36', 'admin');
INSERT INTO `activity` VALUES ('1164', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518481,\"discount\":\"12313\"}', '{\"updated_at\":1457518476,\"discount\":12313}', '2016-03-09 17:14:41', 'admin');
INSERT INTO `activity` VALUES ('1165', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518486,\"discount\":\"12313\"}', '{\"updated_at\":1457518481,\"discount\":12313}', '2016-03-09 17:14:46', 'admin');
INSERT INTO `activity` VALUES ('1166', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518491,\"discount\":\"12313\"}', '{\"updated_at\":1457518486,\"discount\":12313}', '2016-03-09 17:14:51', 'admin');
INSERT INTO `activity` VALUES ('1167', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518496,\"discount\":\"12313\"}', '{\"updated_at\":1457518491,\"discount\":12313}', '2016-03-09 17:14:56', 'admin');
INSERT INTO `activity` VALUES ('1168', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518501,\"discount\":\"12313\"}', '{\"updated_at\":1457518496,\"discount\":12313}', '2016-03-09 17:15:01', 'admin');
INSERT INTO `activity` VALUES ('1169', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518506,\"discount\":\"12313\"}', '{\"updated_at\":1457518501,\"discount\":12313}', '2016-03-09 17:15:06', 'admin');
INSERT INTO `activity` VALUES ('1170', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518511,\"discount\":\"12313\"}', '{\"updated_at\":1457518506,\"discount\":12313}', '2016-03-09 17:15:11', 'admin');
INSERT INTO `activity` VALUES ('1171', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518516,\"discount\":\"12313\"}', '{\"updated_at\":1457518511,\"discount\":12313}', '2016-03-09 17:15:16', 'admin');
INSERT INTO `activity` VALUES ('1172', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518521,\"discount\":\"12313\"}', '{\"updated_at\":1457518516,\"discount\":12313}', '2016-03-09 17:15:21', 'admin');
INSERT INTO `activity` VALUES ('1173', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518526,\"discount\":\"12313\"}', '{\"updated_at\":1457518521,\"discount\":12313}', '2016-03-09 17:15:26', 'admin');
INSERT INTO `activity` VALUES ('1174', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518531,\"discount\":\"12313\"}', '{\"updated_at\":1457518526,\"discount\":12313}', '2016-03-09 17:15:31', 'admin');
INSERT INTO `activity` VALUES ('1175', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518536,\"discount\":\"12313\"}', '{\"updated_at\":1457518531,\"discount\":12313}', '2016-03-09 17:15:36', 'admin');
INSERT INTO `activity` VALUES ('1176', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518541,\"discount\":\"12313\"}', '{\"updated_at\":1457518536,\"discount\":12313}', '2016-03-09 17:15:41', 'admin');
INSERT INTO `activity` VALUES ('1177', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518546,\"discount\":\"12313\"}', '{\"updated_at\":1457518541,\"discount\":12313}', '2016-03-09 17:15:46', 'admin');
INSERT INTO `activity` VALUES ('1178', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518551,\"discount\":\"12313\"}', '{\"updated_at\":1457518546,\"discount\":12313}', '2016-03-09 17:15:51', 'admin');
INSERT INTO `activity` VALUES ('1179', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518556,\"discount\":\"12313\"}', '{\"updated_at\":1457518551,\"discount\":12313}', '2016-03-09 17:15:56', 'admin');
INSERT INTO `activity` VALUES ('1180', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518561,\"discount\":\"12313\"}', '{\"updated_at\":1457518556,\"discount\":12313}', '2016-03-09 17:16:01', 'admin');
INSERT INTO `activity` VALUES ('1181', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518566,\"discount\":\"12313\"}', '{\"updated_at\":1457518561,\"discount\":12313}', '2016-03-09 17:16:06', 'admin');
INSERT INTO `activity` VALUES ('1182', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518571,\"discount\":\"12313\"}', '{\"updated_at\":1457518566,\"discount\":12313}', '2016-03-09 17:16:11', 'admin');
INSERT INTO `activity` VALUES ('1183', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518576,\"discount\":\"12313\"}', '{\"updated_at\":1457518571,\"discount\":12313}', '2016-03-09 17:16:16', 'admin');
INSERT INTO `activity` VALUES ('1184', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518581,\"discount\":\"12313\"}', '{\"updated_at\":1457518576,\"discount\":12313}', '2016-03-09 17:16:21', 'admin');
INSERT INTO `activity` VALUES ('1185', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518586,\"discount\":\"12313\"}', '{\"updated_at\":1457518581,\"discount\":12313}', '2016-03-09 17:16:26', 'admin');
INSERT INTO `activity` VALUES ('1186', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518591,\"discount\":\"12313\"}', '{\"updated_at\":1457518586,\"discount\":12313}', '2016-03-09 17:16:31', 'admin');
INSERT INTO `activity` VALUES ('1187', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518596,\"discount\":\"12313\"}', '{\"updated_at\":1457518591,\"discount\":12313}', '2016-03-09 17:16:36', 'admin');
INSERT INTO `activity` VALUES ('1188', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518601,\"discount\":\"12313\"}', '{\"updated_at\":1457518596,\"discount\":12313}', '2016-03-09 17:16:41', 'admin');
INSERT INTO `activity` VALUES ('1189', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518606,\"discount\":\"12313\"}', '{\"updated_at\":1457518601,\"discount\":12313}', '2016-03-09 17:16:46', 'admin');
INSERT INTO `activity` VALUES ('1190', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518611,\"discount\":\"12313\"}', '{\"updated_at\":1457518606,\"discount\":12313}', '2016-03-09 17:16:51', 'admin');
INSERT INTO `activity` VALUES ('1191', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518616,\"discount\":\"12313\"}', '{\"updated_at\":1457518611,\"discount\":12313}', '2016-03-09 17:16:56', 'admin');
INSERT INTO `activity` VALUES ('1192', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518621,\"discount\":\"12313\"}', '{\"updated_at\":1457518616,\"discount\":12313}', '2016-03-09 17:17:01', 'admin');
INSERT INTO `activity` VALUES ('1193', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518626,\"discount\":\"12313\"}', '{\"updated_at\":1457518621,\"discount\":12313}', '2016-03-09 17:17:06', 'admin');
INSERT INTO `activity` VALUES ('1194', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518631,\"discount\":\"12313\"}', '{\"updated_at\":1457518626,\"discount\":12313}', '2016-03-09 17:17:11', 'admin');
INSERT INTO `activity` VALUES ('1195', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518636,\"discount\":\"12313\"}', '{\"updated_at\":1457518631,\"discount\":12313}', '2016-03-09 17:17:16', 'admin');
INSERT INTO `activity` VALUES ('1196', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518641,\"discount\":\"12313\"}', '{\"updated_at\":1457518636,\"discount\":12313}', '2016-03-09 17:17:21', 'admin');
INSERT INTO `activity` VALUES ('1197', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518646,\"discount\":\"12313\"}', '{\"updated_at\":1457518641,\"discount\":12313}', '2016-03-09 17:17:26', 'admin');
INSERT INTO `activity` VALUES ('1198', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518651,\"discount\":\"12313\"}', '{\"updated_at\":1457518646,\"discount\":12313}', '2016-03-09 17:17:31', 'admin');
INSERT INTO `activity` VALUES ('1199', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518656,\"discount\":\"12313\"}', '{\"updated_at\":1457518651,\"discount\":12313}', '2016-03-09 17:17:36', 'admin');
INSERT INTO `activity` VALUES ('1200', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518661,\"discount\":\"12313\"}', '{\"updated_at\":1457518656,\"discount\":12313}', '2016-03-09 17:17:41', 'admin');
INSERT INTO `activity` VALUES ('1201', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518666,\"discount\":\"12313\"}', '{\"updated_at\":1457518661,\"discount\":12313}', '2016-03-09 17:17:46', 'admin');
INSERT INTO `activity` VALUES ('1202', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518671,\"discount\":\"12313\"}', '{\"updated_at\":1457518666,\"discount\":12313}', '2016-03-09 17:17:51', 'admin');
INSERT INTO `activity` VALUES ('1203', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518676,\"discount\":\"12313\"}', '{\"updated_at\":1457518671,\"discount\":12313}', '2016-03-09 17:17:56', 'admin');
INSERT INTO `activity` VALUES ('1204', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518681,\"discount\":\"12313\"}', '{\"updated_at\":1457518676,\"discount\":12313}', '2016-03-09 17:18:01', 'admin');
INSERT INTO `activity` VALUES ('1205', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518686,\"discount\":\"12313\"}', '{\"updated_at\":1457518681,\"discount\":12313}', '2016-03-09 17:18:06', 'admin');
INSERT INTO `activity` VALUES ('1206', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518691,\"discount\":\"12313\"}', '{\"updated_at\":1457518686,\"discount\":12313}', '2016-03-09 17:18:11', 'admin');
INSERT INTO `activity` VALUES ('1207', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518696,\"discount\":\"12313\"}', '{\"updated_at\":1457518691,\"discount\":12313}', '2016-03-09 17:18:16', 'admin');
INSERT INTO `activity` VALUES ('1208', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518701,\"discount\":\"12313\"}', '{\"updated_at\":1457518696,\"discount\":12313}', '2016-03-09 17:18:21', 'admin');
INSERT INTO `activity` VALUES ('1209', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518706,\"discount\":\"12313\"}', '{\"updated_at\":1457518701,\"discount\":12313}', '2016-03-09 17:18:26', 'admin');
INSERT INTO `activity` VALUES ('1210', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518711,\"discount\":\"12313\"}', '{\"updated_at\":1457518706,\"discount\":12313}', '2016-03-09 17:18:31', 'admin');
INSERT INTO `activity` VALUES ('1211', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518716,\"discount\":\"12313\"}', '{\"updated_at\":1457518711,\"discount\":12313}', '2016-03-09 17:18:36', 'admin');
INSERT INTO `activity` VALUES ('1212', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518721,\"discount\":\"12313\"}', '{\"updated_at\":1457518716,\"discount\":12313}', '2016-03-09 17:18:41', 'admin');
INSERT INTO `activity` VALUES ('1213', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518726,\"discount\":\"12313\"}', '{\"updated_at\":1457518721,\"discount\":12313}', '2016-03-09 17:18:46', 'admin');
INSERT INTO `activity` VALUES ('1214', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518731,\"discount\":\"12313\"}', '{\"updated_at\":1457518726,\"discount\":12313}', '2016-03-09 17:18:51', 'admin');
INSERT INTO `activity` VALUES ('1215', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518736,\"discount\":\"12313\"}', '{\"updated_at\":1457518731,\"discount\":12313}', '2016-03-09 17:18:56', 'admin');
INSERT INTO `activity` VALUES ('1216', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518741,\"discount\":\"12313\"}', '{\"updated_at\":1457518736,\"discount\":12313}', '2016-03-09 17:19:01', 'admin');
INSERT INTO `activity` VALUES ('1217', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518746,\"discount\":\"12313\"}', '{\"updated_at\":1457518741,\"discount\":12313}', '2016-03-09 17:19:06', 'admin');
INSERT INTO `activity` VALUES ('1218', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518751,\"discount\":\"12313\"}', '{\"updated_at\":1457518746,\"discount\":12313}', '2016-03-09 17:19:11', 'admin');
INSERT INTO `activity` VALUES ('1219', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518756,\"discount\":\"12313\"}', '{\"updated_at\":1457518751,\"discount\":12313}', '2016-03-09 17:19:16', 'admin');
INSERT INTO `activity` VALUES ('1220', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518761,\"discount\":\"12313\"}', '{\"updated_at\":1457518756,\"discount\":12313}', '2016-03-09 17:19:21', 'admin');
INSERT INTO `activity` VALUES ('1221', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518766,\"discount\":\"12313\"}', '{\"updated_at\":1457518761,\"discount\":12313}', '2016-03-09 17:19:26', 'admin');
INSERT INTO `activity` VALUES ('1222', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518771,\"discount\":\"12313\"}', '{\"updated_at\":1457518766,\"discount\":12313}', '2016-03-09 17:19:31', 'admin');
INSERT INTO `activity` VALUES ('1223', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518776,\"discount\":\"12313\"}', '{\"updated_at\":1457518771,\"discount\":12313}', '2016-03-09 17:19:36', 'admin');
INSERT INTO `activity` VALUES ('1224', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518781,\"discount\":\"12313\"}', '{\"updated_at\":1457518776,\"discount\":12313}', '2016-03-09 17:19:41', 'admin');
INSERT INTO `activity` VALUES ('1225', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518786,\"discount\":\"12313\"}', '{\"updated_at\":1457518781,\"discount\":12313}', '2016-03-09 17:19:46', 'admin');
INSERT INTO `activity` VALUES ('1226', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518791,\"discount\":\"12313\"}', '{\"updated_at\":1457518786,\"discount\":12313}', '2016-03-09 17:19:51', 'admin');
INSERT INTO `activity` VALUES ('1227', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518796,\"discount\":\"12313\"}', '{\"updated_at\":1457518791,\"discount\":12313}', '2016-03-09 17:19:56', 'admin');
INSERT INTO `activity` VALUES ('1228', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518801,\"discount\":\"12313\"}', '{\"updated_at\":1457518796,\"discount\":12313}', '2016-03-09 17:20:01', 'admin');
INSERT INTO `activity` VALUES ('1229', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518806,\"discount\":\"12313\"}', '{\"updated_at\":1457518801,\"discount\":12313}', '2016-03-09 17:20:06', 'admin');
INSERT INTO `activity` VALUES ('1230', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518811,\"discount\":\"12313\"}', '{\"updated_at\":1457518806,\"discount\":12313}', '2016-03-09 17:20:11', 'admin');
INSERT INTO `activity` VALUES ('1231', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518816,\"discount\":\"12313\"}', '{\"updated_at\":1457518811,\"discount\":12313}', '2016-03-09 17:20:16', 'admin');
INSERT INTO `activity` VALUES ('1232', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518821,\"discount\":\"12313\"}', '{\"updated_at\":1457518816,\"discount\":12313}', '2016-03-09 17:20:21', 'admin');
INSERT INTO `activity` VALUES ('1233', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518826,\"discount\":\"12313\"}', '{\"updated_at\":1457518821,\"discount\":12313}', '2016-03-09 17:20:26', 'admin');
INSERT INTO `activity` VALUES ('1234', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518831,\"discount\":\"12313\"}', '{\"updated_at\":1457518826,\"discount\":12313}', '2016-03-09 17:20:31', 'admin');
INSERT INTO `activity` VALUES ('1235', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518836,\"discount\":\"12313\"}', '{\"updated_at\":1457518831,\"discount\":12313}', '2016-03-09 17:20:36', 'admin');
INSERT INTO `activity` VALUES ('1236', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518841,\"discount\":\"12313\"}', '{\"updated_at\":1457518836,\"discount\":12313}', '2016-03-09 17:20:41', 'admin');
INSERT INTO `activity` VALUES ('1237', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518846,\"discount\":\"12313\"}', '{\"updated_at\":1457518841,\"discount\":12313}', '2016-03-09 17:20:46', 'admin');
INSERT INTO `activity` VALUES ('1238', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518851,\"discount\":\"12313\"}', '{\"updated_at\":1457518846,\"discount\":12313}', '2016-03-09 17:20:51', 'admin');
INSERT INTO `activity` VALUES ('1239', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518856,\"discount\":\"12313\"}', '{\"updated_at\":1457518851,\"discount\":12313}', '2016-03-09 17:20:56', 'admin');
INSERT INTO `activity` VALUES ('1240', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518861,\"discount\":\"12313\"}', '{\"updated_at\":1457518856,\"discount\":12313}', '2016-03-09 17:21:01', 'admin');
INSERT INTO `activity` VALUES ('1241', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518866,\"discount\":\"12313\"}', '{\"updated_at\":1457518861,\"discount\":12313}', '2016-03-09 17:21:06', 'admin');
INSERT INTO `activity` VALUES ('1242', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518871,\"discount\":\"12313\"}', '{\"updated_at\":1457518866,\"discount\":12313}', '2016-03-09 17:21:11', 'admin');
INSERT INTO `activity` VALUES ('1243', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518876,\"discount\":\"12313\"}', '{\"updated_at\":1457518871,\"discount\":12313}', '2016-03-09 17:21:16', 'admin');
INSERT INTO `activity` VALUES ('1244', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518881,\"discount\":\"12313\"}', '{\"updated_at\":1457518876,\"discount\":12313}', '2016-03-09 17:21:21', 'admin');
INSERT INTO `activity` VALUES ('1245', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518886,\"discount\":\"12313\"}', '{\"updated_at\":1457518881,\"discount\":12313}', '2016-03-09 17:21:26', 'admin');
INSERT INTO `activity` VALUES ('1246', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518891,\"discount\":\"12313\"}', '{\"updated_at\":1457518886,\"discount\":12313}', '2016-03-09 17:21:31', 'admin');
INSERT INTO `activity` VALUES ('1247', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518896,\"discount\":\"12313\"}', '{\"updated_at\":1457518891,\"discount\":12313}', '2016-03-09 17:21:36', 'admin');
INSERT INTO `activity` VALUES ('1248', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518900,\"discount\":\"12313\"}', '{\"updated_at\":1457518896,\"discount\":12313}', '2016-03-09 17:21:40', 'admin');
INSERT INTO `activity` VALUES ('1249', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518905,\"discount\":\"12313\"}', '{\"updated_at\":1457518900,\"discount\":12313}', '2016-03-09 17:21:45', 'admin');
INSERT INTO `activity` VALUES ('1250', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518911,\"discount\":\"12313\"}', '{\"updated_at\":1457518905,\"discount\":12313}', '2016-03-09 17:21:51', 'admin');
INSERT INTO `activity` VALUES ('1251', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518916,\"discount\":\"12313\"}', '{\"updated_at\":1457518911,\"discount\":12313}', '2016-03-09 17:21:56', 'admin');
INSERT INTO `activity` VALUES ('1252', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518921,\"discount\":\"12313\"}', '{\"updated_at\":1457518916,\"discount\":12313}', '2016-03-09 17:22:01', 'admin');
INSERT INTO `activity` VALUES ('1253', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518923,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518921,\"customer_id\":5,\"discount\":12313}', '2016-03-09 17:22:03', 'admin');
INSERT INTO `activity` VALUES ('1254', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518927,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518923,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:07', 'admin');
INSERT INTO `activity` VALUES ('1255', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518931,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518927,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:11', 'admin');
INSERT INTO `activity` VALUES ('1256', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518936,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518931,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:16', 'admin');
INSERT INTO `activity` VALUES ('1257', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518941,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518936,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:21', 'admin');
INSERT INTO `activity` VALUES ('1258', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518946,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518941,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:27', 'admin');
INSERT INTO `activity` VALUES ('1259', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518951,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518946,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:31', 'admin');
INSERT INTO `activity` VALUES ('1260', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518956,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518951,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:36', 'admin');
INSERT INTO `activity` VALUES ('1261', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518961,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518956,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:41', 'admin');
INSERT INTO `activity` VALUES ('1262', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518966,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518961,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:46', 'admin');
INSERT INTO `activity` VALUES ('1263', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518971,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518966,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:51', 'admin');
INSERT INTO `activity` VALUES ('1264', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518976,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518971,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:22:56', 'admin');
INSERT INTO `activity` VALUES ('1265', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518981,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518976,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:23:01', 'admin');
INSERT INTO `activity` VALUES ('1266', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518986,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518981,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:23:06', 'admin');
INSERT INTO `activity` VALUES ('1267', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518991,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518986,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:23:11', 'admin');
INSERT INTO `activity` VALUES ('1268', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457518996,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518991,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:23:16', 'admin');
INSERT INTO `activity` VALUES ('1269', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519001,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457518996,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:23:21', 'admin');
INSERT INTO `activity` VALUES ('1270', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519006,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457519001,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:23:26', 'admin');
INSERT INTO `activity` VALUES ('1271', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519011,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457519006,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:23:31', 'admin');
INSERT INTO `activity` VALUES ('1272', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519016,\"customer_id\":\"1\",\"discount\":\"12313\"}', '{\"updated_at\":1457519011,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:23:36', 'admin');
INSERT INTO `activity` VALUES ('1273', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519026,\"discount\":\"12313\"}', '{\"updated_at\":1457519016,\"discount\":12313}', '2016-03-09 17:23:46', 'admin');
INSERT INTO `activity` VALUES ('1274', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519027,\"customer_id\":\"4\",\"discount\":\"12313\"}', '{\"updated_at\":1457519026,\"customer_id\":1,\"discount\":12313}', '2016-03-09 17:23:48', 'admin');
INSERT INTO `activity` VALUES ('1275', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519031,\"customer_id\":\"4\",\"discount\":\"12313\"}', '{\"updated_at\":1457519027,\"customer_id\":4,\"discount\":12313}', '2016-03-09 17:23:51', 'admin');
INSERT INTO `activity` VALUES ('1276', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519036,\"customer_id\":\"4\",\"discount\":\"12313\"}', '{\"updated_at\":1457519031,\"customer_id\":4,\"discount\":12313}', '2016-03-09 17:23:56', 'admin');
INSERT INTO `activity` VALUES ('1277', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519041,\"customer_id\":\"4\",\"discount\":\"12313\"}', '{\"updated_at\":1457519036,\"customer_id\":4,\"discount\":12313}', '2016-03-09 17:24:01', 'admin');
INSERT INTO `activity` VALUES ('1278', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519046,\"customer_id\":\"4\",\"discount\":\"12313\"}', '{\"updated_at\":1457519041,\"customer_id\":4,\"discount\":12313}', '2016-03-09 17:24:06', 'admin');
INSERT INTO `activity` VALUES ('1279', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519051,\"customer_id\":\"4\",\"discount\":\"12313\"}', '{\"updated_at\":1457519046,\"customer_id\":4,\"discount\":12313}', '2016-03-09 17:24:11', 'admin');
INSERT INTO `activity` VALUES ('1280', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519056,\"customer_id\":\"4\",\"discount\":\"12313\"}', '{\"updated_at\":1457519051,\"customer_id\":4,\"discount\":12313}', '2016-03-09 17:24:16', 'admin');
INSERT INTO `activity` VALUES ('1281', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519061,\"customer_id\":\"4\",\"discount\":\"12313\"}', '{\"updated_at\":1457519056,\"customer_id\":4,\"discount\":12313}', '2016-03-09 17:24:21', 'admin');
INSERT INTO `activity` VALUES ('1282', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519066,\"customer_id\":\"4\",\"discount\":\"12313\"}', '{\"updated_at\":1457519061,\"customer_id\":4,\"discount\":12313}', '2016-03-09 17:24:26', 'admin');
INSERT INTO `activity` VALUES ('1283', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519076,\"discount\":\"12313\"}', '{\"updated_at\":1457519066,\"discount\":12313}', '2016-03-09 17:24:36', 'admin');
INSERT INTO `activity` VALUES ('1284', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519082,\"discount\":\"12313\"}', '{\"updated_at\":1457519076,\"discount\":12313}', '2016-03-09 17:24:42', 'admin');
INSERT INTO `activity` VALUES ('1285', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457519087,\"discount\":\"12313\"}', '{\"updated_at\":1457519082,\"discount\":12313}', '2016-03-09 17:24:47', 'admin');
INSERT INTO `activity` VALUES ('1286', 'U', 'common\\models\\Order', '6', '[]', '{\"code\":null}', '2016-03-10 16:14:06', null);
INSERT INTO `activity` VALUES ('1287', 'N', 'common\\models\\Order', '6', null, null, '2016-03-10 16:14:06', null);
INSERT INTO `activity` VALUES ('1288', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601252,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"discount\":\"\"}', '{\"updated_at\":1457601245,\"sale_date\":\"2016-03-10 16:14:05\",\"note\":null,\"discount\":0}', '2016-03-10 16:14:13', null);
INSERT INTO `activity` VALUES ('1289', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601257,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601252,\"sale_date\":\"2016-03-10 16:14:12\",\"discount\":null}', '2016-03-10 16:14:17', null);
INSERT INTO `activity` VALUES ('1290', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601263,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601257,\"sale_date\":\"2016-03-10 16:14:17\",\"discount\":null}', '2016-03-10 16:14:23', null);
INSERT INTO `activity` VALUES ('1291', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601268,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601263,\"sale_date\":\"2016-03-10 16:14:23\",\"discount\":null}', '2016-03-10 16:14:28', null);
INSERT INTO `activity` VALUES ('1292', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601273,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601268,\"sale_date\":\"2016-03-10 16:14:28\",\"discount\":null}', '2016-03-10 16:14:33', null);
INSERT INTO `activity` VALUES ('1293', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601278,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601273,\"sale_date\":\"2016-03-10 16:14:33\",\"discount\":null}', '2016-03-10 16:14:38', null);
INSERT INTO `activity` VALUES ('1294', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601283,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601278,\"sale_date\":\"2016-03-10 16:14:38\",\"discount\":null}', '2016-03-10 16:14:43', null);
INSERT INTO `activity` VALUES ('1295', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601288,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601283,\"sale_date\":\"2016-03-10 16:14:43\",\"discount\":null}', '2016-03-10 16:14:48', null);
INSERT INTO `activity` VALUES ('1296', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601293,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601288,\"sale_date\":\"2016-03-10 16:14:48\",\"discount\":null}', '2016-03-10 16:14:53', null);
INSERT INTO `activity` VALUES ('1297', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601298,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601293,\"sale_date\":\"2016-03-10 16:14:53\",\"discount\":null}', '2016-03-10 16:14:58', null);
INSERT INTO `activity` VALUES ('1298', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601303,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601298,\"sale_date\":\"2016-03-10 16:14:58\",\"discount\":null}', '2016-03-10 16:15:03', null);
INSERT INTO `activity` VALUES ('1299', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601308,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601303,\"sale_date\":\"2016-03-10 16:15:03\",\"discount\":null}', '2016-03-10 16:15:08', null);
INSERT INTO `activity` VALUES ('1300', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601313,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601308,\"sale_date\":\"2016-03-10 16:15:08\",\"discount\":null}', '2016-03-10 16:15:13', null);
INSERT INTO `activity` VALUES ('1301', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601318,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601313,\"sale_date\":\"2016-03-10 16:15:13\",\"discount\":null}', '2016-03-10 16:15:18', null);
INSERT INTO `activity` VALUES ('1302', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601323,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601318,\"sale_date\":\"2016-03-10 16:15:18\",\"discount\":null}', '2016-03-10 16:15:23', null);
INSERT INTO `activity` VALUES ('1303', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601328,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601323,\"sale_date\":\"2016-03-10 16:15:23\",\"discount\":null}', '2016-03-10 16:15:28', null);
INSERT INTO `activity` VALUES ('1304', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601333,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601328,\"sale_date\":\"2016-03-10 16:15:28\",\"discount\":null}', '2016-03-10 16:15:33', null);
INSERT INTO `activity` VALUES ('1305', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601338,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601333,\"sale_date\":\"2016-03-10 16:15:33\",\"discount\":null}', '2016-03-10 16:15:38', null);
INSERT INTO `activity` VALUES ('1306', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601343,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601338,\"sale_date\":\"2016-03-10 16:15:38\",\"discount\":null}', '2016-03-10 16:15:43', null);
INSERT INTO `activity` VALUES ('1307', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601348,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601343,\"sale_date\":\"2016-03-10 16:15:43\",\"discount\":null}', '2016-03-10 16:15:48', null);
INSERT INTO `activity` VALUES ('1308', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601353,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601348,\"sale_date\":\"2016-03-10 16:15:48\",\"discount\":null}', '2016-03-10 16:15:53', null);
INSERT INTO `activity` VALUES ('1309', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601358,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601353,\"sale_date\":\"2016-03-10 16:15:53\",\"discount\":null}', '2016-03-10 16:15:58', null);
INSERT INTO `activity` VALUES ('1310', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601363,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601358,\"sale_date\":\"2016-03-10 16:15:58\",\"discount\":null}', '2016-03-10 16:16:03', null);
INSERT INTO `activity` VALUES ('1311', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601368,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601363,\"sale_date\":\"2016-03-10 16:16:03\",\"discount\":null}', '2016-03-10 16:16:08', null);
INSERT INTO `activity` VALUES ('1312', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601373,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601368,\"sale_date\":\"2016-03-10 16:16:08\",\"discount\":null}', '2016-03-10 16:16:13', null);
INSERT INTO `activity` VALUES ('1313', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601378,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601373,\"sale_date\":\"2016-03-10 16:16:13\",\"discount\":null}', '2016-03-10 16:16:18', null);
INSERT INTO `activity` VALUES ('1314', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601383,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601378,\"sale_date\":\"2016-03-10 16:16:18\",\"discount\":null}', '2016-03-10 16:16:23', null);
INSERT INTO `activity` VALUES ('1315', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601388,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601383,\"sale_date\":\"2016-03-10 16:16:23\",\"discount\":null}', '2016-03-10 16:16:28', null);
INSERT INTO `activity` VALUES ('1316', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601393,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601388,\"sale_date\":\"2016-03-10 16:16:28\",\"discount\":null}', '2016-03-10 16:16:33', null);
INSERT INTO `activity` VALUES ('1317', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601398,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601393,\"sale_date\":\"2016-03-10 16:16:33\",\"discount\":null}', '2016-03-10 16:16:38', null);
INSERT INTO `activity` VALUES ('1318', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601403,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601398,\"sale_date\":\"2016-03-10 16:16:38\",\"discount\":null}', '2016-03-10 16:16:43', null);
INSERT INTO `activity` VALUES ('1319', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601408,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601403,\"sale_date\":\"2016-03-10 16:16:43\",\"discount\":null}', '2016-03-10 16:16:48', null);
INSERT INTO `activity` VALUES ('1320', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601413,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601408,\"sale_date\":\"2016-03-10 16:16:48\",\"discount\":null}', '2016-03-10 16:16:53', null);
INSERT INTO `activity` VALUES ('1321', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601418,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601413,\"sale_date\":\"2016-03-10 16:16:53\",\"discount\":null}', '2016-03-10 16:16:58', null);
INSERT INTO `activity` VALUES ('1322', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601423,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601418,\"sale_date\":\"2016-03-10 16:16:58\",\"discount\":null}', '2016-03-10 16:17:03', null);
INSERT INTO `activity` VALUES ('1323', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601428,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601423,\"sale_date\":\"2016-03-10 16:17:03\",\"discount\":null}', '2016-03-10 16:17:08', null);
INSERT INTO `activity` VALUES ('1324', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601433,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601428,\"sale_date\":\"2016-03-10 16:17:08\",\"discount\":null}', '2016-03-10 16:17:13', null);
INSERT INTO `activity` VALUES ('1325', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601438,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601433,\"sale_date\":\"2016-03-10 16:17:13\",\"discount\":null}', '2016-03-10 16:17:18', null);
INSERT INTO `activity` VALUES ('1326', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601443,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601438,\"sale_date\":\"2016-03-10 16:17:18\",\"discount\":null}', '2016-03-10 16:17:23', null);
INSERT INTO `activity` VALUES ('1327', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601448,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601443,\"sale_date\":\"2016-03-10 16:17:23\",\"discount\":null}', '2016-03-10 16:17:28', null);
INSERT INTO `activity` VALUES ('1328', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601453,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601448,\"sale_date\":\"2016-03-10 16:17:28\",\"discount\":null}', '2016-03-10 16:17:33', null);
INSERT INTO `activity` VALUES ('1329', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601458,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601453,\"sale_date\":\"2016-03-10 16:17:33\",\"discount\":null}', '2016-03-10 16:17:38', null);
INSERT INTO `activity` VALUES ('1330', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601463,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601458,\"sale_date\":\"2016-03-10 16:17:38\",\"discount\":null}', '2016-03-10 16:17:43', null);
INSERT INTO `activity` VALUES ('1331', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601467,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601463,\"sale_date\":\"2016-03-10 16:17:43\",\"discount\":null}', '2016-03-10 16:17:47', null);
INSERT INTO `activity` VALUES ('1332', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601468,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]}}', '{\"updated_at\":1457601467,\"sale_date\":\"2016-03-10 16:17:47\",\"customer_id\":null,\"discount\":null}', '2016-03-10 16:17:48', null);
INSERT INTO `activity` VALUES ('1333', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601472,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601468,\"sale_date\":\"2016-03-10 16:17:48\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:17:52', null);
INSERT INTO `activity` VALUES ('1334', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601477,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601472,\"sale_date\":\"2016-03-10 16:17:52\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:17:57', null);
INSERT INTO `activity` VALUES ('1335', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601482,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601477,\"sale_date\":\"2016-03-10 16:17:57\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:02', null);
INSERT INTO `activity` VALUES ('1336', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601487,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601482,\"sale_date\":\"2016-03-10 16:18:02\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:07', null);
INSERT INTO `activity` VALUES ('1337', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601492,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601487,\"sale_date\":\"2016-03-10 16:18:07\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:12', null);
INSERT INTO `activity` VALUES ('1338', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601497,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601492,\"sale_date\":\"2016-03-10 16:18:12\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:17', null);
INSERT INTO `activity` VALUES ('1339', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601502,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601497,\"sale_date\":\"2016-03-10 16:18:17\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:22', null);
INSERT INTO `activity` VALUES ('1340', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601507,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601502,\"sale_date\":\"2016-03-10 16:18:22\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:27', null);
INSERT INTO `activity` VALUES ('1341', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601512,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601507,\"sale_date\":\"2016-03-10 16:18:27\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:32', null);
INSERT INTO `activity` VALUES ('1342', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601517,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601512,\"sale_date\":\"2016-03-10 16:18:32\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:37', null);
INSERT INTO `activity` VALUES ('1343', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601522,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601517,\"sale_date\":\"2016-03-10 16:18:37\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:43', null);
INSERT INTO `activity` VALUES ('1344', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601527,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601522,\"sale_date\":\"2016-03-10 16:18:42\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:48', null);
INSERT INTO `activity` VALUES ('1345', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601532,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601527,\"sale_date\":\"2016-03-10 16:18:47\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:52', null);
INSERT INTO `activity` VALUES ('1346', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601537,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601532,\"sale_date\":\"2016-03-10 16:18:52\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:18:57', null);
INSERT INTO `activity` VALUES ('1347', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601542,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601537,\"sale_date\":\"2016-03-10 16:18:57\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:02', null);
INSERT INTO `activity` VALUES ('1348', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601548,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601542,\"sale_date\":\"2016-03-10 16:19:02\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:08', null);
INSERT INTO `activity` VALUES ('1349', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601552,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601548,\"sale_date\":\"2016-03-10 16:19:08\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:12', null);
INSERT INTO `activity` VALUES ('1350', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601558,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601552,\"sale_date\":\"2016-03-10 16:19:12\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:18', null);
INSERT INTO `activity` VALUES ('1351', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601562,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601558,\"sale_date\":\"2016-03-10 16:19:18\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:22', null);
INSERT INTO `activity` VALUES ('1352', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601568,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601562,\"sale_date\":\"2016-03-10 16:19:22\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:28', null);
INSERT INTO `activity` VALUES ('1353', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601572,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601568,\"sale_date\":\"2016-03-10 16:19:28\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:33', null);
INSERT INTO `activity` VALUES ('1354', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601577,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601572,\"sale_date\":\"2016-03-10 16:19:32\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:37', null);
INSERT INTO `activity` VALUES ('1355', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601582,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601577,\"sale_date\":\"2016-03-10 16:19:37\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:42', null);
INSERT INTO `activity` VALUES ('1356', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601587,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601582,\"sale_date\":\"2016-03-10 16:19:42\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:47', null);
INSERT INTO `activity` VALUES ('1357', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601592,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601587,\"sale_date\":\"2016-03-10 16:19:47\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:52', null);
INSERT INTO `activity` VALUES ('1358', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601597,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601592,\"sale_date\":\"2016-03-10 16:19:52\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:19:57', null);
INSERT INTO `activity` VALUES ('1359', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601602,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601597,\"sale_date\":\"2016-03-10 16:19:57\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:02', null);
INSERT INTO `activity` VALUES ('1360', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601607,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601602,\"sale_date\":\"2016-03-10 16:20:02\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:07', null);
INSERT INTO `activity` VALUES ('1361', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601612,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601607,\"sale_date\":\"2016-03-10 16:20:07\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:12', null);
INSERT INTO `activity` VALUES ('1362', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601617,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601612,\"sale_date\":\"2016-03-10 16:20:12\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:17', null);
INSERT INTO `activity` VALUES ('1363', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601622,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601617,\"sale_date\":\"2016-03-10 16:20:17\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:22', null);
INSERT INTO `activity` VALUES ('1364', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601627,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601622,\"sale_date\":\"2016-03-10 16:20:22\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:27', null);
INSERT INTO `activity` VALUES ('1365', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601632,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601627,\"sale_date\":\"2016-03-10 16:20:27\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:32', null);
INSERT INTO `activity` VALUES ('1366', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601638,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601632,\"sale_date\":\"2016-03-10 16:20:32\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:38', null);
INSERT INTO `activity` VALUES ('1367', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601643,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601638,\"sale_date\":\"2016-03-10 16:20:38\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:43', null);
INSERT INTO `activity` VALUES ('1368', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601648,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601643,\"sale_date\":\"2016-03-10 16:20:43\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:48', null);
INSERT INTO `activity` VALUES ('1369', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601653,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601648,\"sale_date\":\"2016-03-10 16:20:48\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:53', null);
INSERT INTO `activity` VALUES ('1370', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601658,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601653,\"sale_date\":\"2016-03-10 16:20:53\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:20:58', null);
INSERT INTO `activity` VALUES ('1371', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601663,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601658,\"sale_date\":\"2016-03-10 16:20:58\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:03', null);
INSERT INTO `activity` VALUES ('1372', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601668,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601663,\"sale_date\":\"2016-03-10 16:21:03\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:08', null);
INSERT INTO `activity` VALUES ('1373', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601673,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601668,\"sale_date\":\"2016-03-10 16:21:08\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:13', null);
INSERT INTO `activity` VALUES ('1374', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601678,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601673,\"sale_date\":\"2016-03-10 16:21:13\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:18', null);
INSERT INTO `activity` VALUES ('1375', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601683,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601678,\"sale_date\":\"2016-03-10 16:21:18\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:23', null);
INSERT INTO `activity` VALUES ('1376', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601688,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601683,\"sale_date\":\"2016-03-10 16:21:23\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:28', null);
INSERT INTO `activity` VALUES ('1377', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601693,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601688,\"sale_date\":\"2016-03-10 16:21:28\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:33', null);
INSERT INTO `activity` VALUES ('1378', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601698,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601693,\"sale_date\":\"2016-03-10 16:21:33\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:38', null);
INSERT INTO `activity` VALUES ('1379', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601703,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601698,\"sale_date\":\"2016-03-10 16:21:38\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:43', null);
INSERT INTO `activity` VALUES ('1380', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601708,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601703,\"sale_date\":\"2016-03-10 16:21:43\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:48', null);
INSERT INTO `activity` VALUES ('1381', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601713,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601708,\"sale_date\":\"2016-03-10 16:21:48\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:53', null);
INSERT INTO `activity` VALUES ('1382', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601718,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601713,\"sale_date\":\"2016-03-10 16:21:53\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:21:58', null);
INSERT INTO `activity` VALUES ('1383', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601723,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601718,\"sale_date\":\"2016-03-10 16:21:58\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:22:03', null);
INSERT INTO `activity` VALUES ('1384', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601728,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601723,\"sale_date\":\"2016-03-10 16:22:03\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:22:08', null);
INSERT INTO `activity` VALUES ('1385', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601733,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601728,\"sale_date\":\"2016-03-10 16:22:08\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:22:13', null);
INSERT INTO `activity` VALUES ('1386', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601738,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601733,\"sale_date\":\"2016-03-10 16:22:13\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:22:18', null);
INSERT INTO `activity` VALUES ('1387', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601743,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601738,\"sale_date\":\"2016-03-10 16:22:18\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:22:23', null);
INSERT INTO `activity` VALUES ('1388', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601748,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601743,\"sale_date\":\"2016-03-10 16:22:23\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:22:28', null);
INSERT INTO `activity` VALUES ('1389', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601753,\"sale_date\":{\"expression\":\"NOW()\",\"params\":[]},\"customer_id\":\"1\"}', '{\"updated_at\":1457601748,\"sale_date\":\"2016-03-10 16:22:28\",\"customer_id\":1,\"discount\":null}', '2016-03-10 16:22:33', null);
INSERT INTO `activity` VALUES ('1390', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601761}', '{\"updated_at\":1457601753,\"discount\":null}', '2016-03-10 16:22:41', null);
INSERT INTO `activity` VALUES ('1391', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601766}', '{\"updated_at\":1457601761,\"discount\":null}', '2016-03-10 16:22:46', null);
INSERT INTO `activity` VALUES ('1392', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601771}', '{\"updated_at\":1457601766,\"discount\":null}', '2016-03-10 16:22:51', null);
INSERT INTO `activity` VALUES ('1393', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601776}', '{\"updated_at\":1457601771,\"discount\":null}', '2016-03-10 16:22:56', null);
INSERT INTO `activity` VALUES ('1394', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601781}', '{\"updated_at\":1457601776,\"discount\":null}', '2016-03-10 16:23:01', null);
INSERT INTO `activity` VALUES ('1395', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601786}', '{\"updated_at\":1457601781,\"discount\":null}', '2016-03-10 16:23:06', null);
INSERT INTO `activity` VALUES ('1396', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601791}', '{\"updated_at\":1457601786,\"discount\":null}', '2016-03-10 16:23:11', null);
INSERT INTO `activity` VALUES ('1397', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601796}', '{\"updated_at\":1457601791,\"discount\":null}', '2016-03-10 16:23:16', null);
INSERT INTO `activity` VALUES ('1398', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601801}', '{\"updated_at\":1457601796,\"discount\":null}', '2016-03-10 16:23:21', null);
INSERT INTO `activity` VALUES ('1399', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601810}', '{\"updated_at\":1457601801,\"discount\":null}', '2016-03-10 16:23:30', null);
INSERT INTO `activity` VALUES ('1400', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601815}', '{\"updated_at\":1457601810,\"discount\":null}', '2016-03-10 16:23:35', null);
INSERT INTO `activity` VALUES ('1401', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601825}', '{\"updated_at\":1457601815,\"discount\":null}', '2016-03-10 16:23:45', null);
INSERT INTO `activity` VALUES ('1402', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601830}', '{\"updated_at\":1457601825,\"discount\":null}', '2016-03-10 16:23:50', null);
INSERT INTO `activity` VALUES ('1403', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601835}', '{\"updated_at\":1457601830,\"discount\":null}', '2016-03-10 16:23:55', null);
INSERT INTO `activity` VALUES ('1404', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601842}', '{\"updated_at\":1457601835,\"discount\":null}', '2016-03-10 16:24:02', null);
INSERT INTO `activity` VALUES ('1405', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601847}', '{\"updated_at\":1457601842,\"discount\":null}', '2016-03-10 16:24:07', null);
INSERT INTO `activity` VALUES ('1406', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601852}', '{\"updated_at\":1457601847,\"discount\":null}', '2016-03-10 16:24:12', null);
INSERT INTO `activity` VALUES ('1407', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601857}', '{\"updated_at\":1457601852,\"discount\":null}', '2016-03-10 16:24:17', null);
INSERT INTO `activity` VALUES ('1408', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601862}', '{\"updated_at\":1457601857,\"discount\":null}', '2016-03-10 16:24:22', null);
INSERT INTO `activity` VALUES ('1409', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601867}', '{\"updated_at\":1457601862,\"discount\":null}', '2016-03-10 16:24:27', null);
INSERT INTO `activity` VALUES ('1410', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601872}', '{\"updated_at\":1457601867,\"discount\":null}', '2016-03-10 16:24:32', null);
INSERT INTO `activity` VALUES ('1411', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601877}', '{\"updated_at\":1457601872,\"discount\":null}', '2016-03-10 16:24:37', null);
INSERT INTO `activity` VALUES ('1412', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601882}', '{\"updated_at\":1457601877,\"discount\":null}', '2016-03-10 16:24:42', null);
INSERT INTO `activity` VALUES ('1413', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601887}', '{\"updated_at\":1457601882,\"discount\":null}', '2016-03-10 16:24:47', null);
INSERT INTO `activity` VALUES ('1414', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601892}', '{\"updated_at\":1457601887,\"discount\":null}', '2016-03-10 16:24:52', null);
INSERT INTO `activity` VALUES ('1415', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601897}', '{\"updated_at\":1457601892,\"discount\":null}', '2016-03-10 16:24:57', null);
INSERT INTO `activity` VALUES ('1416', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601902}', '{\"updated_at\":1457601897,\"discount\":null}', '2016-03-10 16:25:02', null);
INSERT INTO `activity` VALUES ('1417', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601907}', '{\"updated_at\":1457601902,\"discount\":null}', '2016-03-10 16:25:07', null);
INSERT INTO `activity` VALUES ('1418', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601912}', '{\"updated_at\":1457601907,\"discount\":null}', '2016-03-10 16:25:12', null);
INSERT INTO `activity` VALUES ('1419', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601917}', '{\"updated_at\":1457601912,\"discount\":null}', '2016-03-10 16:25:17', null);
INSERT INTO `activity` VALUES ('1420', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601922}', '{\"updated_at\":1457601917,\"discount\":null}', '2016-03-10 16:25:22', null);
INSERT INTO `activity` VALUES ('1421', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601927}', '{\"updated_at\":1457601922,\"discount\":null}', '2016-03-10 16:25:27', null);
INSERT INTO `activity` VALUES ('1422', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601932}', '{\"updated_at\":1457601927,\"discount\":null}', '2016-03-10 16:25:32', null);
INSERT INTO `activity` VALUES ('1423', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601937}', '{\"updated_at\":1457601932,\"discount\":null}', '2016-03-10 16:25:37', null);
INSERT INTO `activity` VALUES ('1424', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601942}', '{\"updated_at\":1457601937,\"discount\":null}', '2016-03-10 16:25:42', null);
INSERT INTO `activity` VALUES ('1425', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601947}', '{\"updated_at\":1457601942,\"discount\":null}', '2016-03-10 16:25:47', null);
INSERT INTO `activity` VALUES ('1426', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601952}', '{\"updated_at\":1457601947,\"discount\":null}', '2016-03-10 16:25:52', null);
INSERT INTO `activity` VALUES ('1427', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601957}', '{\"updated_at\":1457601952,\"discount\":null}', '2016-03-10 16:25:57', null);
INSERT INTO `activity` VALUES ('1428', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601962}', '{\"updated_at\":1457601957,\"discount\":null}', '2016-03-10 16:26:02', null);
INSERT INTO `activity` VALUES ('1429', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601967}', '{\"updated_at\":1457601962,\"discount\":null}', '2016-03-10 16:26:07', null);
INSERT INTO `activity` VALUES ('1430', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601972}', '{\"updated_at\":1457601967,\"discount\":null}', '2016-03-10 16:26:12', null);
INSERT INTO `activity` VALUES ('1431', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601977}', '{\"updated_at\":1457601972,\"discount\":null}', '2016-03-10 16:26:17', null);
INSERT INTO `activity` VALUES ('1432', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601982}', '{\"updated_at\":1457601977,\"discount\":null}', '2016-03-10 16:26:22', null);
INSERT INTO `activity` VALUES ('1433', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601987}', '{\"updated_at\":1457601982,\"discount\":null}', '2016-03-10 16:26:27', null);
INSERT INTO `activity` VALUES ('1434', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601992}', '{\"updated_at\":1457601987,\"discount\":null}', '2016-03-10 16:26:32', null);
INSERT INTO `activity` VALUES ('1435', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457601997}', '{\"updated_at\":1457601992,\"discount\":null}', '2016-03-10 16:26:37', null);
INSERT INTO `activity` VALUES ('1436', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602002}', '{\"updated_at\":1457601997,\"discount\":null}', '2016-03-10 16:26:42', null);
INSERT INTO `activity` VALUES ('1437', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602007}', '{\"updated_at\":1457602002,\"discount\":null}', '2016-03-10 16:26:47', null);
INSERT INTO `activity` VALUES ('1438', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602012}', '{\"updated_at\":1457602007,\"discount\":null}', '2016-03-10 16:26:52', null);
INSERT INTO `activity` VALUES ('1439', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602017}', '{\"updated_at\":1457602012,\"discount\":null}', '2016-03-10 16:26:57', null);
INSERT INTO `activity` VALUES ('1440', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602022}', '{\"updated_at\":1457602017,\"discount\":null}', '2016-03-10 16:27:02', null);
INSERT INTO `activity` VALUES ('1441', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602027}', '{\"updated_at\":1457602022,\"discount\":null}', '2016-03-10 16:27:07', null);
INSERT INTO `activity` VALUES ('1442', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602032}', '{\"updated_at\":1457602027,\"discount\":null}', '2016-03-10 16:27:12', null);
INSERT INTO `activity` VALUES ('1443', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602037}', '{\"updated_at\":1457602032,\"discount\":null}', '2016-03-10 16:27:17', null);
INSERT INTO `activity` VALUES ('1444', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602042}', '{\"updated_at\":1457602037,\"discount\":null}', '2016-03-10 16:27:22', null);
INSERT INTO `activity` VALUES ('1445', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602047}', '{\"updated_at\":1457602042,\"discount\":null}', '2016-03-10 16:27:27', null);
INSERT INTO `activity` VALUES ('1446', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602052}', '{\"updated_at\":1457602047,\"discount\":null}', '2016-03-10 16:27:32', null);
INSERT INTO `activity` VALUES ('1447', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602057}', '{\"updated_at\":1457602052,\"discount\":null}', '2016-03-10 16:27:37', null);
INSERT INTO `activity` VALUES ('1448', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602062}', '{\"updated_at\":1457602057,\"discount\":null}', '2016-03-10 16:27:42', null);
INSERT INTO `activity` VALUES ('1449', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602067}', '{\"updated_at\":1457602062,\"discount\":null}', '2016-03-10 16:27:47', null);
INSERT INTO `activity` VALUES ('1450', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602072}', '{\"updated_at\":1457602067,\"discount\":null}', '2016-03-10 16:27:52', null);
INSERT INTO `activity` VALUES ('1451', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602077}', '{\"updated_at\":1457602072,\"discount\":null}', '2016-03-10 16:27:57', null);
INSERT INTO `activity` VALUES ('1452', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602082}', '{\"updated_at\":1457602077,\"discount\":null}', '2016-03-10 16:28:02', null);
INSERT INTO `activity` VALUES ('1453', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602087}', '{\"updated_at\":1457602082,\"discount\":null}', '2016-03-10 16:28:07', null);
INSERT INTO `activity` VALUES ('1454', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602092}', '{\"updated_at\":1457602087,\"discount\":null}', '2016-03-10 16:28:12', null);
INSERT INTO `activity` VALUES ('1455', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602097}', '{\"updated_at\":1457602092,\"discount\":null}', '2016-03-10 16:28:17', null);
INSERT INTO `activity` VALUES ('1456', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602102}', '{\"updated_at\":1457602097,\"discount\":null}', '2016-03-10 16:28:22', null);
INSERT INTO `activity` VALUES ('1457', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602107}', '{\"updated_at\":1457602102,\"discount\":null}', '2016-03-10 16:28:27', null);
INSERT INTO `activity` VALUES ('1458', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602112}', '{\"updated_at\":1457602107,\"discount\":null}', '2016-03-10 16:28:32', null);
INSERT INTO `activity` VALUES ('1459', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602117}', '{\"updated_at\":1457602112,\"discount\":null}', '2016-03-10 16:28:38', null);
INSERT INTO `activity` VALUES ('1460', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602122}', '{\"updated_at\":1457602117,\"discount\":null}', '2016-03-10 16:28:42', null);
INSERT INTO `activity` VALUES ('1461', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602128}', '{\"updated_at\":1457602122,\"discount\":null}', '2016-03-10 16:28:48', null);
INSERT INTO `activity` VALUES ('1462', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602133}', '{\"updated_at\":1457602128,\"discount\":null}', '2016-03-10 16:28:53', null);
INSERT INTO `activity` VALUES ('1463', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602138}', '{\"updated_at\":1457602133,\"discount\":null}', '2016-03-10 16:28:58', null);
INSERT INTO `activity` VALUES ('1464', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602143}', '{\"updated_at\":1457602138,\"discount\":null}', '2016-03-10 16:29:03', null);
INSERT INTO `activity` VALUES ('1465', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602148}', '{\"updated_at\":1457602143,\"discount\":null}', '2016-03-10 16:29:08', null);
INSERT INTO `activity` VALUES ('1466', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602153}', '{\"updated_at\":1457602148,\"discount\":null}', '2016-03-10 16:29:13', null);
INSERT INTO `activity` VALUES ('1467', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602158}', '{\"updated_at\":1457602153,\"discount\":null}', '2016-03-10 16:29:18', null);
INSERT INTO `activity` VALUES ('1468', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602163}', '{\"updated_at\":1457602158,\"discount\":null}', '2016-03-10 16:29:23', null);
INSERT INTO `activity` VALUES ('1469', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602168}', '{\"updated_at\":1457602163,\"discount\":null}', '2016-03-10 16:29:28', null);
INSERT INTO `activity` VALUES ('1470', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602173}', '{\"updated_at\":1457602168,\"discount\":null}', '2016-03-10 16:29:33', null);
INSERT INTO `activity` VALUES ('1471', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602178}', '{\"updated_at\":1457602173,\"discount\":null}', '2016-03-10 16:29:38', null);
INSERT INTO `activity` VALUES ('1472', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602183}', '{\"updated_at\":1457602178,\"discount\":null}', '2016-03-10 16:29:43', null);
INSERT INTO `activity` VALUES ('1473', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602188}', '{\"updated_at\":1457602183,\"discount\":null}', '2016-03-10 16:29:48', null);
INSERT INTO `activity` VALUES ('1474', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602193}', '{\"updated_at\":1457602188,\"discount\":null}', '2016-03-10 16:29:53', null);
INSERT INTO `activity` VALUES ('1475', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602198}', '{\"updated_at\":1457602193,\"discount\":null}', '2016-03-10 16:29:58', null);
INSERT INTO `activity` VALUES ('1476', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602203}', '{\"updated_at\":1457602198,\"discount\":null}', '2016-03-10 16:30:03', null);
INSERT INTO `activity` VALUES ('1477', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602208}', '{\"updated_at\":1457602203,\"discount\":null}', '2016-03-10 16:30:08', null);
INSERT INTO `activity` VALUES ('1478', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602213}', '{\"updated_at\":1457602208,\"discount\":null}', '2016-03-10 16:30:13', null);
INSERT INTO `activity` VALUES ('1479', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602218}', '{\"updated_at\":1457602213,\"discount\":null}', '2016-03-10 16:30:18', null);
INSERT INTO `activity` VALUES ('1480', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602223}', '{\"updated_at\":1457602218,\"discount\":null}', '2016-03-10 16:30:23', null);
INSERT INTO `activity` VALUES ('1481', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602228}', '{\"updated_at\":1457602223,\"discount\":null}', '2016-03-10 16:30:28', null);
INSERT INTO `activity` VALUES ('1482', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602233}', '{\"updated_at\":1457602228,\"discount\":null}', '2016-03-10 16:30:33', null);
INSERT INTO `activity` VALUES ('1483', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602238}', '{\"updated_at\":1457602233,\"discount\":null}', '2016-03-10 16:30:38', null);
INSERT INTO `activity` VALUES ('1484', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602249}', '{\"updated_at\":1457602238,\"discount\":null}', '2016-03-10 16:30:49', null);
INSERT INTO `activity` VALUES ('1485', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602254}', '{\"updated_at\":1457602249,\"discount\":null}', '2016-03-10 16:30:54', null);
INSERT INTO `activity` VALUES ('1486', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602259}', '{\"updated_at\":1457602254,\"discount\":null}', '2016-03-10 16:30:59', null);
INSERT INTO `activity` VALUES ('1487', 'U', 'common\\models\\Order', '6', '{\"updated_at\":1457602264}', '{\"updated_at\":1457602259,\"discount\":null}', '2016-03-10 16:31:04', null);
INSERT INTO `activity` VALUES ('1488', 'U', 'common\\models\\Product', '15', '{\"status\":\"1\",\"updated_at\":1457602280}', '{\"status\":0,\"updated_at\":1456816899}', '2016-03-10 16:31:20', 'admin');
INSERT INTO `activity` VALUES ('1489', 'U', 'common\\models\\Product', '16', '{\"status\":\"1\",\"updated_at\":1457602283}', '{\"status\":0,\"updated_at\":1456816899}', '2016-03-10 16:31:23', 'admin');
INSERT INTO `activity` VALUES ('1490', 'U', 'common\\models\\Product', '17', '{\"status\":\"1\",\"updated_at\":1457602287}', '{\"status\":0,\"updated_at\":1456890218}', '2016-03-10 16:31:27', 'admin');
INSERT INTO `activity` VALUES ('1491', 'U', 'common\\models\\Product', '18', '{\"status\":\"1\",\"updated_at\":1457602289}', '{\"status\":0,\"updated_at\":1456890218}', '2016-03-10 16:31:29', 'admin');
INSERT INTO `activity` VALUES ('1492', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602312,\"discount\":\"12313\"}', '{\"updated_at\":1457519087,\"discount\":12313}', '2016-03-10 16:31:52', 'admin');
INSERT INTO `activity` VALUES ('1493', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602317,\"discount\":\"12313\"}', '{\"updated_at\":1457602312,\"discount\":12313}', '2016-03-10 16:31:57', 'admin');
INSERT INTO `activity` VALUES ('1494', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602362,\"discount\":\"12313\"}', '{\"updated_at\":1457602317,\"discount\":12313}', '2016-03-10 16:32:42', 'admin');
INSERT INTO `activity` VALUES ('1495', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602367,\"discount\":\"12313\"}', '{\"updated_at\":1457602362,\"discount\":12313}', '2016-03-10 16:32:47', 'admin');
INSERT INTO `activity` VALUES ('1496', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602372,\"discount\":\"12313\"}', '{\"updated_at\":1457602367,\"discount\":12313}', '2016-03-10 16:32:52', 'admin');
INSERT INTO `activity` VALUES ('1497', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602377,\"discount\":\"12313\"}', '{\"updated_at\":1457602372,\"discount\":12313}', '2016-03-10 16:32:57', 'admin');
INSERT INTO `activity` VALUES ('1498', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602382,\"discount\":\"12313\"}', '{\"updated_at\":1457602377,\"discount\":12313}', '2016-03-10 16:33:02', 'admin');
INSERT INTO `activity` VALUES ('1499', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602387,\"discount\":\"12313\"}', '{\"updated_at\":1457602382,\"discount\":12313}', '2016-03-10 16:33:07', 'admin');
INSERT INTO `activity` VALUES ('1500', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602393,\"discount\":\"12313\"}', '{\"updated_at\":1457602387,\"discount\":12313}', '2016-03-10 16:33:13', 'admin');
INSERT INTO `activity` VALUES ('1501', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602398,\"discount\":\"12313\"}', '{\"updated_at\":1457602393,\"discount\":12313}', '2016-03-10 16:33:18', 'admin');
INSERT INTO `activity` VALUES ('1502', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602403,\"discount\":\"12313\"}', '{\"updated_at\":1457602398,\"discount\":12313}', '2016-03-10 16:33:23', 'admin');
INSERT INTO `activity` VALUES ('1503', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602408,\"discount\":\"12313\"}', '{\"updated_at\":1457602403,\"discount\":12313}', '2016-03-10 16:33:28', 'admin');
INSERT INTO `activity` VALUES ('1504', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602413,\"discount\":\"12313\"}', '{\"updated_at\":1457602408,\"discount\":12313}', '2016-03-10 16:33:33', 'admin');
INSERT INTO `activity` VALUES ('1505', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602418,\"discount\":\"12313\"}', '{\"updated_at\":1457602413,\"discount\":12313}', '2016-03-10 16:33:38', 'admin');
INSERT INTO `activity` VALUES ('1506', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602423,\"discount\":\"12313\"}', '{\"updated_at\":1457602418,\"discount\":12313}', '2016-03-10 16:33:43', 'admin');
INSERT INTO `activity` VALUES ('1507', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602428,\"discount\":\"12313\"}', '{\"updated_at\":1457602423,\"discount\":12313}', '2016-03-10 16:33:48', 'admin');
INSERT INTO `activity` VALUES ('1508', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602433,\"discount\":\"12313\"}', '{\"updated_at\":1457602428,\"discount\":12313}', '2016-03-10 16:33:53', 'admin');
INSERT INTO `activity` VALUES ('1509', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602438,\"discount\":\"12313\"}', '{\"updated_at\":1457602433,\"discount\":12313}', '2016-03-10 16:33:58', 'admin');
INSERT INTO `activity` VALUES ('1510', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602443,\"discount\":\"12313\"}', '{\"updated_at\":1457602438,\"discount\":12313}', '2016-03-10 16:34:03', 'admin');
INSERT INTO `activity` VALUES ('1511', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602448,\"discount\":\"12313\"}', '{\"updated_at\":1457602443,\"discount\":12313}', '2016-03-10 16:34:08', 'admin');
INSERT INTO `activity` VALUES ('1512', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602453,\"discount\":\"12313\"}', '{\"updated_at\":1457602448,\"discount\":12313}', '2016-03-10 16:34:13', 'admin');
INSERT INTO `activity` VALUES ('1513', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602458,\"discount\":\"12313\"}', '{\"updated_at\":1457602453,\"discount\":12313}', '2016-03-10 16:34:18', 'admin');
INSERT INTO `activity` VALUES ('1514', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602463,\"discount\":\"12313\"}', '{\"updated_at\":1457602458,\"discount\":12313}', '2016-03-10 16:34:23', 'admin');
INSERT INTO `activity` VALUES ('1515', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602468,\"discount\":\"12313\"}', '{\"updated_at\":1457602463,\"discount\":12313}', '2016-03-10 16:34:28', 'admin');
INSERT INTO `activity` VALUES ('1516', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602473,\"discount\":\"12313\"}', '{\"updated_at\":1457602468,\"discount\":12313}', '2016-03-10 16:34:33', 'admin');
INSERT INTO `activity` VALUES ('1517', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602478,\"discount\":\"12313\"}', '{\"updated_at\":1457602473,\"discount\":12313}', '2016-03-10 16:34:38', 'admin');
INSERT INTO `activity` VALUES ('1518', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602483,\"discount\":\"12313\"}', '{\"updated_at\":1457602478,\"discount\":12313}', '2016-03-10 16:34:43', 'admin');
INSERT INTO `activity` VALUES ('1519', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602488,\"discount\":\"12313\"}', '{\"updated_at\":1457602483,\"discount\":12313}', '2016-03-10 16:34:48', 'admin');
INSERT INTO `activity` VALUES ('1520', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602493,\"discount\":\"12313\"}', '{\"updated_at\":1457602488,\"discount\":12313}', '2016-03-10 16:34:53', 'admin');
INSERT INTO `activity` VALUES ('1521', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602497,\"discount\":\"12313\"}', '{\"updated_at\":1457602493,\"discount\":12313}', '2016-03-10 16:34:57', 'admin');
INSERT INTO `activity` VALUES ('1522', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602502,\"discount\":\"12313\"}', '{\"updated_at\":1457602497,\"discount\":12313}', '2016-03-10 16:35:02', 'admin');
INSERT INTO `activity` VALUES ('1523', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602507,\"discount\":\"12313\"}', '{\"updated_at\":1457602502,\"discount\":12313}', '2016-03-10 16:35:07', 'admin');
INSERT INTO `activity` VALUES ('1524', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602512,\"discount\":\"12313\"}', '{\"updated_at\":1457602507,\"discount\":12313}', '2016-03-10 16:35:12', 'admin');
INSERT INTO `activity` VALUES ('1525', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602517,\"discount\":\"12313\"}', '{\"updated_at\":1457602512,\"discount\":12313}', '2016-03-10 16:35:17', 'admin');
INSERT INTO `activity` VALUES ('1526', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602522,\"discount\":\"12313\"}', '{\"updated_at\":1457602517,\"discount\":12313}', '2016-03-10 16:35:23', 'admin');
INSERT INTO `activity` VALUES ('1527', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602527,\"discount\":\"12313\"}', '{\"updated_at\":1457602522,\"discount\":12313}', '2016-03-10 16:35:27', 'admin');
INSERT INTO `activity` VALUES ('1528', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602532,\"discount\":\"12313\"}', '{\"updated_at\":1457602527,\"discount\":12313}', '2016-03-10 16:35:32', 'admin');
INSERT INTO `activity` VALUES ('1529', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602541,\"discount\":\"12313\"}', '{\"updated_at\":1457602532,\"discount\":12313}', '2016-03-10 16:35:41', 'admin');
INSERT INTO `activity` VALUES ('1530', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602549,\"discount\":\"12313\"}', '{\"updated_at\":1457602541,\"discount\":12313}', '2016-03-10 16:35:49', 'admin');
INSERT INTO `activity` VALUES ('1531', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602554,\"discount\":\"12313\"}', '{\"updated_at\":1457602549,\"discount\":12313}', '2016-03-10 16:35:54', 'admin');
INSERT INTO `activity` VALUES ('1532', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602559,\"discount\":\"12313\"}', '{\"updated_at\":1457602554,\"discount\":12313}', '2016-03-10 16:35:59', 'admin');
INSERT INTO `activity` VALUES ('1533', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602566,\"discount\":\"12313\"}', '{\"updated_at\":1457602559,\"discount\":12313}', '2016-03-10 16:36:06', 'admin');
INSERT INTO `activity` VALUES ('1534', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602571,\"discount\":\"12313\"}', '{\"updated_at\":1457602566,\"discount\":12313}', '2016-03-10 16:36:11', 'admin');
INSERT INTO `activity` VALUES ('1535', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602576,\"discount\":\"12313\"}', '{\"updated_at\":1457602571,\"discount\":12313}', '2016-03-10 16:36:16', 'admin');
INSERT INTO `activity` VALUES ('1536', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602581,\"discount\":\"12313\"}', '{\"updated_at\":1457602576,\"discount\":12313}', '2016-03-10 16:36:21', 'admin');
INSERT INTO `activity` VALUES ('1537', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602586,\"discount\":\"12313\"}', '{\"updated_at\":1457602581,\"discount\":12313}', '2016-03-10 16:36:26', 'admin');
INSERT INTO `activity` VALUES ('1538', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602591,\"discount\":\"12313\"}', '{\"updated_at\":1457602586,\"discount\":12313}', '2016-03-10 16:36:31', 'admin');
INSERT INTO `activity` VALUES ('1539', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602598,\"discount\":\"12313\"}', '{\"updated_at\":1457602591,\"discount\":12313}', '2016-03-10 16:36:38', 'admin');
INSERT INTO `activity` VALUES ('1540', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602603,\"discount\":\"12313\"}', '{\"updated_at\":1457602598,\"discount\":12313}', '2016-03-10 16:36:43', 'admin');
INSERT INTO `activity` VALUES ('1541', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602608,\"discount\":\"12313\"}', '{\"updated_at\":1457602603,\"discount\":12313}', '2016-03-10 16:36:48', 'admin');
INSERT INTO `activity` VALUES ('1542', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602613,\"discount\":\"12313\"}', '{\"updated_at\":1457602608,\"discount\":12313}', '2016-03-10 16:36:53', 'admin');
INSERT INTO `activity` VALUES ('1543', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602618,\"discount\":\"12313\"}', '{\"updated_at\":1457602613,\"discount\":12313}', '2016-03-10 16:36:58', 'admin');
INSERT INTO `activity` VALUES ('1544', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602624,\"discount\":\"12313\"}', '{\"updated_at\":1457602618,\"discount\":12313}', '2016-03-10 16:37:04', 'admin');
INSERT INTO `activity` VALUES ('1545', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602632,\"discount\":\"12313\"}', '{\"updated_at\":1457602624,\"discount\":12313}', '2016-03-10 16:37:12', 'admin');
INSERT INTO `activity` VALUES ('1546', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602637,\"discount\":\"12313\"}', '{\"updated_at\":1457602632,\"discount\":12313}', '2016-03-10 16:37:17', 'admin');
INSERT INTO `activity` VALUES ('1547', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602642,\"discount\":\"12313\"}', '{\"updated_at\":1457602637,\"discount\":12313}', '2016-03-10 16:37:22', 'admin');
INSERT INTO `activity` VALUES ('1548', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602647,\"discount\":\"12313\"}', '{\"updated_at\":1457602642,\"discount\":12313}', '2016-03-10 16:37:27', 'admin');
INSERT INTO `activity` VALUES ('1549', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602652,\"discount\":\"12313\"}', '{\"updated_at\":1457602647,\"discount\":12313}', '2016-03-10 16:37:32', 'admin');
INSERT INTO `activity` VALUES ('1550', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602657,\"discount\":\"12313\"}', '{\"updated_at\":1457602652,\"discount\":12313}', '2016-03-10 16:37:37', 'admin');
INSERT INTO `activity` VALUES ('1551', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602662,\"discount\":\"12313\"}', '{\"updated_at\":1457602657,\"discount\":12313}', '2016-03-10 16:37:42', 'admin');
INSERT INTO `activity` VALUES ('1552', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602667,\"discount\":\"12313\"}', '{\"updated_at\":1457602662,\"discount\":12313}', '2016-03-10 16:37:47', 'admin');
INSERT INTO `activity` VALUES ('1553', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602672,\"discount\":\"12313\"}', '{\"updated_at\":1457602667,\"discount\":12313}', '2016-03-10 16:37:52', 'admin');
INSERT INTO `activity` VALUES ('1554', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602677,\"discount\":\"12313\"}', '{\"updated_at\":1457602672,\"discount\":12313}', '2016-03-10 16:37:57', 'admin');
INSERT INTO `activity` VALUES ('1555', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602682,\"discount\":\"12313\"}', '{\"updated_at\":1457602677,\"discount\":12313}', '2016-03-10 16:38:02', 'admin');
INSERT INTO `activity` VALUES ('1556', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602687,\"discount\":\"12313\"}', '{\"updated_at\":1457602682,\"discount\":12313}', '2016-03-10 16:38:07', 'admin');
INSERT INTO `activity` VALUES ('1557', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602692,\"discount\":\"12313\"}', '{\"updated_at\":1457602687,\"discount\":12313}', '2016-03-10 16:38:12', 'admin');
INSERT INTO `activity` VALUES ('1558', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602697,\"discount\":\"12313\"}', '{\"updated_at\":1457602692,\"discount\":12313}', '2016-03-10 16:38:17', 'admin');
INSERT INTO `activity` VALUES ('1559', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602703,\"discount\":\"12313\"}', '{\"updated_at\":1457602697,\"discount\":12313}', '2016-03-10 16:38:23', 'admin');
INSERT INTO `activity` VALUES ('1560', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602708,\"discount\":\"12313\"}', '{\"updated_at\":1457602703,\"discount\":12313}', '2016-03-10 16:38:28', 'admin');
INSERT INTO `activity` VALUES ('1561', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602713,\"discount\":\"12313\"}', '{\"updated_at\":1457602708,\"discount\":12313}', '2016-03-10 16:38:33', 'admin');
INSERT INTO `activity` VALUES ('1562', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602718,\"discount\":\"12313\"}', '{\"updated_at\":1457602713,\"discount\":12313}', '2016-03-10 16:38:38', 'admin');
INSERT INTO `activity` VALUES ('1563', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602723,\"discount\":\"12313\"}', '{\"updated_at\":1457602718,\"discount\":12313}', '2016-03-10 16:38:43', 'admin');
INSERT INTO `activity` VALUES ('1564', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602728,\"discount\":\"12313\"}', '{\"updated_at\":1457602723,\"discount\":12313}', '2016-03-10 16:38:48', 'admin');
INSERT INTO `activity` VALUES ('1565', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602733,\"discount\":\"12313\"}', '{\"updated_at\":1457602728,\"discount\":12313}', '2016-03-10 16:38:53', 'admin');
INSERT INTO `activity` VALUES ('1566', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602738,\"discount\":\"12313\"}', '{\"updated_at\":1457602733,\"discount\":12313}', '2016-03-10 16:38:58', 'admin');
INSERT INTO `activity` VALUES ('1567', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602743,\"discount\":\"12313\"}', '{\"updated_at\":1457602738,\"discount\":12313}', '2016-03-10 16:39:03', 'admin');
INSERT INTO `activity` VALUES ('1568', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602748,\"discount\":\"12313\"}', '{\"updated_at\":1457602743,\"discount\":12313}', '2016-03-10 16:39:08', 'admin');
INSERT INTO `activity` VALUES ('1569', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602753,\"discount\":\"12313\"}', '{\"updated_at\":1457602748,\"discount\":12313}', '2016-03-10 16:39:13', 'admin');
INSERT INTO `activity` VALUES ('1570', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602758,\"discount\":\"12313\"}', '{\"updated_at\":1457602753,\"discount\":12313}', '2016-03-10 16:39:18', 'admin');
INSERT INTO `activity` VALUES ('1571', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602763,\"discount\":\"12313\"}', '{\"updated_at\":1457602758,\"discount\":12313}', '2016-03-10 16:39:23', 'admin');
INSERT INTO `activity` VALUES ('1572', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602768,\"discount\":\"12313\"}', '{\"updated_at\":1457602763,\"discount\":12313}', '2016-03-10 16:39:28', 'admin');
INSERT INTO `activity` VALUES ('1573', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602773,\"discount\":\"12313\"}', '{\"updated_at\":1457602768,\"discount\":12313}', '2016-03-10 16:39:33', 'admin');
INSERT INTO `activity` VALUES ('1574', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602778,\"discount\":\"12313\"}', '{\"updated_at\":1457602773,\"discount\":12313}', '2016-03-10 16:39:38', 'admin');
INSERT INTO `activity` VALUES ('1575', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602783,\"discount\":\"12313\"}', '{\"updated_at\":1457602778,\"discount\":12313}', '2016-03-10 16:39:43', 'admin');
INSERT INTO `activity` VALUES ('1576', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602788,\"discount\":\"12313\"}', '{\"updated_at\":1457602783,\"discount\":12313}', '2016-03-10 16:39:48', 'admin');
INSERT INTO `activity` VALUES ('1577', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602793,\"discount\":\"12313\"}', '{\"updated_at\":1457602788,\"discount\":12313}', '2016-03-10 16:39:53', 'admin');
INSERT INTO `activity` VALUES ('1578', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602798,\"discount\":\"12313\"}', '{\"updated_at\":1457602793,\"discount\":12313}', '2016-03-10 16:39:58', 'admin');
INSERT INTO `activity` VALUES ('1579', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602803,\"discount\":\"12313\"}', '{\"updated_at\":1457602798,\"discount\":12313}', '2016-03-10 16:40:03', 'admin');
INSERT INTO `activity` VALUES ('1580', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602808,\"discount\":\"12313\"}', '{\"updated_at\":1457602803,\"discount\":12313}', '2016-03-10 16:40:08', 'admin');
INSERT INTO `activity` VALUES ('1581', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602813,\"discount\":\"12313\"}', '{\"updated_at\":1457602808,\"discount\":12313}', '2016-03-10 16:40:13', 'admin');
INSERT INTO `activity` VALUES ('1582', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602818,\"discount\":\"12313\"}', '{\"updated_at\":1457602813,\"discount\":12313}', '2016-03-10 16:40:18', 'admin');
INSERT INTO `activity` VALUES ('1583', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602823,\"discount\":\"12313\"}', '{\"updated_at\":1457602818,\"discount\":12313}', '2016-03-10 16:40:23', 'admin');
INSERT INTO `activity` VALUES ('1584', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602828,\"discount\":\"12313\"}', '{\"updated_at\":1457602823,\"discount\":12313}', '2016-03-10 16:40:28', 'admin');
INSERT INTO `activity` VALUES ('1585', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602833,\"discount\":\"12313\"}', '{\"updated_at\":1457602828,\"discount\":12313}', '2016-03-10 16:40:33', 'admin');
INSERT INTO `activity` VALUES ('1586', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602838,\"discount\":\"12313\"}', '{\"updated_at\":1457602833,\"discount\":12313}', '2016-03-10 16:40:38', 'admin');
INSERT INTO `activity` VALUES ('1587', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602844,\"discount\":\"12313\"}', '{\"updated_at\":1457602838,\"discount\":12313}', '2016-03-10 16:40:44', 'admin');
INSERT INTO `activity` VALUES ('1588', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602848,\"discount\":\"12313\"}', '{\"updated_at\":1457602844,\"discount\":12313}', '2016-03-10 16:40:48', 'admin');
INSERT INTO `activity` VALUES ('1589', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602853,\"discount\":\"12313\"}', '{\"updated_at\":1457602848,\"discount\":12313}', '2016-03-10 16:40:53', 'admin');
INSERT INTO `activity` VALUES ('1590', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602858,\"discount\":\"12313\"}', '{\"updated_at\":1457602853,\"discount\":12313}', '2016-03-10 16:40:58', 'admin');
INSERT INTO `activity` VALUES ('1591', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602863,\"discount\":\"12313\"}', '{\"updated_at\":1457602858,\"discount\":12313}', '2016-03-10 16:41:03', 'admin');
INSERT INTO `activity` VALUES ('1592', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602868,\"discount\":\"12313\"}', '{\"updated_at\":1457602863,\"discount\":12313}', '2016-03-10 16:41:08', 'admin');
INSERT INTO `activity` VALUES ('1593', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602873,\"discount\":\"12313\"}', '{\"updated_at\":1457602868,\"discount\":12313}', '2016-03-10 16:41:13', 'admin');
INSERT INTO `activity` VALUES ('1594', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602878,\"discount\":\"12313\"}', '{\"updated_at\":1457602873,\"discount\":12313}', '2016-03-10 16:41:18', 'admin');
INSERT INTO `activity` VALUES ('1595', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602883,\"discount\":\"12313\"}', '{\"updated_at\":1457602878,\"discount\":12313}', '2016-03-10 16:41:23', 'admin');
INSERT INTO `activity` VALUES ('1596', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602888,\"discount\":\"12313\"}', '{\"updated_at\":1457602883,\"discount\":12313}', '2016-03-10 16:41:28', 'admin');
INSERT INTO `activity` VALUES ('1597', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602893,\"discount\":\"12313\"}', '{\"updated_at\":1457602888,\"discount\":12313}', '2016-03-10 16:41:33', 'admin');
INSERT INTO `activity` VALUES ('1598', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602898,\"discount\":\"12313\"}', '{\"updated_at\":1457602893,\"discount\":12313}', '2016-03-10 16:41:38', 'admin');
INSERT INTO `activity` VALUES ('1599', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602903,\"discount\":\"12313\"}', '{\"updated_at\":1457602898,\"discount\":12313}', '2016-03-10 16:41:43', 'admin');
INSERT INTO `activity` VALUES ('1600', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602908,\"discount\":\"12313\"}', '{\"updated_at\":1457602903,\"discount\":12313}', '2016-03-10 16:41:48', 'admin');
INSERT INTO `activity` VALUES ('1601', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602913,\"discount\":\"12313\"}', '{\"updated_at\":1457602908,\"discount\":12313}', '2016-03-10 16:41:53', 'admin');
INSERT INTO `activity` VALUES ('1602', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602918,\"discount\":\"12313\"}', '{\"updated_at\":1457602913,\"discount\":12313}', '2016-03-10 16:41:58', 'admin');
INSERT INTO `activity` VALUES ('1603', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602923,\"discount\":\"12313\"}', '{\"updated_at\":1457602918,\"discount\":12313}', '2016-03-10 16:42:03', 'admin');
INSERT INTO `activity` VALUES ('1604', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602928,\"discount\":\"12313\"}', '{\"updated_at\":1457602923,\"discount\":12313}', '2016-03-10 16:42:08', 'admin');
INSERT INTO `activity` VALUES ('1605', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602933,\"discount\":\"12313\"}', '{\"updated_at\":1457602928,\"discount\":12313}', '2016-03-10 16:42:13', 'admin');
INSERT INTO `activity` VALUES ('1606', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602938,\"discount\":\"12313\"}', '{\"updated_at\":1457602933,\"discount\":12313}', '2016-03-10 16:42:18', 'admin');
INSERT INTO `activity` VALUES ('1607', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602943,\"discount\":\"12313\"}', '{\"updated_at\":1457602938,\"discount\":12313}', '2016-03-10 16:42:23', 'admin');
INSERT INTO `activity` VALUES ('1608', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602948,\"discount\":\"12313\"}', '{\"updated_at\":1457602943,\"discount\":12313}', '2016-03-10 16:42:28', 'admin');
INSERT INTO `activity` VALUES ('1609', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602953,\"discount\":\"12313\"}', '{\"updated_at\":1457602948,\"discount\":12313}', '2016-03-10 16:42:33', 'admin');
INSERT INTO `activity` VALUES ('1610', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602958,\"discount\":\"12313\"}', '{\"updated_at\":1457602953,\"discount\":12313}', '2016-03-10 16:42:38', 'admin');
INSERT INTO `activity` VALUES ('1611', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602963,\"discount\":\"12313\"}', '{\"updated_at\":1457602958,\"discount\":12313}', '2016-03-10 16:42:43', 'admin');
INSERT INTO `activity` VALUES ('1612', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602968,\"discount\":\"12313\"}', '{\"updated_at\":1457602963,\"discount\":12313}', '2016-03-10 16:42:48', 'admin');
INSERT INTO `activity` VALUES ('1613', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602973,\"discount\":\"12313\"}', '{\"updated_at\":1457602968,\"discount\":12313}', '2016-03-10 16:42:53', 'admin');
INSERT INTO `activity` VALUES ('1614', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602978,\"discount\":\"12313\"}', '{\"updated_at\":1457602973,\"discount\":12313}', '2016-03-10 16:42:58', 'admin');
INSERT INTO `activity` VALUES ('1615', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602983,\"discount\":\"12313\"}', '{\"updated_at\":1457602978,\"discount\":12313}', '2016-03-10 16:43:03', 'admin');
INSERT INTO `activity` VALUES ('1616', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602988,\"discount\":\"12313\"}', '{\"updated_at\":1457602983,\"discount\":12313}', '2016-03-10 16:43:08', 'admin');
INSERT INTO `activity` VALUES ('1617', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602993,\"discount\":\"12313\"}', '{\"updated_at\":1457602988,\"discount\":12313}', '2016-03-10 16:43:13', 'admin');
INSERT INTO `activity` VALUES ('1618', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457602998,\"discount\":\"12313\"}', '{\"updated_at\":1457602993,\"discount\":12313}', '2016-03-10 16:43:18', 'admin');
INSERT INTO `activity` VALUES ('1619', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603003,\"discount\":\"12313\"}', '{\"updated_at\":1457602998,\"discount\":12313}', '2016-03-10 16:43:23', 'admin');
INSERT INTO `activity` VALUES ('1620', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603008,\"discount\":\"12313\"}', '{\"updated_at\":1457603003,\"discount\":12313}', '2016-03-10 16:43:28', 'admin');
INSERT INTO `activity` VALUES ('1621', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603013,\"discount\":\"12313\"}', '{\"updated_at\":1457603008,\"discount\":12313}', '2016-03-10 16:43:33', 'admin');
INSERT INTO `activity` VALUES ('1622', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603018,\"discount\":\"12313\"}', '{\"updated_at\":1457603013,\"discount\":12313}', '2016-03-10 16:43:38', 'admin');
INSERT INTO `activity` VALUES ('1623', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603023,\"discount\":\"12313\"}', '{\"updated_at\":1457603018,\"discount\":12313}', '2016-03-10 16:43:43', 'admin');
INSERT INTO `activity` VALUES ('1624', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603028,\"discount\":\"12313\"}', '{\"updated_at\":1457603023,\"discount\":12313}', '2016-03-10 16:43:48', 'admin');
INSERT INTO `activity` VALUES ('1625', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603033,\"discount\":\"12313\"}', '{\"updated_at\":1457603028,\"discount\":12313}', '2016-03-10 16:43:53', 'admin');
INSERT INTO `activity` VALUES ('1626', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603038,\"discount\":\"12313\"}', '{\"updated_at\":1457603033,\"discount\":12313}', '2016-03-10 16:43:58', 'admin');
INSERT INTO `activity` VALUES ('1627', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603043,\"discount\":\"12313\"}', '{\"updated_at\":1457603038,\"discount\":12313}', '2016-03-10 16:44:03', 'admin');
INSERT INTO `activity` VALUES ('1628', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603048,\"discount\":\"12313\"}', '{\"updated_at\":1457603043,\"discount\":12313}', '2016-03-10 16:44:08', 'admin');
INSERT INTO `activity` VALUES ('1629', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603053,\"discount\":\"12313\"}', '{\"updated_at\":1457603048,\"discount\":12313}', '2016-03-10 16:44:13', 'admin');
INSERT INTO `activity` VALUES ('1630', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603058,\"discount\":\"12313\"}', '{\"updated_at\":1457603053,\"discount\":12313}', '2016-03-10 16:44:18', 'admin');
INSERT INTO `activity` VALUES ('1631', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603063,\"discount\":\"12313\"}', '{\"updated_at\":1457603058,\"discount\":12313}', '2016-03-10 16:44:23', 'admin');
INSERT INTO `activity` VALUES ('1632', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603068,\"discount\":\"12313\"}', '{\"updated_at\":1457603063,\"discount\":12313}', '2016-03-10 16:44:28', 'admin');
INSERT INTO `activity` VALUES ('1633', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603073,\"discount\":\"12313\"}', '{\"updated_at\":1457603068,\"discount\":12313}', '2016-03-10 16:44:33', 'admin');
INSERT INTO `activity` VALUES ('1634', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603078,\"discount\":\"12313\"}', '{\"updated_at\":1457603073,\"discount\":12313}', '2016-03-10 16:44:38', 'admin');
INSERT INTO `activity` VALUES ('1635', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603082,\"discount\":\"12313\"}', '{\"updated_at\":1457603078,\"discount\":12313}', '2016-03-10 16:44:42', 'admin');
INSERT INTO `activity` VALUES ('1636', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603088,\"discount\":\"12313\"}', '{\"updated_at\":1457603082,\"discount\":12313}', '2016-03-10 16:44:48', 'admin');
INSERT INTO `activity` VALUES ('1637', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603093,\"discount\":\"12313\"}', '{\"updated_at\":1457603088,\"discount\":12313}', '2016-03-10 16:44:53', 'admin');
INSERT INTO `activity` VALUES ('1638', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603098,\"discount\":\"12313\"}', '{\"updated_at\":1457603093,\"discount\":12313}', '2016-03-10 16:44:58', 'admin');
INSERT INTO `activity` VALUES ('1639', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603103,\"discount\":\"12313\"}', '{\"updated_at\":1457603098,\"discount\":12313}', '2016-03-10 16:45:03', 'admin');
INSERT INTO `activity` VALUES ('1640', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603108,\"discount\":\"12313\"}', '{\"updated_at\":1457603103,\"discount\":12313}', '2016-03-10 16:45:08', 'admin');
INSERT INTO `activity` VALUES ('1641', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603113,\"discount\":\"12313\"}', '{\"updated_at\":1457603108,\"discount\":12313}', '2016-03-10 16:45:13', 'admin');
INSERT INTO `activity` VALUES ('1642', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603118,\"discount\":\"12313\"}', '{\"updated_at\":1457603113,\"discount\":12313}', '2016-03-10 16:45:18', 'admin');
INSERT INTO `activity` VALUES ('1643', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603123,\"discount\":\"12313\"}', '{\"updated_at\":1457603118,\"discount\":12313}', '2016-03-10 16:45:23', 'admin');
INSERT INTO `activity` VALUES ('1644', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603128,\"discount\":\"12313\"}', '{\"updated_at\":1457603123,\"discount\":12313}', '2016-03-10 16:45:28', 'admin');
INSERT INTO `activity` VALUES ('1645', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603133,\"discount\":\"12313\"}', '{\"updated_at\":1457603128,\"discount\":12313}', '2016-03-10 16:45:33', 'admin');
INSERT INTO `activity` VALUES ('1646', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603138,\"discount\":\"12313\"}', '{\"updated_at\":1457603133,\"discount\":12313}', '2016-03-10 16:45:38', 'admin');
INSERT INTO `activity` VALUES ('1647', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603143,\"discount\":\"12313\"}', '{\"updated_at\":1457603138,\"discount\":12313}', '2016-03-10 16:45:43', 'admin');
INSERT INTO `activity` VALUES ('1648', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603148,\"discount\":\"12313\"}', '{\"updated_at\":1457603143,\"discount\":12313}', '2016-03-10 16:45:48', 'admin');
INSERT INTO `activity` VALUES ('1649', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603153,\"discount\":\"12313\"}', '{\"updated_at\":1457603148,\"discount\":12313}', '2016-03-10 16:45:53', 'admin');
INSERT INTO `activity` VALUES ('1650', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603158,\"discount\":\"12313\"}', '{\"updated_at\":1457603153,\"discount\":12313}', '2016-03-10 16:45:58', 'admin');
INSERT INTO `activity` VALUES ('1651', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603163,\"discount\":\"12313\"}', '{\"updated_at\":1457603158,\"discount\":12313}', '2016-03-10 16:46:03', 'admin');
INSERT INTO `activity` VALUES ('1652', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603168,\"discount\":\"12313\"}', '{\"updated_at\":1457603163,\"discount\":12313}', '2016-03-10 16:46:08', 'admin');
INSERT INTO `activity` VALUES ('1653', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603173,\"discount\":\"12313\"}', '{\"updated_at\":1457603168,\"discount\":12313}', '2016-03-10 16:46:13', 'admin');
INSERT INTO `activity` VALUES ('1654', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603177,\"discount\":\"12313\"}', '{\"updated_at\":1457603173,\"discount\":12313}', '2016-03-10 16:46:17', 'admin');
INSERT INTO `activity` VALUES ('1655', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603182,\"discount\":\"12313\"}', '{\"updated_at\":1457603177,\"discount\":12313}', '2016-03-10 16:46:22', 'admin');
INSERT INTO `activity` VALUES ('1656', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603187,\"discount\":\"12313\"}', '{\"updated_at\":1457603182,\"discount\":12313}', '2016-03-10 16:46:27', 'admin');
INSERT INTO `activity` VALUES ('1657', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603192,\"discount\":\"12313\"}', '{\"updated_at\":1457603187,\"discount\":12313}', '2016-03-10 16:46:32', 'admin');
INSERT INTO `activity` VALUES ('1658', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603197,\"discount\":\"12313\"}', '{\"updated_at\":1457603192,\"discount\":12313}', '2016-03-10 16:46:37', 'admin');
INSERT INTO `activity` VALUES ('1659', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603202,\"discount\":\"12313\"}', '{\"updated_at\":1457603197,\"discount\":12313}', '2016-03-10 16:46:42', 'admin');
INSERT INTO `activity` VALUES ('1660', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603207,\"discount\":\"12313\"}', '{\"updated_at\":1457603202,\"discount\":12313}', '2016-03-10 16:46:47', 'admin');
INSERT INTO `activity` VALUES ('1661', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603212,\"discount\":\"12313\"}', '{\"updated_at\":1457603207,\"discount\":12313}', '2016-03-10 16:46:52', 'admin');
INSERT INTO `activity` VALUES ('1662', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603217,\"discount\":\"12313\"}', '{\"updated_at\":1457603212,\"discount\":12313}', '2016-03-10 16:46:57', 'admin');
INSERT INTO `activity` VALUES ('1663', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603223,\"discount\":\"12313\"}', '{\"updated_at\":1457603217,\"discount\":12313}', '2016-03-10 16:47:03', 'admin');
INSERT INTO `activity` VALUES ('1664', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603228,\"discount\":\"12313\"}', '{\"updated_at\":1457603223,\"discount\":12313}', '2016-03-10 16:47:08', 'admin');
INSERT INTO `activity` VALUES ('1665', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603233,\"discount\":\"12313\"}', '{\"updated_at\":1457603228,\"discount\":12313}', '2016-03-10 16:47:13', 'admin');
INSERT INTO `activity` VALUES ('1666', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603238,\"discount\":\"12313\"}', '{\"updated_at\":1457603233,\"discount\":12313}', '2016-03-10 16:47:18', 'admin');
INSERT INTO `activity` VALUES ('1667', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603243,\"discount\":\"12313\"}', '{\"updated_at\":1457603238,\"discount\":12313}', '2016-03-10 16:47:23', 'admin');
INSERT INTO `activity` VALUES ('1668', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603248,\"discount\":\"12313\"}', '{\"updated_at\":1457603243,\"discount\":12313}', '2016-03-10 16:47:28', 'admin');
INSERT INTO `activity` VALUES ('1669', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603253,\"discount\":\"12313\"}', '{\"updated_at\":1457603248,\"discount\":12313}', '2016-03-10 16:47:33', 'admin');
INSERT INTO `activity` VALUES ('1670', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603258,\"discount\":\"12313\"}', '{\"updated_at\":1457603253,\"discount\":12313}', '2016-03-10 16:47:38', 'admin');
INSERT INTO `activity` VALUES ('1671', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603263,\"discount\":\"12313\"}', '{\"updated_at\":1457603258,\"discount\":12313}', '2016-03-10 16:47:43', 'admin');
INSERT INTO `activity` VALUES ('1672', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603268,\"discount\":\"12313\"}', '{\"updated_at\":1457603263,\"discount\":12313}', '2016-03-10 16:47:48', 'admin');
INSERT INTO `activity` VALUES ('1673', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603273,\"discount\":\"12313\"}', '{\"updated_at\":1457603268,\"discount\":12313}', '2016-03-10 16:47:53', 'admin');
INSERT INTO `activity` VALUES ('1674', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603278,\"discount\":\"12313\"}', '{\"updated_at\":1457603273,\"discount\":12313}', '2016-03-10 16:47:58', 'admin');
INSERT INTO `activity` VALUES ('1675', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603283,\"discount\":\"12313\"}', '{\"updated_at\":1457603278,\"discount\":12313}', '2016-03-10 16:48:03', 'admin');
INSERT INTO `activity` VALUES ('1676', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603288,\"discount\":\"12313\"}', '{\"updated_at\":1457603283,\"discount\":12313}', '2016-03-10 16:48:08', 'admin');
INSERT INTO `activity` VALUES ('1677', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603293,\"discount\":\"12313\"}', '{\"updated_at\":1457603288,\"discount\":12313}', '2016-03-10 16:48:13', 'admin');
INSERT INTO `activity` VALUES ('1678', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603298,\"discount\":\"12313\"}', '{\"updated_at\":1457603293,\"discount\":12313}', '2016-03-10 16:48:18', 'admin');
INSERT INTO `activity` VALUES ('1679', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603303,\"discount\":\"12313\"}', '{\"updated_at\":1457603298,\"discount\":12313}', '2016-03-10 16:48:23', 'admin');
INSERT INTO `activity` VALUES ('1680', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603308,\"discount\":\"12313\"}', '{\"updated_at\":1457603303,\"discount\":12313}', '2016-03-10 16:48:28', 'admin');
INSERT INTO `activity` VALUES ('1681', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603312,\"discount\":\"12313\"}', '{\"updated_at\":1457603308,\"discount\":12313}', '2016-03-10 16:48:32', 'admin');
INSERT INTO `activity` VALUES ('1682', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603318,\"discount\":\"12313\"}', '{\"updated_at\":1457603312,\"discount\":12313}', '2016-03-10 16:48:38', 'admin');
INSERT INTO `activity` VALUES ('1683', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603323,\"discount\":\"12313\"}', '{\"updated_at\":1457603318,\"discount\":12313}', '2016-03-10 16:48:43', 'admin');
INSERT INTO `activity` VALUES ('1684', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603328,\"discount\":\"12313\"}', '{\"updated_at\":1457603323,\"discount\":12313}', '2016-03-10 16:48:48', 'admin');
INSERT INTO `activity` VALUES ('1685', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603333,\"discount\":\"12313\"}', '{\"updated_at\":1457603328,\"discount\":12313}', '2016-03-10 16:48:53', 'admin');
INSERT INTO `activity` VALUES ('1686', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603338,\"discount\":\"12313\"}', '{\"updated_at\":1457603333,\"discount\":12313}', '2016-03-10 16:48:58', 'admin');
INSERT INTO `activity` VALUES ('1687', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603343,\"discount\":\"12313\"}', '{\"updated_at\":1457603338,\"discount\":12313}', '2016-03-10 16:49:03', 'admin');
INSERT INTO `activity` VALUES ('1688', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603348,\"discount\":\"12313\"}', '{\"updated_at\":1457603343,\"discount\":12313}', '2016-03-10 16:49:08', 'admin');
INSERT INTO `activity` VALUES ('1689', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603353,\"discount\":\"12313\"}', '{\"updated_at\":1457603348,\"discount\":12313}', '2016-03-10 16:49:13', 'admin');
INSERT INTO `activity` VALUES ('1690', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603358,\"discount\":\"12313\"}', '{\"updated_at\":1457603353,\"discount\":12313}', '2016-03-10 16:49:18', 'admin');
INSERT INTO `activity` VALUES ('1691', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603363,\"discount\":\"12313\"}', '{\"updated_at\":1457603358,\"discount\":12313}', '2016-03-10 16:49:23', 'admin');
INSERT INTO `activity` VALUES ('1692', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603368,\"discount\":\"12313\"}', '{\"updated_at\":1457603363,\"discount\":12313}', '2016-03-10 16:49:28', 'admin');
INSERT INTO `activity` VALUES ('1693', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603373,\"discount\":\"12313\"}', '{\"updated_at\":1457603368,\"discount\":12313}', '2016-03-10 16:49:33', 'admin');
INSERT INTO `activity` VALUES ('1694', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603378,\"discount\":\"12313\"}', '{\"updated_at\":1457603373,\"discount\":12313}', '2016-03-10 16:49:38', 'admin');
INSERT INTO `activity` VALUES ('1695', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603383,\"discount\":\"12313\"}', '{\"updated_at\":1457603378,\"discount\":12313}', '2016-03-10 16:49:43', 'admin');
INSERT INTO `activity` VALUES ('1696', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603388,\"discount\":\"12313\"}', '{\"updated_at\":1457603383,\"discount\":12313}', '2016-03-10 16:49:48', 'admin');
INSERT INTO `activity` VALUES ('1697', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603393,\"discount\":\"12313\"}', '{\"updated_at\":1457603388,\"discount\":12313}', '2016-03-10 16:49:53', 'admin');
INSERT INTO `activity` VALUES ('1698', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603398,\"discount\":\"12313\"}', '{\"updated_at\":1457603393,\"discount\":12313}', '2016-03-10 16:49:58', 'admin');
INSERT INTO `activity` VALUES ('1699', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603403,\"discount\":\"12313\"}', '{\"updated_at\":1457603398,\"discount\":12313}', '2016-03-10 16:50:03', 'admin');
INSERT INTO `activity` VALUES ('1700', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603408,\"discount\":\"12313\"}', '{\"updated_at\":1457603403,\"discount\":12313}', '2016-03-10 16:50:08', 'admin');
INSERT INTO `activity` VALUES ('1701', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603413,\"discount\":\"12313\"}', '{\"updated_at\":1457603408,\"discount\":12313}', '2016-03-10 16:50:13', 'admin');
INSERT INTO `activity` VALUES ('1702', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603418,\"discount\":\"12313\"}', '{\"updated_at\":1457603413,\"discount\":12313}', '2016-03-10 16:50:18', 'admin');
INSERT INTO `activity` VALUES ('1703', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603423,\"discount\":\"12313\"}', '{\"updated_at\":1457603418,\"discount\":12313}', '2016-03-10 16:50:23', 'admin');
INSERT INTO `activity` VALUES ('1704', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603428,\"discount\":\"12313\"}', '{\"updated_at\":1457603423,\"discount\":12313}', '2016-03-10 16:50:28', 'admin');
INSERT INTO `activity` VALUES ('1705', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603433,\"discount\":\"12313\"}', '{\"updated_at\":1457603428,\"discount\":12313}', '2016-03-10 16:50:33', 'admin');
INSERT INTO `activity` VALUES ('1706', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603438,\"discount\":\"12313\"}', '{\"updated_at\":1457603433,\"discount\":12313}', '2016-03-10 16:50:38', 'admin');
INSERT INTO `activity` VALUES ('1707', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603443,\"discount\":\"12313\"}', '{\"updated_at\":1457603438,\"discount\":12313}', '2016-03-10 16:50:43', 'admin');
INSERT INTO `activity` VALUES ('1708', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603448,\"discount\":\"12313\"}', '{\"updated_at\":1457603443,\"discount\":12313}', '2016-03-10 16:50:48', 'admin');
INSERT INTO `activity` VALUES ('1709', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603453,\"discount\":\"12313\"}', '{\"updated_at\":1457603448,\"discount\":12313}', '2016-03-10 16:50:53', 'admin');
INSERT INTO `activity` VALUES ('1710', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603458,\"discount\":\"12313\"}', '{\"updated_at\":1457603453,\"discount\":12313}', '2016-03-10 16:50:58', 'admin');
INSERT INTO `activity` VALUES ('1711', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603463,\"discount\":\"12313\"}', '{\"updated_at\":1457603458,\"discount\":12313}', '2016-03-10 16:51:03', 'admin');
INSERT INTO `activity` VALUES ('1712', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603468,\"discount\":\"12313\"}', '{\"updated_at\":1457603463,\"discount\":12313}', '2016-03-10 16:51:08', 'admin');
INSERT INTO `activity` VALUES ('1713', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603473,\"discount\":\"12313\"}', '{\"updated_at\":1457603468,\"discount\":12313}', '2016-03-10 16:51:13', 'admin');
INSERT INTO `activity` VALUES ('1714', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603478,\"discount\":\"12313\"}', '{\"updated_at\":1457603473,\"discount\":12313}', '2016-03-10 16:51:18', 'admin');
INSERT INTO `activity` VALUES ('1715', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603483,\"discount\":\"12313\"}', '{\"updated_at\":1457603478,\"discount\":12313}', '2016-03-10 16:51:23', 'admin');
INSERT INTO `activity` VALUES ('1716', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603488,\"discount\":\"12313\"}', '{\"updated_at\":1457603483,\"discount\":12313}', '2016-03-10 16:51:28', 'admin');
INSERT INTO `activity` VALUES ('1717', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603493,\"discount\":\"12313\"}', '{\"updated_at\":1457603488,\"discount\":12313}', '2016-03-10 16:51:33', 'admin');
INSERT INTO `activity` VALUES ('1718', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603498,\"discount\":\"12313\"}', '{\"updated_at\":1457603493,\"discount\":12313}', '2016-03-10 16:51:38', 'admin');
INSERT INTO `activity` VALUES ('1719', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603503,\"discount\":\"12313\"}', '{\"updated_at\":1457603498,\"discount\":12313}', '2016-03-10 16:51:43', 'admin');
INSERT INTO `activity` VALUES ('1720', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603508,\"discount\":\"12313\"}', '{\"updated_at\":1457603503,\"discount\":12313}', '2016-03-10 16:51:48', 'admin');
INSERT INTO `activity` VALUES ('1721', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603513,\"discount\":\"12313\"}', '{\"updated_at\":1457603508,\"discount\":12313}', '2016-03-10 16:51:53', 'admin');
INSERT INTO `activity` VALUES ('1722', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603518,\"discount\":\"12313\"}', '{\"updated_at\":1457603513,\"discount\":12313}', '2016-03-10 16:51:58', 'admin');
INSERT INTO `activity` VALUES ('1723', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603523,\"discount\":\"12313\"}', '{\"updated_at\":1457603518,\"discount\":12313}', '2016-03-10 16:52:03', 'admin');
INSERT INTO `activity` VALUES ('1724', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603528,\"discount\":\"12313\"}', '{\"updated_at\":1457603523,\"discount\":12313}', '2016-03-10 16:52:08', 'admin');
INSERT INTO `activity` VALUES ('1725', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603533,\"discount\":\"12313\"}', '{\"updated_at\":1457603528,\"discount\":12313}', '2016-03-10 16:52:13', 'admin');
INSERT INTO `activity` VALUES ('1726', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603538,\"discount\":\"12313\"}', '{\"updated_at\":1457603533,\"discount\":12313}', '2016-03-10 16:52:18', 'admin');
INSERT INTO `activity` VALUES ('1727', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603543,\"discount\":\"12313\"}', '{\"updated_at\":1457603538,\"discount\":12313}', '2016-03-10 16:52:23', 'admin');
INSERT INTO `activity` VALUES ('1728', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603548,\"discount\":\"12313\"}', '{\"updated_at\":1457603543,\"discount\":12313}', '2016-03-10 16:52:28', 'admin');
INSERT INTO `activity` VALUES ('1729', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603553,\"discount\":\"12313\"}', '{\"updated_at\":1457603548,\"discount\":12313}', '2016-03-10 16:52:33', 'admin');
INSERT INTO `activity` VALUES ('1730', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603558,\"discount\":\"12313\"}', '{\"updated_at\":1457603553,\"discount\":12313}', '2016-03-10 16:52:38', 'admin');
INSERT INTO `activity` VALUES ('1731', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603563,\"discount\":\"12313\"}', '{\"updated_at\":1457603558,\"discount\":12313}', '2016-03-10 16:52:43', 'admin');
INSERT INTO `activity` VALUES ('1732', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603568,\"discount\":\"12313\"}', '{\"updated_at\":1457603563,\"discount\":12313}', '2016-03-10 16:52:48', 'admin');
INSERT INTO `activity` VALUES ('1733', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603573,\"discount\":\"12313\"}', '{\"updated_at\":1457603568,\"discount\":12313}', '2016-03-10 16:52:53', 'admin');
INSERT INTO `activity` VALUES ('1734', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603578,\"discount\":\"12313\"}', '{\"updated_at\":1457603573,\"discount\":12313}', '2016-03-10 16:52:58', 'admin');
INSERT INTO `activity` VALUES ('1735', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603583,\"discount\":\"12313\"}', '{\"updated_at\":1457603578,\"discount\":12313}', '2016-03-10 16:53:03', 'admin');
INSERT INTO `activity` VALUES ('1736', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603588,\"discount\":\"12313\"}', '{\"updated_at\":1457603583,\"discount\":12313}', '2016-03-10 16:53:08', 'admin');
INSERT INTO `activity` VALUES ('1737', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603593,\"discount\":\"12313\"}', '{\"updated_at\":1457603588,\"discount\":12313}', '2016-03-10 16:53:13', 'admin');
INSERT INTO `activity` VALUES ('1738', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603598,\"discount\":\"12313\"}', '{\"updated_at\":1457603593,\"discount\":12313}', '2016-03-10 16:53:18', 'admin');
INSERT INTO `activity` VALUES ('1739', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603603,\"discount\":\"12313\"}', '{\"updated_at\":1457603598,\"discount\":12313}', '2016-03-10 16:53:23', 'admin');
INSERT INTO `activity` VALUES ('1740', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603608,\"discount\":\"12313\"}', '{\"updated_at\":1457603603,\"discount\":12313}', '2016-03-10 16:53:28', 'admin');
INSERT INTO `activity` VALUES ('1741', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603613,\"discount\":\"12313\"}', '{\"updated_at\":1457603608,\"discount\":12313}', '2016-03-10 16:53:33', 'admin');
INSERT INTO `activity` VALUES ('1742', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603618,\"discount\":\"12313\"}', '{\"updated_at\":1457603613,\"discount\":12313}', '2016-03-10 16:53:38', 'admin');
INSERT INTO `activity` VALUES ('1743', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603623,\"discount\":\"12313\"}', '{\"updated_at\":1457603618,\"discount\":12313}', '2016-03-10 16:53:43', 'admin');
INSERT INTO `activity` VALUES ('1744', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603628,\"discount\":\"12313\"}', '{\"updated_at\":1457603623,\"discount\":12313}', '2016-03-10 16:53:48', 'admin');
INSERT INTO `activity` VALUES ('1745', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603633,\"discount\":\"12313\"}', '{\"updated_at\":1457603628,\"discount\":12313}', '2016-03-10 16:53:53', 'admin');
INSERT INTO `activity` VALUES ('1746', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603638,\"discount\":\"12313\"}', '{\"updated_at\":1457603633,\"discount\":12313}', '2016-03-10 16:53:58', 'admin');
INSERT INTO `activity` VALUES ('1747', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603643,\"discount\":\"12313\"}', '{\"updated_at\":1457603638,\"discount\":12313}', '2016-03-10 16:54:03', 'admin');
INSERT INTO `activity` VALUES ('1748', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603648,\"discount\":\"12313\"}', '{\"updated_at\":1457603643,\"discount\":12313}', '2016-03-10 16:54:08', 'admin');
INSERT INTO `activity` VALUES ('1749', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603653,\"discount\":\"12313\"}', '{\"updated_at\":1457603648,\"discount\":12313}', '2016-03-10 16:54:13', 'admin');
INSERT INTO `activity` VALUES ('1750', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603658,\"discount\":\"12313\"}', '{\"updated_at\":1457603653,\"discount\":12313}', '2016-03-10 16:54:18', 'admin');
INSERT INTO `activity` VALUES ('1751', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603663,\"discount\":\"12313\"}', '{\"updated_at\":1457603658,\"discount\":12313}', '2016-03-10 16:54:23', 'admin');
INSERT INTO `activity` VALUES ('1752', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603668,\"discount\":\"12313\"}', '{\"updated_at\":1457603663,\"discount\":12313}', '2016-03-10 16:54:28', 'admin');
INSERT INTO `activity` VALUES ('1753', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603673,\"discount\":\"12313\"}', '{\"updated_at\":1457603668,\"discount\":12313}', '2016-03-10 16:54:33', 'admin');
INSERT INTO `activity` VALUES ('1754', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603678,\"discount\":\"12313\"}', '{\"updated_at\":1457603673,\"discount\":12313}', '2016-03-10 16:54:38', 'admin');
INSERT INTO `activity` VALUES ('1755', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603683,\"discount\":\"12313\"}', '{\"updated_at\":1457603678,\"discount\":12313}', '2016-03-10 16:54:43', 'admin');
INSERT INTO `activity` VALUES ('1756', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603688,\"discount\":\"12313\"}', '{\"updated_at\":1457603683,\"discount\":12313}', '2016-03-10 16:54:48', 'admin');
INSERT INTO `activity` VALUES ('1757', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603693,\"discount\":\"12313\"}', '{\"updated_at\":1457603688,\"discount\":12313}', '2016-03-10 16:54:53', 'admin');
INSERT INTO `activity` VALUES ('1758', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603698,\"discount\":\"12313\"}', '{\"updated_at\":1457603693,\"discount\":12313}', '2016-03-10 16:54:58', 'admin');
INSERT INTO `activity` VALUES ('1759', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603703,\"discount\":\"12313\"}', '{\"updated_at\":1457603698,\"discount\":12313}', '2016-03-10 16:55:03', 'admin');
INSERT INTO `activity` VALUES ('1760', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603708,\"discount\":\"12313\"}', '{\"updated_at\":1457603703,\"discount\":12313}', '2016-03-10 16:55:08', 'admin');
INSERT INTO `activity` VALUES ('1761', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603713,\"discount\":\"12313\"}', '{\"updated_at\":1457603708,\"discount\":12313}', '2016-03-10 16:55:13', 'admin');
INSERT INTO `activity` VALUES ('1762', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603718,\"discount\":\"12313\"}', '{\"updated_at\":1457603713,\"discount\":12313}', '2016-03-10 16:55:18', 'admin');
INSERT INTO `activity` VALUES ('1763', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603723,\"discount\":\"12313\"}', '{\"updated_at\":1457603718,\"discount\":12313}', '2016-03-10 16:55:23', 'admin');
INSERT INTO `activity` VALUES ('1764', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603728,\"discount\":\"12313\"}', '{\"updated_at\":1457603723,\"discount\":12313}', '2016-03-10 16:55:28', 'admin');
INSERT INTO `activity` VALUES ('1765', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603733,\"discount\":\"12313\"}', '{\"updated_at\":1457603728,\"discount\":12313}', '2016-03-10 16:55:33', 'admin');
INSERT INTO `activity` VALUES ('1766', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603738,\"discount\":\"12313\"}', '{\"updated_at\":1457603733,\"discount\":12313}', '2016-03-10 16:55:38', 'admin');
INSERT INTO `activity` VALUES ('1767', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603743,\"discount\":\"12313\"}', '{\"updated_at\":1457603738,\"discount\":12313}', '2016-03-10 16:55:43', 'admin');
INSERT INTO `activity` VALUES ('1768', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603748,\"discount\":\"12313\"}', '{\"updated_at\":1457603743,\"discount\":12313}', '2016-03-10 16:55:48', 'admin');
INSERT INTO `activity` VALUES ('1769', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603753,\"discount\":\"12313\"}', '{\"updated_at\":1457603748,\"discount\":12313}', '2016-03-10 16:55:53', 'admin');
INSERT INTO `activity` VALUES ('1770', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603758,\"discount\":\"12313\"}', '{\"updated_at\":1457603753,\"discount\":12313}', '2016-03-10 16:55:58', 'admin');
INSERT INTO `activity` VALUES ('1771', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603763,\"discount\":\"12313\"}', '{\"updated_at\":1457603758,\"discount\":12313}', '2016-03-10 16:56:03', 'admin');
INSERT INTO `activity` VALUES ('1772', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603768,\"discount\":\"12313\"}', '{\"updated_at\":1457603763,\"discount\":12313}', '2016-03-10 16:56:08', 'admin');
INSERT INTO `activity` VALUES ('1773', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603773,\"discount\":\"12313\"}', '{\"updated_at\":1457603768,\"discount\":12313}', '2016-03-10 16:56:13', 'admin');
INSERT INTO `activity` VALUES ('1774', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603778,\"discount\":\"12313\"}', '{\"updated_at\":1457603773,\"discount\":12313}', '2016-03-10 16:56:18', 'admin');
INSERT INTO `activity` VALUES ('1775', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603783,\"discount\":\"12313\"}', '{\"updated_at\":1457603778,\"discount\":12313}', '2016-03-10 16:56:23', 'admin');
INSERT INTO `activity` VALUES ('1776', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603788,\"discount\":\"12313\"}', '{\"updated_at\":1457603783,\"discount\":12313}', '2016-03-10 16:56:28', 'admin');
INSERT INTO `activity` VALUES ('1777', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603793,\"discount\":\"12313\"}', '{\"updated_at\":1457603788,\"discount\":12313}', '2016-03-10 16:56:33', 'admin');
INSERT INTO `activity` VALUES ('1778', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603798,\"discount\":\"12313\"}', '{\"updated_at\":1457603793,\"discount\":12313}', '2016-03-10 16:56:38', 'admin');
INSERT INTO `activity` VALUES ('1779', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603803,\"discount\":\"12313\"}', '{\"updated_at\":1457603798,\"discount\":12313}', '2016-03-10 16:56:43', 'admin');
INSERT INTO `activity` VALUES ('1780', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603808,\"discount\":\"12313\"}', '{\"updated_at\":1457603803,\"discount\":12313}', '2016-03-10 16:56:48', 'admin');
INSERT INTO `activity` VALUES ('1781', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603813,\"discount\":\"12313\"}', '{\"updated_at\":1457603808,\"discount\":12313}', '2016-03-10 16:56:53', 'admin');
INSERT INTO `activity` VALUES ('1782', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603818,\"discount\":\"12313\"}', '{\"updated_at\":1457603813,\"discount\":12313}', '2016-03-10 16:56:58', 'admin');
INSERT INTO `activity` VALUES ('1783', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603823,\"discount\":\"12313\"}', '{\"updated_at\":1457603818,\"discount\":12313}', '2016-03-10 16:57:03', 'admin');
INSERT INTO `activity` VALUES ('1784', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603828,\"discount\":\"12313\"}', '{\"updated_at\":1457603823,\"discount\":12313}', '2016-03-10 16:57:08', 'admin');
INSERT INTO `activity` VALUES ('1785', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603833,\"discount\":\"12313\"}', '{\"updated_at\":1457603828,\"discount\":12313}', '2016-03-10 16:57:13', 'admin');
INSERT INTO `activity` VALUES ('1786', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603838,\"discount\":\"12313\"}', '{\"updated_at\":1457603833,\"discount\":12313}', '2016-03-10 16:57:18', 'admin');
INSERT INTO `activity` VALUES ('1787', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603843,\"discount\":\"12313\"}', '{\"updated_at\":1457603838,\"discount\":12313}', '2016-03-10 16:57:23', 'admin');
INSERT INTO `activity` VALUES ('1788', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603848,\"discount\":\"12313\"}', '{\"updated_at\":1457603843,\"discount\":12313}', '2016-03-10 16:57:28', 'admin');
INSERT INTO `activity` VALUES ('1789', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603853,\"discount\":\"12313\"}', '{\"updated_at\":1457603848,\"discount\":12313}', '2016-03-10 16:57:33', 'admin');
INSERT INTO `activity` VALUES ('1790', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603858,\"discount\":\"12313\"}', '{\"updated_at\":1457603853,\"discount\":12313}', '2016-03-10 16:57:38', 'admin');
INSERT INTO `activity` VALUES ('1791', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603863,\"discount\":\"12313\"}', '{\"updated_at\":1457603858,\"discount\":12313}', '2016-03-10 16:57:43', 'admin');
INSERT INTO `activity` VALUES ('1792', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603868,\"discount\":\"12313\"}', '{\"updated_at\":1457603863,\"discount\":12313}', '2016-03-10 16:57:48', 'admin');
INSERT INTO `activity` VALUES ('1793', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603873,\"discount\":\"12313\"}', '{\"updated_at\":1457603868,\"discount\":12313}', '2016-03-10 16:57:53', 'admin');
INSERT INTO `activity` VALUES ('1794', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603878,\"discount\":\"12313\"}', '{\"updated_at\":1457603873,\"discount\":12313}', '2016-03-10 16:57:58', 'admin');
INSERT INTO `activity` VALUES ('1795', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603883,\"discount\":\"12313\"}', '{\"updated_at\":1457603878,\"discount\":12313}', '2016-03-10 16:58:03', 'admin');
INSERT INTO `activity` VALUES ('1796', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603888,\"discount\":\"12313\"}', '{\"updated_at\":1457603883,\"discount\":12313}', '2016-03-10 16:58:08', 'admin');
INSERT INTO `activity` VALUES ('1797', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603893,\"discount\":\"12313\"}', '{\"updated_at\":1457603888,\"discount\":12313}', '2016-03-10 16:58:13', 'admin');
INSERT INTO `activity` VALUES ('1798', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603898,\"discount\":\"12313\"}', '{\"updated_at\":1457603893,\"discount\":12313}', '2016-03-10 16:58:18', 'admin');
INSERT INTO `activity` VALUES ('1799', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603903,\"discount\":\"12313\"}', '{\"updated_at\":1457603898,\"discount\":12313}', '2016-03-10 16:58:23', 'admin');
INSERT INTO `activity` VALUES ('1800', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603908,\"discount\":\"12313\"}', '{\"updated_at\":1457603903,\"discount\":12313}', '2016-03-10 16:58:28', 'admin');
INSERT INTO `activity` VALUES ('1801', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603913,\"discount\":\"12313\"}', '{\"updated_at\":1457603908,\"discount\":12313}', '2016-03-10 16:58:33', 'admin');
INSERT INTO `activity` VALUES ('1802', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603918,\"discount\":\"12313\"}', '{\"updated_at\":1457603913,\"discount\":12313}', '2016-03-10 16:58:38', 'admin');
INSERT INTO `activity` VALUES ('1803', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603923,\"discount\":\"12313\"}', '{\"updated_at\":1457603918,\"discount\":12313}', '2016-03-10 16:58:43', 'admin');
INSERT INTO `activity` VALUES ('1804', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603928,\"discount\":\"12313\"}', '{\"updated_at\":1457603923,\"discount\":12313}', '2016-03-10 16:58:48', 'admin');
INSERT INTO `activity` VALUES ('1805', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603933,\"discount\":\"12313\"}', '{\"updated_at\":1457603928,\"discount\":12313}', '2016-03-10 16:58:53', 'admin');
INSERT INTO `activity` VALUES ('1806', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603938,\"discount\":\"12313\"}', '{\"updated_at\":1457603933,\"discount\":12313}', '2016-03-10 16:58:58', 'admin');
INSERT INTO `activity` VALUES ('1807', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603943,\"discount\":\"12313\"}', '{\"updated_at\":1457603938,\"discount\":12313}', '2016-03-10 16:59:03', 'admin');
INSERT INTO `activity` VALUES ('1808', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603948,\"discount\":\"12313\"}', '{\"updated_at\":1457603943,\"discount\":12313}', '2016-03-10 16:59:08', 'admin');
INSERT INTO `activity` VALUES ('1809', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603953,\"discount\":\"12313\"}', '{\"updated_at\":1457603948,\"discount\":12313}', '2016-03-10 16:59:13', 'admin');
INSERT INTO `activity` VALUES ('1810', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603958,\"discount\":\"12313\"}', '{\"updated_at\":1457603953,\"discount\":12313}', '2016-03-10 16:59:18', 'admin');
INSERT INTO `activity` VALUES ('1811', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603963,\"discount\":\"12313\"}', '{\"updated_at\":1457603958,\"discount\":12313}', '2016-03-10 16:59:23', 'admin');
INSERT INTO `activity` VALUES ('1812', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603968,\"discount\":\"12313\"}', '{\"updated_at\":1457603963,\"discount\":12313}', '2016-03-10 16:59:28', 'admin');
INSERT INTO `activity` VALUES ('1813', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603973,\"discount\":\"12313\"}', '{\"updated_at\":1457603968,\"discount\":12313}', '2016-03-10 16:59:33', 'admin');
INSERT INTO `activity` VALUES ('1814', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603978,\"discount\":\"12313\"}', '{\"updated_at\":1457603973,\"discount\":12313}', '2016-03-10 16:59:38', 'admin');
INSERT INTO `activity` VALUES ('1815', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603983,\"discount\":\"12313\"}', '{\"updated_at\":1457603978,\"discount\":12313}', '2016-03-10 16:59:43', 'admin');
INSERT INTO `activity` VALUES ('1816', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603988,\"discount\":\"12313\"}', '{\"updated_at\":1457603983,\"discount\":12313}', '2016-03-10 16:59:48', 'admin');
INSERT INTO `activity` VALUES ('1817', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603993,\"discount\":\"12313\"}', '{\"updated_at\":1457603988,\"discount\":12313}', '2016-03-10 16:59:53', 'admin');
INSERT INTO `activity` VALUES ('1818', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457603998,\"discount\":\"12313\"}', '{\"updated_at\":1457603993,\"discount\":12313}', '2016-03-10 16:59:58', 'admin');
INSERT INTO `activity` VALUES ('1819', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604003,\"discount\":\"12313\"}', '{\"updated_at\":1457603998,\"discount\":12313}', '2016-03-10 17:00:03', 'admin');
INSERT INTO `activity` VALUES ('1820', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604007,\"discount\":\"12313\"}', '{\"updated_at\":1457604003,\"discount\":12313}', '2016-03-10 17:00:07', 'admin');
INSERT INTO `activity` VALUES ('1821', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604013,\"discount\":\"12313\"}', '{\"updated_at\":1457604007,\"discount\":12313}', '2016-03-10 17:00:13', 'admin');
INSERT INTO `activity` VALUES ('1822', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604018,\"discount\":\"12313\"}', '{\"updated_at\":1457604013,\"discount\":12313}', '2016-03-10 17:00:18', 'admin');
INSERT INTO `activity` VALUES ('1823', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604023,\"discount\":\"12313\"}', '{\"updated_at\":1457604018,\"discount\":12313}', '2016-03-10 17:00:23', 'admin');
INSERT INTO `activity` VALUES ('1824', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604028,\"discount\":\"12313\"}', '{\"updated_at\":1457604023,\"discount\":12313}', '2016-03-10 17:00:28', 'admin');
INSERT INTO `activity` VALUES ('1825', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604033,\"discount\":\"12313\"}', '{\"updated_at\":1457604028,\"discount\":12313}', '2016-03-10 17:00:33', 'admin');
INSERT INTO `activity` VALUES ('1826', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604038,\"discount\":\"12313\"}', '{\"updated_at\":1457604033,\"discount\":12313}', '2016-03-10 17:00:38', 'admin');
INSERT INTO `activity` VALUES ('1827', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604043,\"discount\":\"12313\"}', '{\"updated_at\":1457604038,\"discount\":12313}', '2016-03-10 17:00:43', 'admin');
INSERT INTO `activity` VALUES ('1828', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604048,\"discount\":\"12313\"}', '{\"updated_at\":1457604043,\"discount\":12313}', '2016-03-10 17:00:48', 'admin');
INSERT INTO `activity` VALUES ('1829', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604053,\"discount\":\"12313\"}', '{\"updated_at\":1457604048,\"discount\":12313}', '2016-03-10 17:00:53', 'admin');
INSERT INTO `activity` VALUES ('1830', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604058,\"discount\":\"12313\"}', '{\"updated_at\":1457604053,\"discount\":12313}', '2016-03-10 17:00:58', 'admin');
INSERT INTO `activity` VALUES ('1831', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604063,\"discount\":\"12313\"}', '{\"updated_at\":1457604058,\"discount\":12313}', '2016-03-10 17:01:03', 'admin');
INSERT INTO `activity` VALUES ('1832', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604068,\"discount\":\"12313\"}', '{\"updated_at\":1457604063,\"discount\":12313}', '2016-03-10 17:01:08', 'admin');
INSERT INTO `activity` VALUES ('1833', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604073,\"discount\":\"12313\"}', '{\"updated_at\":1457604068,\"discount\":12313}', '2016-03-10 17:01:13', 'admin');
INSERT INTO `activity` VALUES ('1834', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604078,\"discount\":\"12313\"}', '{\"updated_at\":1457604073,\"discount\":12313}', '2016-03-10 17:01:18', 'admin');
INSERT INTO `activity` VALUES ('1835', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604083,\"discount\":\"12313\"}', '{\"updated_at\":1457604078,\"discount\":12313}', '2016-03-10 17:01:23', 'admin');
INSERT INTO `activity` VALUES ('1836', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604088,\"discount\":\"12313\"}', '{\"updated_at\":1457604083,\"discount\":12313}', '2016-03-10 17:01:28', 'admin');
INSERT INTO `activity` VALUES ('1837', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604093,\"discount\":\"12313\"}', '{\"updated_at\":1457604088,\"discount\":12313}', '2016-03-10 17:01:33', 'admin');
INSERT INTO `activity` VALUES ('1838', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604098,\"discount\":\"12313\"}', '{\"updated_at\":1457604093,\"discount\":12313}', '2016-03-10 17:01:38', 'admin');
INSERT INTO `activity` VALUES ('1839', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604103,\"discount\":\"12313\"}', '{\"updated_at\":1457604098,\"discount\":12313}', '2016-03-10 17:01:43', 'admin');
INSERT INTO `activity` VALUES ('1840', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604107,\"discount\":\"12313\"}', '{\"updated_at\":1457604103,\"discount\":12313}', '2016-03-10 17:01:47', 'admin');
INSERT INTO `activity` VALUES ('1841', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604116,\"discount\":\"12313\"}', '{\"updated_at\":1457604107,\"discount\":12313}', '2016-03-10 17:01:56', 'admin');
INSERT INTO `activity` VALUES ('1842', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604121,\"discount\":\"12313\"}', '{\"updated_at\":1457604116,\"discount\":12313}', '2016-03-10 17:02:01', 'admin');
INSERT INTO `activity` VALUES ('1843', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604126,\"discount\":\"12313\"}', '{\"updated_at\":1457604121,\"discount\":12313}', '2016-03-10 17:02:06', 'admin');
INSERT INTO `activity` VALUES ('1844', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604131,\"discount\":\"12313\"}', '{\"updated_at\":1457604126,\"discount\":12313}', '2016-03-10 17:02:11', 'admin');
INSERT INTO `activity` VALUES ('1845', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604136,\"discount\":\"12313\"}', '{\"updated_at\":1457604131,\"discount\":12313}', '2016-03-10 17:02:16', 'admin');
INSERT INTO `activity` VALUES ('1846', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604141,\"discount\":\"12313\"}', '{\"updated_at\":1457604136,\"discount\":12313}', '2016-03-10 17:02:21', 'admin');
INSERT INTO `activity` VALUES ('1847', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604146,\"discount\":\"12313\"}', '{\"updated_at\":1457604141,\"discount\":12313}', '2016-03-10 17:02:26', 'admin');
INSERT INTO `activity` VALUES ('1848', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604151,\"discount\":\"12313\"}', '{\"updated_at\":1457604146,\"discount\":12313}', '2016-03-10 17:02:31', 'admin');
INSERT INTO `activity` VALUES ('1849', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604156,\"discount\":\"12313\"}', '{\"updated_at\":1457604151,\"discount\":12313}', '2016-03-10 17:02:36', 'admin');
INSERT INTO `activity` VALUES ('1850', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604161,\"discount\":\"12313\"}', '{\"updated_at\":1457604156,\"discount\":12313}', '2016-03-10 17:02:41', 'admin');
INSERT INTO `activity` VALUES ('1851', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604166,\"discount\":\"12313\"}', '{\"updated_at\":1457604161,\"discount\":12313}', '2016-03-10 17:02:46', 'admin');
INSERT INTO `activity` VALUES ('1852', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604171,\"discount\":\"12313\"}', '{\"updated_at\":1457604166,\"discount\":12313}', '2016-03-10 17:02:51', 'admin');
INSERT INTO `activity` VALUES ('1853', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604176,\"discount\":\"12313\"}', '{\"updated_at\":1457604171,\"discount\":12313}', '2016-03-10 17:02:56', 'admin');
INSERT INTO `activity` VALUES ('1854', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604181,\"discount\":\"12313\"}', '{\"updated_at\":1457604176,\"discount\":12313}', '2016-03-10 17:03:01', 'admin');
INSERT INTO `activity` VALUES ('1855', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604186,\"discount\":\"12313\"}', '{\"updated_at\":1457604181,\"discount\":12313}', '2016-03-10 17:03:06', 'admin');
INSERT INTO `activity` VALUES ('1856', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604191,\"discount\":\"12313\"}', '{\"updated_at\":1457604186,\"discount\":12313}', '2016-03-10 17:03:11', 'admin');
INSERT INTO `activity` VALUES ('1857', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604196,\"discount\":\"12313\"}', '{\"updated_at\":1457604191,\"discount\":12313}', '2016-03-10 17:03:16', 'admin');
INSERT INTO `activity` VALUES ('1858', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604201,\"discount\":\"12313\"}', '{\"updated_at\":1457604196,\"discount\":12313}', '2016-03-10 17:03:21', 'admin');
INSERT INTO `activity` VALUES ('1859', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604206,\"discount\":\"12313\"}', '{\"updated_at\":1457604201,\"discount\":12313}', '2016-03-10 17:03:26', 'admin');
INSERT INTO `activity` VALUES ('1860', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604211,\"discount\":\"12313\"}', '{\"updated_at\":1457604206,\"discount\":12313}', '2016-03-10 17:03:31', 'admin');
INSERT INTO `activity` VALUES ('1861', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604216,\"discount\":\"12313\"}', '{\"updated_at\":1457604211,\"discount\":12313}', '2016-03-10 17:03:36', 'admin');
INSERT INTO `activity` VALUES ('1862', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604221,\"discount\":\"12313\"}', '{\"updated_at\":1457604216,\"discount\":12313}', '2016-03-10 17:03:41', 'admin');
INSERT INTO `activity` VALUES ('1863', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604226,\"discount\":\"12313\"}', '{\"updated_at\":1457604221,\"discount\":12313}', '2016-03-10 17:03:46', 'admin');
INSERT INTO `activity` VALUES ('1864', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604231,\"discount\":\"12313\"}', '{\"updated_at\":1457604226,\"discount\":12313}', '2016-03-10 17:03:51', 'admin');
INSERT INTO `activity` VALUES ('1865', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604236,\"discount\":\"12313\"}', '{\"updated_at\":1457604231,\"discount\":12313}', '2016-03-10 17:03:56', 'admin');
INSERT INTO `activity` VALUES ('1866', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604241,\"discount\":\"12313\"}', '{\"updated_at\":1457604236,\"discount\":12313}', '2016-03-10 17:04:01', 'admin');
INSERT INTO `activity` VALUES ('1867', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604246,\"discount\":\"12313\"}', '{\"updated_at\":1457604241,\"discount\":12313}', '2016-03-10 17:04:06', 'admin');
INSERT INTO `activity` VALUES ('1868', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604251,\"discount\":\"12313\"}', '{\"updated_at\":1457604246,\"discount\":12313}', '2016-03-10 17:04:11', 'admin');
INSERT INTO `activity` VALUES ('1869', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604256,\"discount\":\"12313\"}', '{\"updated_at\":1457604251,\"discount\":12313}', '2016-03-10 17:04:16', 'admin');
INSERT INTO `activity` VALUES ('1870', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604261,\"discount\":\"12313\"}', '{\"updated_at\":1457604256,\"discount\":12313}', '2016-03-10 17:04:21', 'admin');
INSERT INTO `activity` VALUES ('1871', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604266,\"discount\":\"12313\"}', '{\"updated_at\":1457604261,\"discount\":12313}', '2016-03-10 17:04:26', 'admin');
INSERT INTO `activity` VALUES ('1872', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604271,\"discount\":\"12313\"}', '{\"updated_at\":1457604266,\"discount\":12313}', '2016-03-10 17:04:31', 'admin');
INSERT INTO `activity` VALUES ('1873', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604276,\"discount\":\"12313\"}', '{\"updated_at\":1457604271,\"discount\":12313}', '2016-03-10 17:04:36', 'admin');
INSERT INTO `activity` VALUES ('1874', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604281,\"discount\":\"12313\"}', '{\"updated_at\":1457604276,\"discount\":12313}', '2016-03-10 17:04:41', 'admin');
INSERT INTO `activity` VALUES ('1875', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604286,\"discount\":\"12313\"}', '{\"updated_at\":1457604281,\"discount\":12313}', '2016-03-10 17:04:46', 'admin');
INSERT INTO `activity` VALUES ('1876', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604291,\"discount\":\"12313\"}', '{\"updated_at\":1457604286,\"discount\":12313}', '2016-03-10 17:04:51', 'admin');
INSERT INTO `activity` VALUES ('1877', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604296,\"discount\":\"12313\"}', '{\"updated_at\":1457604291,\"discount\":12313}', '2016-03-10 17:04:56', 'admin');
INSERT INTO `activity` VALUES ('1878', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604301,\"discount\":\"12313\"}', '{\"updated_at\":1457604296,\"discount\":12313}', '2016-03-10 17:05:01', 'admin');
INSERT INTO `activity` VALUES ('1879', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604306,\"discount\":\"12313\"}', '{\"updated_at\":1457604301,\"discount\":12313}', '2016-03-10 17:05:06', 'admin');
INSERT INTO `activity` VALUES ('1880', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604311,\"discount\":\"12313\"}', '{\"updated_at\":1457604306,\"discount\":12313}', '2016-03-10 17:05:11', 'admin');
INSERT INTO `activity` VALUES ('1881', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604316,\"discount\":\"12313\"}', '{\"updated_at\":1457604311,\"discount\":12313}', '2016-03-10 17:05:16', 'admin');
INSERT INTO `activity` VALUES ('1882', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604321,\"discount\":\"12313\"}', '{\"updated_at\":1457604316,\"discount\":12313}', '2016-03-10 17:05:21', 'admin');
INSERT INTO `activity` VALUES ('1883', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604326,\"discount\":\"12313\"}', '{\"updated_at\":1457604321,\"discount\":12313}', '2016-03-10 17:05:26', 'admin');
INSERT INTO `activity` VALUES ('1884', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604331,\"discount\":\"12313\"}', '{\"updated_at\":1457604326,\"discount\":12313}', '2016-03-10 17:05:31', 'admin');
INSERT INTO `activity` VALUES ('1885', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604336,\"discount\":\"12313\"}', '{\"updated_at\":1457604331,\"discount\":12313}', '2016-03-10 17:05:36', 'admin');
INSERT INTO `activity` VALUES ('1886', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604341,\"discount\":\"12313\"}', '{\"updated_at\":1457604336,\"discount\":12313}', '2016-03-10 17:05:41', 'admin');
INSERT INTO `activity` VALUES ('1887', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604346,\"discount\":\"12313\"}', '{\"updated_at\":1457604341,\"discount\":12313}', '2016-03-10 17:05:46', 'admin');
INSERT INTO `activity` VALUES ('1888', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604351,\"discount\":\"12313\"}', '{\"updated_at\":1457604346,\"discount\":12313}', '2016-03-10 17:05:51', 'admin');
INSERT INTO `activity` VALUES ('1889', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604356,\"discount\":\"12313\"}', '{\"updated_at\":1457604351,\"discount\":12313}', '2016-03-10 17:05:56', 'admin');
INSERT INTO `activity` VALUES ('1890', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604361,\"discount\":\"12313\"}', '{\"updated_at\":1457604356,\"discount\":12313}', '2016-03-10 17:06:01', 'admin');
INSERT INTO `activity` VALUES ('1891', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604366,\"discount\":\"12313\"}', '{\"updated_at\":1457604361,\"discount\":12313}', '2016-03-10 17:06:06', 'admin');
INSERT INTO `activity` VALUES ('1892', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604371,\"discount\":\"12313\"}', '{\"updated_at\":1457604366,\"discount\":12313}', '2016-03-10 17:06:11', 'admin');
INSERT INTO `activity` VALUES ('1893', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604376,\"discount\":\"12313\"}', '{\"updated_at\":1457604371,\"discount\":12313}', '2016-03-10 17:06:16', 'admin');
INSERT INTO `activity` VALUES ('1894', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604381,\"discount\":\"12313\"}', '{\"updated_at\":1457604376,\"discount\":12313}', '2016-03-10 17:06:21', 'admin');
INSERT INTO `activity` VALUES ('1895', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604386,\"discount\":\"12313\"}', '{\"updated_at\":1457604381,\"discount\":12313}', '2016-03-10 17:06:26', 'admin');
INSERT INTO `activity` VALUES ('1896', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604391,\"discount\":\"12313\"}', '{\"updated_at\":1457604386,\"discount\":12313}', '2016-03-10 17:06:31', 'admin');
INSERT INTO `activity` VALUES ('1897', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604396,\"discount\":\"12313\"}', '{\"updated_at\":1457604391,\"discount\":12313}', '2016-03-10 17:06:36', 'admin');
INSERT INTO `activity` VALUES ('1898', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604401,\"discount\":\"12313\"}', '{\"updated_at\":1457604396,\"discount\":12313}', '2016-03-10 17:06:41', 'admin');
INSERT INTO `activity` VALUES ('1899', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604406,\"discount\":\"12313\"}', '{\"updated_at\":1457604401,\"discount\":12313}', '2016-03-10 17:06:46', 'admin');
INSERT INTO `activity` VALUES ('1900', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604411,\"discount\":\"12313\"}', '{\"updated_at\":1457604406,\"discount\":12313}', '2016-03-10 17:06:51', 'admin');
INSERT INTO `activity` VALUES ('1901', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604416,\"discount\":\"12313\"}', '{\"updated_at\":1457604411,\"discount\":12313}', '2016-03-10 17:06:56', 'admin');
INSERT INTO `activity` VALUES ('1902', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604421,\"discount\":\"12313\"}', '{\"updated_at\":1457604416,\"discount\":12313}', '2016-03-10 17:07:01', 'admin');
INSERT INTO `activity` VALUES ('1903', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604426,\"discount\":\"12313\"}', '{\"updated_at\":1457604421,\"discount\":12313}', '2016-03-10 17:07:06', 'admin');
INSERT INTO `activity` VALUES ('1904', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604431,\"discount\":\"12313\"}', '{\"updated_at\":1457604426,\"discount\":12313}', '2016-03-10 17:07:11', 'admin');
INSERT INTO `activity` VALUES ('1905', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604436,\"discount\":\"12313\"}', '{\"updated_at\":1457604431,\"discount\":12313}', '2016-03-10 17:07:16', 'admin');
INSERT INTO `activity` VALUES ('1906', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604441,\"discount\":\"12313\"}', '{\"updated_at\":1457604436,\"discount\":12313}', '2016-03-10 17:07:21', 'admin');
INSERT INTO `activity` VALUES ('1907', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604446,\"discount\":\"12313\"}', '{\"updated_at\":1457604441,\"discount\":12313}', '2016-03-10 17:07:26', 'admin');
INSERT INTO `activity` VALUES ('1908', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604451,\"discount\":\"12313\"}', '{\"updated_at\":1457604446,\"discount\":12313}', '2016-03-10 17:07:31', 'admin');
INSERT INTO `activity` VALUES ('1909', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604456,\"discount\":\"12313\"}', '{\"updated_at\":1457604451,\"discount\":12313}', '2016-03-10 17:07:36', 'admin');
INSERT INTO `activity` VALUES ('1910', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604461,\"discount\":\"12313\"}', '{\"updated_at\":1457604456,\"discount\":12313}', '2016-03-10 17:07:41', 'admin');
INSERT INTO `activity` VALUES ('1911', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604466,\"discount\":\"12313\"}', '{\"updated_at\":1457604461,\"discount\":12313}', '2016-03-10 17:07:46', 'admin');
INSERT INTO `activity` VALUES ('1912', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604471,\"discount\":\"12313\"}', '{\"updated_at\":1457604466,\"discount\":12313}', '2016-03-10 17:07:51', 'admin');
INSERT INTO `activity` VALUES ('1913', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604476,\"discount\":\"12313\"}', '{\"updated_at\":1457604471,\"discount\":12313}', '2016-03-10 17:07:56', 'admin');
INSERT INTO `activity` VALUES ('1914', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604481,\"discount\":\"12313\"}', '{\"updated_at\":1457604476,\"discount\":12313}', '2016-03-10 17:08:01', 'admin');
INSERT INTO `activity` VALUES ('1915', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604486,\"discount\":\"12313\"}', '{\"updated_at\":1457604481,\"discount\":12313}', '2016-03-10 17:08:06', 'admin');
INSERT INTO `activity` VALUES ('1916', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604491,\"discount\":\"12313\"}', '{\"updated_at\":1457604486,\"discount\":12313}', '2016-03-10 17:08:11', 'admin');
INSERT INTO `activity` VALUES ('1917', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604496,\"discount\":\"12313\"}', '{\"updated_at\":1457604491,\"discount\":12313}', '2016-03-10 17:08:16', 'admin');
INSERT INTO `activity` VALUES ('1918', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604501,\"discount\":\"12313\"}', '{\"updated_at\":1457604496,\"discount\":12313}', '2016-03-10 17:08:21', 'admin');
INSERT INTO `activity` VALUES ('1919', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604506,\"discount\":\"12313\"}', '{\"updated_at\":1457604501,\"discount\":12313}', '2016-03-10 17:08:26', 'admin');
INSERT INTO `activity` VALUES ('1920', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604511,\"discount\":\"12313\"}', '{\"updated_at\":1457604506,\"discount\":12313}', '2016-03-10 17:08:31', 'admin');
INSERT INTO `activity` VALUES ('1921', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604516,\"discount\":\"12313\"}', '{\"updated_at\":1457604511,\"discount\":12313}', '2016-03-10 17:08:36', 'admin');
INSERT INTO `activity` VALUES ('1922', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604521,\"discount\":\"12313\"}', '{\"updated_at\":1457604516,\"discount\":12313}', '2016-03-10 17:08:41', 'admin');
INSERT INTO `activity` VALUES ('1923', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604526,\"discount\":\"12313\"}', '{\"updated_at\":1457604521,\"discount\":12313}', '2016-03-10 17:08:46', 'admin');
INSERT INTO `activity` VALUES ('1924', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604531,\"discount\":\"12313\"}', '{\"updated_at\":1457604526,\"discount\":12313}', '2016-03-10 17:08:51', 'admin');
INSERT INTO `activity` VALUES ('1925', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604536,\"discount\":\"12313\"}', '{\"updated_at\":1457604531,\"discount\":12313}', '2016-03-10 17:08:56', 'admin');
INSERT INTO `activity` VALUES ('1926', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604541,\"discount\":\"12313\"}', '{\"updated_at\":1457604536,\"discount\":12313}', '2016-03-10 17:09:01', 'admin');
INSERT INTO `activity` VALUES ('1927', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604546,\"discount\":\"12313\"}', '{\"updated_at\":1457604541,\"discount\":12313}', '2016-03-10 17:09:06', 'admin');
INSERT INTO `activity` VALUES ('1928', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604551,\"discount\":\"12313\"}', '{\"updated_at\":1457604546,\"discount\":12313}', '2016-03-10 17:09:11', 'admin');
INSERT INTO `activity` VALUES ('1929', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604556,\"discount\":\"12313\"}', '{\"updated_at\":1457604551,\"discount\":12313}', '2016-03-10 17:09:16', 'admin');
INSERT INTO `activity` VALUES ('1930', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604561,\"discount\":\"12313\"}', '{\"updated_at\":1457604556,\"discount\":12313}', '2016-03-10 17:09:21', 'admin');
INSERT INTO `activity` VALUES ('1931', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604566,\"discount\":\"12313\"}', '{\"updated_at\":1457604561,\"discount\":12313}', '2016-03-10 17:09:26', 'admin');
INSERT INTO `activity` VALUES ('1932', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604571,\"discount\":\"12313\"}', '{\"updated_at\":1457604566,\"discount\":12313}', '2016-03-10 17:09:31', 'admin');
INSERT INTO `activity` VALUES ('1933', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604576,\"discount\":\"12313\"}', '{\"updated_at\":1457604571,\"discount\":12313}', '2016-03-10 17:09:36', 'admin');
INSERT INTO `activity` VALUES ('1934', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604581,\"discount\":\"12313\"}', '{\"updated_at\":1457604576,\"discount\":12313}', '2016-03-10 17:09:41', 'admin');
INSERT INTO `activity` VALUES ('1935', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604586,\"discount\":\"12313\"}', '{\"updated_at\":1457604581,\"discount\":12313}', '2016-03-10 17:09:46', 'admin');
INSERT INTO `activity` VALUES ('1936', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604591,\"discount\":\"12313\"}', '{\"updated_at\":1457604586,\"discount\":12313}', '2016-03-10 17:09:51', 'admin');
INSERT INTO `activity` VALUES ('1937', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604596,\"discount\":\"12313\"}', '{\"updated_at\":1457604591,\"discount\":12313}', '2016-03-10 17:09:56', 'admin');
INSERT INTO `activity` VALUES ('1938', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604601,\"discount\":\"12313\"}', '{\"updated_at\":1457604596,\"discount\":12313}', '2016-03-10 17:10:01', 'admin');
INSERT INTO `activity` VALUES ('1939', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604606,\"discount\":\"12313\"}', '{\"updated_at\":1457604601,\"discount\":12313}', '2016-03-10 17:10:06', 'admin');
INSERT INTO `activity` VALUES ('1940', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604611,\"discount\":\"12313\"}', '{\"updated_at\":1457604606,\"discount\":12313}', '2016-03-10 17:10:11', 'admin');
INSERT INTO `activity` VALUES ('1941', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604616,\"discount\":\"12313\"}', '{\"updated_at\":1457604611,\"discount\":12313}', '2016-03-10 17:10:16', 'admin');
INSERT INTO `activity` VALUES ('1942', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604621,\"discount\":\"12313\"}', '{\"updated_at\":1457604616,\"discount\":12313}', '2016-03-10 17:10:21', 'admin');
INSERT INTO `activity` VALUES ('1943', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604626,\"discount\":\"12313\"}', '{\"updated_at\":1457604621,\"discount\":12313}', '2016-03-10 17:10:26', 'admin');
INSERT INTO `activity` VALUES ('1944', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604631,\"discount\":\"12313\"}', '{\"updated_at\":1457604626,\"discount\":12313}', '2016-03-10 17:10:31', 'admin');
INSERT INTO `activity` VALUES ('1945', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604636,\"discount\":\"12313\"}', '{\"updated_at\":1457604631,\"discount\":12313}', '2016-03-10 17:10:36', 'admin');
INSERT INTO `activity` VALUES ('1946', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604641,\"discount\":\"12313\"}', '{\"updated_at\":1457604636,\"discount\":12313}', '2016-03-10 17:10:41', 'admin');
INSERT INTO `activity` VALUES ('1947', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604646,\"discount\":\"12313\"}', '{\"updated_at\":1457604641,\"discount\":12313}', '2016-03-10 17:10:46', 'admin');
INSERT INTO `activity` VALUES ('1948', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604651,\"discount\":\"12313\"}', '{\"updated_at\":1457604646,\"discount\":12313}', '2016-03-10 17:10:51', 'admin');
INSERT INTO `activity` VALUES ('1949', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604656,\"discount\":\"12313\"}', '{\"updated_at\":1457604651,\"discount\":12313}', '2016-03-10 17:10:56', 'admin');
INSERT INTO `activity` VALUES ('1950', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604661,\"discount\":\"12313\"}', '{\"updated_at\":1457604656,\"discount\":12313}', '2016-03-10 17:11:01', 'admin');
INSERT INTO `activity` VALUES ('1951', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604666,\"discount\":\"12313\"}', '{\"updated_at\":1457604661,\"discount\":12313}', '2016-03-10 17:11:06', 'admin');
INSERT INTO `activity` VALUES ('1952', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604671,\"discount\":\"12313\"}', '{\"updated_at\":1457604666,\"discount\":12313}', '2016-03-10 17:11:11', 'admin');
INSERT INTO `activity` VALUES ('1953', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604677,\"discount\":\"12313\"}', '{\"updated_at\":1457604671,\"discount\":12313}', '2016-03-10 17:11:17', 'admin');
INSERT INTO `activity` VALUES ('1954', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604682,\"discount\":\"12313\"}', '{\"updated_at\":1457604677,\"discount\":12313}', '2016-03-10 17:11:22', 'admin');
INSERT INTO `activity` VALUES ('1955', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604687,\"discount\":\"12313\"}', '{\"updated_at\":1457604682,\"discount\":12313}', '2016-03-10 17:11:27', 'admin');
INSERT INTO `activity` VALUES ('1956', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604692,\"discount\":\"12313\"}', '{\"updated_at\":1457604687,\"discount\":12313}', '2016-03-10 17:11:32', 'admin');
INSERT INTO `activity` VALUES ('1957', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604697,\"discount\":\"12313\"}', '{\"updated_at\":1457604692,\"discount\":12313}', '2016-03-10 17:11:37', 'admin');
INSERT INTO `activity` VALUES ('1958', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604702,\"discount\":\"12313\"}', '{\"updated_at\":1457604697,\"discount\":12313}', '2016-03-10 17:11:42', 'admin');
INSERT INTO `activity` VALUES ('1959', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604707,\"discount\":\"12313\"}', '{\"updated_at\":1457604702,\"discount\":12313}', '2016-03-10 17:11:47', 'admin');
INSERT INTO `activity` VALUES ('1960', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604712,\"discount\":\"12313\"}', '{\"updated_at\":1457604707,\"discount\":12313}', '2016-03-10 17:11:52', 'admin');
INSERT INTO `activity` VALUES ('1961', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604717,\"discount\":\"12313\"}', '{\"updated_at\":1457604712,\"discount\":12313}', '2016-03-10 17:11:57', 'admin');
INSERT INTO `activity` VALUES ('1962', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604722,\"discount\":\"12313\"}', '{\"updated_at\":1457604717,\"discount\":12313}', '2016-03-10 17:12:02', 'admin');
INSERT INTO `activity` VALUES ('1963', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604727,\"discount\":\"12313\"}', '{\"updated_at\":1457604722,\"discount\":12313}', '2016-03-10 17:12:07', 'admin');
INSERT INTO `activity` VALUES ('1964', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604732,\"discount\":\"12313\"}', '{\"updated_at\":1457604727,\"discount\":12313}', '2016-03-10 17:12:12', 'admin');
INSERT INTO `activity` VALUES ('1965', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604737,\"discount\":\"12313\"}', '{\"updated_at\":1457604732,\"discount\":12313}', '2016-03-10 17:12:17', 'admin');
INSERT INTO `activity` VALUES ('1966', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604743,\"discount\":\"12313\"}', '{\"updated_at\":1457604737,\"discount\":12313}', '2016-03-10 17:12:23', 'admin');
INSERT INTO `activity` VALUES ('1967', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604747,\"discount\":\"12313\"}', '{\"updated_at\":1457604743,\"discount\":12313}', '2016-03-10 17:12:27', 'admin');
INSERT INTO `activity` VALUES ('1968', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604752,\"discount\":\"12313\"}', '{\"updated_at\":1457604747,\"discount\":12313}', '2016-03-10 17:12:32', 'admin');
INSERT INTO `activity` VALUES ('1969', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604757,\"discount\":\"12313\"}', '{\"updated_at\":1457604752,\"discount\":12313}', '2016-03-10 17:12:37', 'admin');
INSERT INTO `activity` VALUES ('1970', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604762,\"discount\":\"12313\"}', '{\"updated_at\":1457604757,\"discount\":12313}', '2016-03-10 17:12:42', 'admin');
INSERT INTO `activity` VALUES ('1971', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604767,\"discount\":\"12313\"}', '{\"updated_at\":1457604762,\"discount\":12313}', '2016-03-10 17:12:47', 'admin');
INSERT INTO `activity` VALUES ('1972', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604772,\"discount\":\"12313\"}', '{\"updated_at\":1457604767,\"discount\":12313}', '2016-03-10 17:12:52', 'admin');
INSERT INTO `activity` VALUES ('1973', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604777,\"discount\":\"12313\"}', '{\"updated_at\":1457604772,\"discount\":12313}', '2016-03-10 17:12:57', 'admin');
INSERT INTO `activity` VALUES ('1974', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604782,\"discount\":\"12313\"}', '{\"updated_at\":1457604777,\"discount\":12313}', '2016-03-10 17:13:02', 'admin');
INSERT INTO `activity` VALUES ('1975', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604787,\"discount\":\"12313\"}', '{\"updated_at\":1457604782,\"discount\":12313}', '2016-03-10 17:13:07', 'admin');
INSERT INTO `activity` VALUES ('1976', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604792,\"discount\":\"12313\"}', '{\"updated_at\":1457604787,\"discount\":12313}', '2016-03-10 17:13:12', 'admin');
INSERT INTO `activity` VALUES ('1977', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604797,\"discount\":\"12313\"}', '{\"updated_at\":1457604792,\"discount\":12313}', '2016-03-10 17:13:17', 'admin');
INSERT INTO `activity` VALUES ('1978', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604802,\"discount\":\"12313\"}', '{\"updated_at\":1457604797,\"discount\":12313}', '2016-03-10 17:13:22', 'admin');
INSERT INTO `activity` VALUES ('1979', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604807,\"discount\":\"12313\"}', '{\"updated_at\":1457604802,\"discount\":12313}', '2016-03-10 17:13:27', 'admin');
INSERT INTO `activity` VALUES ('1980', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604812,\"discount\":\"12313\"}', '{\"updated_at\":1457604807,\"discount\":12313}', '2016-03-10 17:13:32', 'admin');
INSERT INTO `activity` VALUES ('1981', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604817,\"discount\":\"12313\"}', '{\"updated_at\":1457604812,\"discount\":12313}', '2016-03-10 17:13:37', 'admin');
INSERT INTO `activity` VALUES ('1982', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604822,\"discount\":\"12313\"}', '{\"updated_at\":1457604817,\"discount\":12313}', '2016-03-10 17:13:42', 'admin');
INSERT INTO `activity` VALUES ('1983', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604827,\"discount\":\"12313\"}', '{\"updated_at\":1457604822,\"discount\":12313}', '2016-03-10 17:13:47', 'admin');
INSERT INTO `activity` VALUES ('1984', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604832,\"discount\":\"12313\"}', '{\"updated_at\":1457604827,\"discount\":12313}', '2016-03-10 17:13:52', 'admin');
INSERT INTO `activity` VALUES ('1985', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604837,\"discount\":\"12313\"}', '{\"updated_at\":1457604832,\"discount\":12313}', '2016-03-10 17:13:57', 'admin');
INSERT INTO `activity` VALUES ('1986', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604842,\"discount\":\"12313\"}', '{\"updated_at\":1457604837,\"discount\":12313}', '2016-03-10 17:14:02', 'admin');
INSERT INTO `activity` VALUES ('1987', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604847,\"discount\":\"12313\"}', '{\"updated_at\":1457604842,\"discount\":12313}', '2016-03-10 17:14:07', 'admin');
INSERT INTO `activity` VALUES ('1988', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604852,\"discount\":\"12313\"}', '{\"updated_at\":1457604847,\"discount\":12313}', '2016-03-10 17:14:12', 'admin');
INSERT INTO `activity` VALUES ('1989', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604857,\"discount\":\"12313\"}', '{\"updated_at\":1457604852,\"discount\":12313}', '2016-03-10 17:14:17', 'admin');
INSERT INTO `activity` VALUES ('1990', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604862,\"discount\":\"12313\"}', '{\"updated_at\":1457604857,\"discount\":12313}', '2016-03-10 17:14:22', 'admin');
INSERT INTO `activity` VALUES ('1991', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604867,\"discount\":\"12313\"}', '{\"updated_at\":1457604862,\"discount\":12313}', '2016-03-10 17:14:27', 'admin');
INSERT INTO `activity` VALUES ('1992', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604872,\"discount\":\"12313\"}', '{\"updated_at\":1457604867,\"discount\":12313}', '2016-03-10 17:14:32', 'admin');
INSERT INTO `activity` VALUES ('1993', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604877,\"discount\":\"12313\"}', '{\"updated_at\":1457604872,\"discount\":12313}', '2016-03-10 17:14:37', 'admin');
INSERT INTO `activity` VALUES ('1994', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604882,\"discount\":\"12313\"}', '{\"updated_at\":1457604877,\"discount\":12313}', '2016-03-10 17:14:42', 'admin');
INSERT INTO `activity` VALUES ('1995', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604887,\"discount\":\"12313\"}', '{\"updated_at\":1457604882,\"discount\":12313}', '2016-03-10 17:14:47', 'admin');
INSERT INTO `activity` VALUES ('1996', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604892,\"discount\":\"12313\"}', '{\"updated_at\":1457604887,\"discount\":12313}', '2016-03-10 17:14:52', 'admin');
INSERT INTO `activity` VALUES ('1997', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604897,\"discount\":\"12313\"}', '{\"updated_at\":1457604892,\"discount\":12313}', '2016-03-10 17:14:57', 'admin');
INSERT INTO `activity` VALUES ('1998', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604902,\"discount\":\"12313\"}', '{\"updated_at\":1457604897,\"discount\":12313}', '2016-03-10 17:15:02', 'admin');
INSERT INTO `activity` VALUES ('1999', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604907,\"discount\":\"12313\"}', '{\"updated_at\":1457604902,\"discount\":12313}', '2016-03-10 17:15:07', 'admin');
INSERT INTO `activity` VALUES ('2000', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604912,\"discount\":\"12313\"}', '{\"updated_at\":1457604907,\"discount\":12313}', '2016-03-10 17:15:12', 'admin');
INSERT INTO `activity` VALUES ('2001', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604917,\"discount\":\"12313\"}', '{\"updated_at\":1457604912,\"discount\":12313}', '2016-03-10 17:15:17', 'admin');
INSERT INTO `activity` VALUES ('2002', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604922,\"discount\":\"12313\"}', '{\"updated_at\":1457604917,\"discount\":12313}', '2016-03-10 17:15:22', 'admin');
INSERT INTO `activity` VALUES ('2003', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604927,\"discount\":\"12313\"}', '{\"updated_at\":1457604922,\"discount\":12313}', '2016-03-10 17:15:27', 'admin');
INSERT INTO `activity` VALUES ('2004', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604932,\"discount\":\"12313\"}', '{\"updated_at\":1457604927,\"discount\":12313}', '2016-03-10 17:15:32', 'admin');
INSERT INTO `activity` VALUES ('2005', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604937,\"discount\":\"12313\"}', '{\"updated_at\":1457604932,\"discount\":12313}', '2016-03-10 17:15:37', 'admin');
INSERT INTO `activity` VALUES ('2006', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604942,\"discount\":\"12313\"}', '{\"updated_at\":1457604937,\"discount\":12313}', '2016-03-10 17:15:42', 'admin');
INSERT INTO `activity` VALUES ('2007', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604947,\"discount\":\"12313\"}', '{\"updated_at\":1457604942,\"discount\":12313}', '2016-03-10 17:15:47', 'admin');
INSERT INTO `activity` VALUES ('2008', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604952,\"discount\":\"12313\"}', '{\"updated_at\":1457604947,\"discount\":12313}', '2016-03-10 17:15:52', 'admin');
INSERT INTO `activity` VALUES ('2009', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604957,\"discount\":\"12313\"}', '{\"updated_at\":1457604952,\"discount\":12313}', '2016-03-10 17:15:57', 'admin');
INSERT INTO `activity` VALUES ('2010', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604962,\"discount\":\"12313\"}', '{\"updated_at\":1457604957,\"discount\":12313}', '2016-03-10 17:16:02', 'admin');
INSERT INTO `activity` VALUES ('2011', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604967,\"discount\":\"12313\"}', '{\"updated_at\":1457604962,\"discount\":12313}', '2016-03-10 17:16:07', 'admin');
INSERT INTO `activity` VALUES ('2012', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604972,\"discount\":\"12313\"}', '{\"updated_at\":1457604967,\"discount\":12313}', '2016-03-10 17:16:12', 'admin');
INSERT INTO `activity` VALUES ('2013', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604977,\"discount\":\"12313\"}', '{\"updated_at\":1457604972,\"discount\":12313}', '2016-03-10 17:16:17', 'admin');
INSERT INTO `activity` VALUES ('2014', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604982,\"discount\":\"12313\"}', '{\"updated_at\":1457604977,\"discount\":12313}', '2016-03-10 17:16:22', 'admin');
INSERT INTO `activity` VALUES ('2015', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604987,\"discount\":\"12313\"}', '{\"updated_at\":1457604982,\"discount\":12313}', '2016-03-10 17:16:27', 'admin');
INSERT INTO `activity` VALUES ('2016', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604992,\"discount\":\"12313\"}', '{\"updated_at\":1457604987,\"discount\":12313}', '2016-03-10 17:16:32', 'admin');
INSERT INTO `activity` VALUES ('2017', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457604997,\"discount\":\"12313\"}', '{\"updated_at\":1457604992,\"discount\":12313}', '2016-03-10 17:16:37', 'admin');
INSERT INTO `activity` VALUES ('2018', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605002,\"discount\":\"12313\"}', '{\"updated_at\":1457604997,\"discount\":12313}', '2016-03-10 17:16:42', 'admin');
INSERT INTO `activity` VALUES ('2019', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605007,\"discount\":\"12313\"}', '{\"updated_at\":1457605002,\"discount\":12313}', '2016-03-10 17:16:47', 'admin');
INSERT INTO `activity` VALUES ('2020', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605012,\"discount\":\"12313\"}', '{\"updated_at\":1457605007,\"discount\":12313}', '2016-03-10 17:16:52', 'admin');
INSERT INTO `activity` VALUES ('2021', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605017,\"discount\":\"12313\"}', '{\"updated_at\":1457605012,\"discount\":12313}', '2016-03-10 17:16:57', 'admin');
INSERT INTO `activity` VALUES ('2022', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605022,\"discount\":\"12313\"}', '{\"updated_at\":1457605017,\"discount\":12313}', '2016-03-10 17:17:02', 'admin');
INSERT INTO `activity` VALUES ('2023', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605027,\"discount\":\"12313\"}', '{\"updated_at\":1457605022,\"discount\":12313}', '2016-03-10 17:17:07', 'admin');
INSERT INTO `activity` VALUES ('2024', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605032,\"discount\":\"12313\"}', '{\"updated_at\":1457605027,\"discount\":12313}', '2016-03-10 17:17:12', 'admin');
INSERT INTO `activity` VALUES ('2025', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605037,\"discount\":\"12313\"}', '{\"updated_at\":1457605032,\"discount\":12313}', '2016-03-10 17:17:17', 'admin');
INSERT INTO `activity` VALUES ('2026', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605042,\"discount\":\"12313\"}', '{\"updated_at\":1457605037,\"discount\":12313}', '2016-03-10 17:17:22', 'admin');
INSERT INTO `activity` VALUES ('2027', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605047,\"discount\":\"12313\"}', '{\"updated_at\":1457605042,\"discount\":12313}', '2016-03-10 17:17:27', 'admin');
INSERT INTO `activity` VALUES ('2028', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605052,\"discount\":\"12313\"}', '{\"updated_at\":1457605047,\"discount\":12313}', '2016-03-10 17:17:32', 'admin');
INSERT INTO `activity` VALUES ('2029', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605057,\"discount\":\"12313\"}', '{\"updated_at\":1457605052,\"discount\":12313}', '2016-03-10 17:17:37', 'admin');
INSERT INTO `activity` VALUES ('2030', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605062,\"discount\":\"12313\"}', '{\"updated_at\":1457605057,\"discount\":12313}', '2016-03-10 17:17:42', 'admin');
INSERT INTO `activity` VALUES ('2031', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605067,\"discount\":\"12313\"}', '{\"updated_at\":1457605062,\"discount\":12313}', '2016-03-10 17:17:47', 'admin');
INSERT INTO `activity` VALUES ('2032', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605072,\"discount\":\"12313\"}', '{\"updated_at\":1457605067,\"discount\":12313}', '2016-03-10 17:17:52', 'admin');
INSERT INTO `activity` VALUES ('2033', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605077,\"discount\":\"12313\"}', '{\"updated_at\":1457605072,\"discount\":12313}', '2016-03-10 17:17:57', 'admin');
INSERT INTO `activity` VALUES ('2034', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605082,\"discount\":\"12313\"}', '{\"updated_at\":1457605077,\"discount\":12313}', '2016-03-10 17:18:02', 'admin');
INSERT INTO `activity` VALUES ('2035', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605087,\"discount\":\"12313\"}', '{\"updated_at\":1457605082,\"discount\":12313}', '2016-03-10 17:18:07', 'admin');
INSERT INTO `activity` VALUES ('2036', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605092,\"discount\":\"12313\"}', '{\"updated_at\":1457605087,\"discount\":12313}', '2016-03-10 17:18:12', 'admin');
INSERT INTO `activity` VALUES ('2037', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605097,\"discount\":\"12313\"}', '{\"updated_at\":1457605092,\"discount\":12313}', '2016-03-10 17:18:17', 'admin');
INSERT INTO `activity` VALUES ('2038', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605102,\"discount\":\"12313\"}', '{\"updated_at\":1457605097,\"discount\":12313}', '2016-03-10 17:18:22', 'admin');
INSERT INTO `activity` VALUES ('2039', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605107,\"discount\":\"12313\"}', '{\"updated_at\":1457605102,\"discount\":12313}', '2016-03-10 17:18:27', 'admin');
INSERT INTO `activity` VALUES ('2040', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605112,\"discount\":\"12313\"}', '{\"updated_at\":1457605107,\"discount\":12313}', '2016-03-10 17:18:32', 'admin');
INSERT INTO `activity` VALUES ('2041', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605117,\"discount\":\"12313\"}', '{\"updated_at\":1457605112,\"discount\":12313}', '2016-03-10 17:18:37', 'admin');
INSERT INTO `activity` VALUES ('2042', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605122,\"discount\":\"12313\"}', '{\"updated_at\":1457605117,\"discount\":12313}', '2016-03-10 17:18:42', 'admin');
INSERT INTO `activity` VALUES ('2043', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605127,\"discount\":\"12313\"}', '{\"updated_at\":1457605122,\"discount\":12313}', '2016-03-10 17:18:47', 'admin');
INSERT INTO `activity` VALUES ('2044', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605132,\"discount\":\"12313\"}', '{\"updated_at\":1457605127,\"discount\":12313}', '2016-03-10 17:18:52', 'admin');
INSERT INTO `activity` VALUES ('2045', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605137,\"discount\":\"12313\"}', '{\"updated_at\":1457605132,\"discount\":12313}', '2016-03-10 17:18:57', 'admin');
INSERT INTO `activity` VALUES ('2046', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605142,\"discount\":\"12313\"}', '{\"updated_at\":1457605137,\"discount\":12313}', '2016-03-10 17:19:02', 'admin');
INSERT INTO `activity` VALUES ('2047', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605147,\"discount\":\"12313\"}', '{\"updated_at\":1457605142,\"discount\":12313}', '2016-03-10 17:19:07', 'admin');
INSERT INTO `activity` VALUES ('2048', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605152,\"discount\":\"12313\"}', '{\"updated_at\":1457605147,\"discount\":12313}', '2016-03-10 17:19:12', 'admin');
INSERT INTO `activity` VALUES ('2049', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605157,\"discount\":\"12313\"}', '{\"updated_at\":1457605152,\"discount\":12313}', '2016-03-10 17:19:17', 'admin');
INSERT INTO `activity` VALUES ('2050', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605162,\"discount\":\"12313\"}', '{\"updated_at\":1457605157,\"discount\":12313}', '2016-03-10 17:19:22', 'admin');
INSERT INTO `activity` VALUES ('2051', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605167,\"discount\":\"12313\"}', '{\"updated_at\":1457605162,\"discount\":12313}', '2016-03-10 17:19:27', 'admin');
INSERT INTO `activity` VALUES ('2052', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605172,\"discount\":\"12313\"}', '{\"updated_at\":1457605167,\"discount\":12313}', '2016-03-10 17:19:32', 'admin');
INSERT INTO `activity` VALUES ('2053', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605177,\"discount\":\"12313\"}', '{\"updated_at\":1457605172,\"discount\":12313}', '2016-03-10 17:19:37', 'admin');
INSERT INTO `activity` VALUES ('2054', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605182,\"discount\":\"12313\"}', '{\"updated_at\":1457605177,\"discount\":12313}', '2016-03-10 17:19:42', 'admin');
INSERT INTO `activity` VALUES ('2055', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605187,\"discount\":\"12313\"}', '{\"updated_at\":1457605182,\"discount\":12313}', '2016-03-10 17:19:47', 'admin');
INSERT INTO `activity` VALUES ('2056', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605192,\"discount\":\"12313\"}', '{\"updated_at\":1457605187,\"discount\":12313}', '2016-03-10 17:19:52', 'admin');
INSERT INTO `activity` VALUES ('2057', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605197,\"discount\":\"12313\"}', '{\"updated_at\":1457605192,\"discount\":12313}', '2016-03-10 17:19:57', 'admin');
INSERT INTO `activity` VALUES ('2058', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605202,\"discount\":\"12313\"}', '{\"updated_at\":1457605197,\"discount\":12313}', '2016-03-10 17:20:02', 'admin');
INSERT INTO `activity` VALUES ('2059', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605207,\"discount\":\"12313\"}', '{\"updated_at\":1457605202,\"discount\":12313}', '2016-03-10 17:20:07', 'admin');
INSERT INTO `activity` VALUES ('2060', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605212,\"discount\":\"12313\"}', '{\"updated_at\":1457605207,\"discount\":12313}', '2016-03-10 17:20:12', 'admin');
INSERT INTO `activity` VALUES ('2061', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605217,\"discount\":\"12313\"}', '{\"updated_at\":1457605212,\"discount\":12313}', '2016-03-10 17:20:17', 'admin');
INSERT INTO `activity` VALUES ('2062', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605222,\"discount\":\"12313\"}', '{\"updated_at\":1457605217,\"discount\":12313}', '2016-03-10 17:20:22', 'admin');
INSERT INTO `activity` VALUES ('2063', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605227,\"discount\":\"12313\"}', '{\"updated_at\":1457605222,\"discount\":12313}', '2016-03-10 17:20:27', 'admin');
INSERT INTO `activity` VALUES ('2064', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605232,\"discount\":\"12313\"}', '{\"updated_at\":1457605227,\"discount\":12313}', '2016-03-10 17:20:32', 'admin');
INSERT INTO `activity` VALUES ('2065', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605237,\"discount\":\"12313\"}', '{\"updated_at\":1457605232,\"discount\":12313}', '2016-03-10 17:20:37', 'admin');
INSERT INTO `activity` VALUES ('2066', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605242,\"discount\":\"12313\"}', '{\"updated_at\":1457605237,\"discount\":12313}', '2016-03-10 17:20:42', 'admin');
INSERT INTO `activity` VALUES ('2067', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605247,\"discount\":\"12313\"}', '{\"updated_at\":1457605242,\"discount\":12313}', '2016-03-10 17:20:47', 'admin');
INSERT INTO `activity` VALUES ('2068', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605252,\"discount\":\"12313\"}', '{\"updated_at\":1457605247,\"discount\":12313}', '2016-03-10 17:20:52', 'admin');
INSERT INTO `activity` VALUES ('2069', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605257,\"discount\":\"12313\"}', '{\"updated_at\":1457605252,\"discount\":12313}', '2016-03-10 17:20:57', 'admin');
INSERT INTO `activity` VALUES ('2070', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605262,\"discount\":\"12313\"}', '{\"updated_at\":1457605257,\"discount\":12313}', '2016-03-10 17:21:02', 'admin');
INSERT INTO `activity` VALUES ('2071', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605267,\"discount\":\"12313\"}', '{\"updated_at\":1457605262,\"discount\":12313}', '2016-03-10 17:21:07', 'admin');
INSERT INTO `activity` VALUES ('2072', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605272,\"discount\":\"12313\"}', '{\"updated_at\":1457605267,\"discount\":12313}', '2016-03-10 17:21:12', 'admin');
INSERT INTO `activity` VALUES ('2073', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605277,\"discount\":\"12313\"}', '{\"updated_at\":1457605272,\"discount\":12313}', '2016-03-10 17:21:17', 'admin');
INSERT INTO `activity` VALUES ('2074', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605282,\"discount\":\"12313\"}', '{\"updated_at\":1457605277,\"discount\":12313}', '2016-03-10 17:21:22', 'admin');
INSERT INTO `activity` VALUES ('2075', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605287,\"discount\":\"12313\"}', '{\"updated_at\":1457605282,\"discount\":12313}', '2016-03-10 17:21:27', 'admin');
INSERT INTO `activity` VALUES ('2076', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605292,\"discount\":\"12313\"}', '{\"updated_at\":1457605287,\"discount\":12313}', '2016-03-10 17:21:32', 'admin');
INSERT INTO `activity` VALUES ('2077', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605297,\"discount\":\"12313\"}', '{\"updated_at\":1457605292,\"discount\":12313}', '2016-03-10 17:21:37', 'admin');
INSERT INTO `activity` VALUES ('2078', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605302,\"discount\":\"12313\"}', '{\"updated_at\":1457605297,\"discount\":12313}', '2016-03-10 17:21:42', 'admin');
INSERT INTO `activity` VALUES ('2079', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605307,\"discount\":\"12313\"}', '{\"updated_at\":1457605302,\"discount\":12313}', '2016-03-10 17:21:47', 'admin');
INSERT INTO `activity` VALUES ('2080', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605312,\"discount\":\"12313\"}', '{\"updated_at\":1457605307,\"discount\":12313}', '2016-03-10 17:21:52', 'admin');
INSERT INTO `activity` VALUES ('2081', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605317,\"discount\":\"12313\"}', '{\"updated_at\":1457605312,\"discount\":12313}', '2016-03-10 17:21:57', 'admin');
INSERT INTO `activity` VALUES ('2082', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605322,\"discount\":\"12313\"}', '{\"updated_at\":1457605317,\"discount\":12313}', '2016-03-10 17:22:02', 'admin');
INSERT INTO `activity` VALUES ('2083', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605327,\"discount\":\"12313\"}', '{\"updated_at\":1457605322,\"discount\":12313}', '2016-03-10 17:22:07', 'admin');
INSERT INTO `activity` VALUES ('2084', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605332,\"discount\":\"12313\"}', '{\"updated_at\":1457605327,\"discount\":12313}', '2016-03-10 17:22:12', 'admin');
INSERT INTO `activity` VALUES ('2085', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605337,\"discount\":\"12313\"}', '{\"updated_at\":1457605332,\"discount\":12313}', '2016-03-10 17:22:17', 'admin');
INSERT INTO `activity` VALUES ('2086', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605342,\"discount\":\"12313\"}', '{\"updated_at\":1457605337,\"discount\":12313}', '2016-03-10 17:22:22', 'admin');
INSERT INTO `activity` VALUES ('2087', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605347,\"discount\":\"12313\"}', '{\"updated_at\":1457605342,\"discount\":12313}', '2016-03-10 17:22:27', 'admin');
INSERT INTO `activity` VALUES ('2088', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605352,\"discount\":\"12313\"}', '{\"updated_at\":1457605347,\"discount\":12313}', '2016-03-10 17:22:32', 'admin');
INSERT INTO `activity` VALUES ('2089', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605357,\"discount\":\"12313\"}', '{\"updated_at\":1457605352,\"discount\":12313}', '2016-03-10 17:22:37', 'admin');
INSERT INTO `activity` VALUES ('2090', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605362,\"discount\":\"12313\"}', '{\"updated_at\":1457605357,\"discount\":12313}', '2016-03-10 17:22:42', 'admin');
INSERT INTO `activity` VALUES ('2091', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605367,\"discount\":\"12313\"}', '{\"updated_at\":1457605362,\"discount\":12313}', '2016-03-10 17:22:47', 'admin');
INSERT INTO `activity` VALUES ('2092', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605372,\"discount\":\"12313\"}', '{\"updated_at\":1457605367,\"discount\":12313}', '2016-03-10 17:22:52', 'admin');
INSERT INTO `activity` VALUES ('2093', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605377,\"discount\":\"12313\"}', '{\"updated_at\":1457605372,\"discount\":12313}', '2016-03-10 17:22:57', 'admin');
INSERT INTO `activity` VALUES ('2094', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605382,\"discount\":\"12313\"}', '{\"updated_at\":1457605377,\"discount\":12313}', '2016-03-10 17:23:02', 'admin');
INSERT INTO `activity` VALUES ('2095', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605387,\"discount\":\"12313\"}', '{\"updated_at\":1457605382,\"discount\":12313}', '2016-03-10 17:23:07', 'admin');
INSERT INTO `activity` VALUES ('2096', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605392,\"discount\":\"12313\"}', '{\"updated_at\":1457605387,\"discount\":12313}', '2016-03-10 17:23:12', 'admin');
INSERT INTO `activity` VALUES ('2097', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605397,\"discount\":\"12313\"}', '{\"updated_at\":1457605392,\"discount\":12313}', '2016-03-10 17:23:17', 'admin');
INSERT INTO `activity` VALUES ('2098', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605402,\"discount\":\"12313\"}', '{\"updated_at\":1457605397,\"discount\":12313}', '2016-03-10 17:23:22', 'admin');
INSERT INTO `activity` VALUES ('2099', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605407,\"discount\":\"12313\"}', '{\"updated_at\":1457605402,\"discount\":12313}', '2016-03-10 17:23:27', 'admin');
INSERT INTO `activity` VALUES ('2100', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605412,\"discount\":\"12313\"}', '{\"updated_at\":1457605407,\"discount\":12313}', '2016-03-10 17:23:32', 'admin');
INSERT INTO `activity` VALUES ('2101', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605417,\"discount\":\"12313\"}', '{\"updated_at\":1457605412,\"discount\":12313}', '2016-03-10 17:23:37', 'admin');
INSERT INTO `activity` VALUES ('2102', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605422,\"discount\":\"12313\"}', '{\"updated_at\":1457605417,\"discount\":12313}', '2016-03-10 17:23:42', 'admin');
INSERT INTO `activity` VALUES ('2103', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605427,\"discount\":\"12313\"}', '{\"updated_at\":1457605422,\"discount\":12313}', '2016-03-10 17:23:47', 'admin');
INSERT INTO `activity` VALUES ('2104', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605432,\"discount\":\"12313\"}', '{\"updated_at\":1457605427,\"discount\":12313}', '2016-03-10 17:23:52', 'admin');
INSERT INTO `activity` VALUES ('2105', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605437,\"discount\":\"12313\"}', '{\"updated_at\":1457605432,\"discount\":12313}', '2016-03-10 17:23:57', 'admin');
INSERT INTO `activity` VALUES ('2106', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605442,\"discount\":\"12313\"}', '{\"updated_at\":1457605437,\"discount\":12313}', '2016-03-10 17:24:02', 'admin');
INSERT INTO `activity` VALUES ('2107', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605447,\"discount\":\"12313\"}', '{\"updated_at\":1457605442,\"discount\":12313}', '2016-03-10 17:24:07', 'admin');
INSERT INTO `activity` VALUES ('2108', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605452,\"discount\":\"12313\"}', '{\"updated_at\":1457605447,\"discount\":12313}', '2016-03-10 17:24:12', 'admin');
INSERT INTO `activity` VALUES ('2109', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605457,\"discount\":\"12313\"}', '{\"updated_at\":1457605452,\"discount\":12313}', '2016-03-10 17:24:17', 'admin');
INSERT INTO `activity` VALUES ('2110', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605462,\"discount\":\"12313\"}', '{\"updated_at\":1457605457,\"discount\":12313}', '2016-03-10 17:24:22', 'admin');
INSERT INTO `activity` VALUES ('2111', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605467,\"discount\":\"12313\"}', '{\"updated_at\":1457605462,\"discount\":12313}', '2016-03-10 17:24:27', 'admin');
INSERT INTO `activity` VALUES ('2112', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605472,\"discount\":\"12313\"}', '{\"updated_at\":1457605467,\"discount\":12313}', '2016-03-10 17:24:32', 'admin');
INSERT INTO `activity` VALUES ('2113', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605477,\"discount\":\"12313\"}', '{\"updated_at\":1457605472,\"discount\":12313}', '2016-03-10 17:24:37', 'admin');
INSERT INTO `activity` VALUES ('2114', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605482,\"discount\":\"12313\"}', '{\"updated_at\":1457605477,\"discount\":12313}', '2016-03-10 17:24:42', 'admin');
INSERT INTO `activity` VALUES ('2115', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605487,\"discount\":\"12313\"}', '{\"updated_at\":1457605482,\"discount\":12313}', '2016-03-10 17:24:47', 'admin');
INSERT INTO `activity` VALUES ('2116', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605492,\"discount\":\"12313\"}', '{\"updated_at\":1457605487,\"discount\":12313}', '2016-03-10 17:24:52', 'admin');
INSERT INTO `activity` VALUES ('2117', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605497,\"discount\":\"12313\"}', '{\"updated_at\":1457605492,\"discount\":12313}', '2016-03-10 17:24:57', 'admin');
INSERT INTO `activity` VALUES ('2118', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605502,\"discount\":\"12313\"}', '{\"updated_at\":1457605497,\"discount\":12313}', '2016-03-10 17:25:02', 'admin');
INSERT INTO `activity` VALUES ('2119', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605507,\"discount\":\"12313\"}', '{\"updated_at\":1457605502,\"discount\":12313}', '2016-03-10 17:25:07', 'admin');
INSERT INTO `activity` VALUES ('2120', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605512,\"discount\":\"12313\"}', '{\"updated_at\":1457605507,\"discount\":12313}', '2016-03-10 17:25:12', 'admin');
INSERT INTO `activity` VALUES ('2121', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605517,\"discount\":\"12313\"}', '{\"updated_at\":1457605512,\"discount\":12313}', '2016-03-10 17:25:17', 'admin');
INSERT INTO `activity` VALUES ('2122', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605522,\"discount\":\"12313\"}', '{\"updated_at\":1457605517,\"discount\":12313}', '2016-03-10 17:25:22', 'admin');
INSERT INTO `activity` VALUES ('2123', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605527,\"discount\":\"12313\"}', '{\"updated_at\":1457605522,\"discount\":12313}', '2016-03-10 17:25:27', 'admin');
INSERT INTO `activity` VALUES ('2124', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605532,\"discount\":\"12313\"}', '{\"updated_at\":1457605527,\"discount\":12313}', '2016-03-10 17:25:32', 'admin');
INSERT INTO `activity` VALUES ('2125', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605537,\"discount\":\"12313\"}', '{\"updated_at\":1457605532,\"discount\":12313}', '2016-03-10 17:25:37', 'admin');
INSERT INTO `activity` VALUES ('2126', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605542,\"discount\":\"12313\"}', '{\"updated_at\":1457605537,\"discount\":12313}', '2016-03-10 17:25:42', 'admin');
INSERT INTO `activity` VALUES ('2127', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605547,\"discount\":\"12313\"}', '{\"updated_at\":1457605542,\"discount\":12313}', '2016-03-10 17:25:47', 'admin');
INSERT INTO `activity` VALUES ('2128', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605552,\"discount\":\"12313\"}', '{\"updated_at\":1457605547,\"discount\":12313}', '2016-03-10 17:25:52', 'admin');
INSERT INTO `activity` VALUES ('2129', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605557,\"discount\":\"12313\"}', '{\"updated_at\":1457605552,\"discount\":12313}', '2016-03-10 17:25:57', 'admin');
INSERT INTO `activity` VALUES ('2130', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605562,\"discount\":\"12313\"}', '{\"updated_at\":1457605557,\"discount\":12313}', '2016-03-10 17:26:02', 'admin');
INSERT INTO `activity` VALUES ('2131', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605567,\"discount\":\"12313\"}', '{\"updated_at\":1457605562,\"discount\":12313}', '2016-03-10 17:26:07', 'admin');
INSERT INTO `activity` VALUES ('2132', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605572,\"discount\":\"12313\"}', '{\"updated_at\":1457605567,\"discount\":12313}', '2016-03-10 17:26:12', 'admin');
INSERT INTO `activity` VALUES ('2133', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605577,\"discount\":\"12313\"}', '{\"updated_at\":1457605572,\"discount\":12313}', '2016-03-10 17:26:17', 'admin');
INSERT INTO `activity` VALUES ('2134', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605582,\"discount\":\"12313\"}', '{\"updated_at\":1457605577,\"discount\":12313}', '2016-03-10 17:26:22', 'admin');
INSERT INTO `activity` VALUES ('2135', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605587,\"discount\":\"12313\"}', '{\"updated_at\":1457605582,\"discount\":12313}', '2016-03-10 17:26:27', 'admin');
INSERT INTO `activity` VALUES ('2136', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605592,\"discount\":\"12313\"}', '{\"updated_at\":1457605587,\"discount\":12313}', '2016-03-10 17:26:32', 'admin');
INSERT INTO `activity` VALUES ('2137', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605597,\"discount\":\"12313\"}', '{\"updated_at\":1457605592,\"discount\":12313}', '2016-03-10 17:26:37', 'admin');
INSERT INTO `activity` VALUES ('2138', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605602,\"discount\":\"12313\"}', '{\"updated_at\":1457605597,\"discount\":12313}', '2016-03-10 17:26:42', 'admin');
INSERT INTO `activity` VALUES ('2139', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605607,\"discount\":\"12313\"}', '{\"updated_at\":1457605602,\"discount\":12313}', '2016-03-10 17:26:47', 'admin');
INSERT INTO `activity` VALUES ('2140', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605612,\"discount\":\"12313\"}', '{\"updated_at\":1457605607,\"discount\":12313}', '2016-03-10 17:26:52', 'admin');
INSERT INTO `activity` VALUES ('2141', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605617,\"discount\":\"12313\"}', '{\"updated_at\":1457605612,\"discount\":12313}', '2016-03-10 17:26:57', 'admin');
INSERT INTO `activity` VALUES ('2142', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605622,\"discount\":\"12313\"}', '{\"updated_at\":1457605617,\"discount\":12313}', '2016-03-10 17:27:02', 'admin');
INSERT INTO `activity` VALUES ('2143', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605627,\"discount\":\"12313\"}', '{\"updated_at\":1457605622,\"discount\":12313}', '2016-03-10 17:27:07', 'admin');
INSERT INTO `activity` VALUES ('2144', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605632,\"discount\":\"12313\"}', '{\"updated_at\":1457605627,\"discount\":12313}', '2016-03-10 17:27:12', 'admin');
INSERT INTO `activity` VALUES ('2145', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605637,\"discount\":\"12313\"}', '{\"updated_at\":1457605632,\"discount\":12313}', '2016-03-10 17:27:17', 'admin');
INSERT INTO `activity` VALUES ('2146', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605642,\"discount\":\"12313\"}', '{\"updated_at\":1457605637,\"discount\":12313}', '2016-03-10 17:27:22', 'admin');
INSERT INTO `activity` VALUES ('2147', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605647,\"discount\":\"12313\"}', '{\"updated_at\":1457605642,\"discount\":12313}', '2016-03-10 17:27:27', 'admin');
INSERT INTO `activity` VALUES ('2148', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605652,\"discount\":\"12313\"}', '{\"updated_at\":1457605647,\"discount\":12313}', '2016-03-10 17:27:32', 'admin');
INSERT INTO `activity` VALUES ('2149', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605657,\"discount\":\"12313\"}', '{\"updated_at\":1457605652,\"discount\":12313}', '2016-03-10 17:27:37', 'admin');
INSERT INTO `activity` VALUES ('2150', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605662,\"discount\":\"12313\"}', '{\"updated_at\":1457605657,\"discount\":12313}', '2016-03-10 17:27:42', 'admin');
INSERT INTO `activity` VALUES ('2151', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605667,\"discount\":\"12313\"}', '{\"updated_at\":1457605662,\"discount\":12313}', '2016-03-10 17:27:47', 'admin');
INSERT INTO `activity` VALUES ('2152', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605672,\"discount\":\"12313\"}', '{\"updated_at\":1457605667,\"discount\":12313}', '2016-03-10 17:27:52', 'admin');
INSERT INTO `activity` VALUES ('2153', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605677,\"discount\":\"12313\"}', '{\"updated_at\":1457605672,\"discount\":12313}', '2016-03-10 17:27:57', 'admin');
INSERT INTO `activity` VALUES ('2154', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605682,\"discount\":\"12313\"}', '{\"updated_at\":1457605677,\"discount\":12313}', '2016-03-10 17:28:02', 'admin');
INSERT INTO `activity` VALUES ('2155', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605687,\"discount\":\"12313\"}', '{\"updated_at\":1457605682,\"discount\":12313}', '2016-03-10 17:28:07', 'admin');
INSERT INTO `activity` VALUES ('2156', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605692,\"discount\":\"12313\"}', '{\"updated_at\":1457605687,\"discount\":12313}', '2016-03-10 17:28:12', 'admin');
INSERT INTO `activity` VALUES ('2157', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605697,\"discount\":\"12313\"}', '{\"updated_at\":1457605692,\"discount\":12313}', '2016-03-10 17:28:17', 'admin');
INSERT INTO `activity` VALUES ('2158', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605702,\"discount\":\"12313\"}', '{\"updated_at\":1457605697,\"discount\":12313}', '2016-03-10 17:28:22', 'admin');
INSERT INTO `activity` VALUES ('2159', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605707,\"discount\":\"12313\"}', '{\"updated_at\":1457605702,\"discount\":12313}', '2016-03-10 17:28:27', 'admin');
INSERT INTO `activity` VALUES ('2160', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605712,\"discount\":\"12313\"}', '{\"updated_at\":1457605707,\"discount\":12313}', '2016-03-10 17:28:32', 'admin');
INSERT INTO `activity` VALUES ('2161', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605717,\"discount\":\"12313\"}', '{\"updated_at\":1457605712,\"discount\":12313}', '2016-03-10 17:28:37', 'admin');
INSERT INTO `activity` VALUES ('2162', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605722,\"discount\":\"12313\"}', '{\"updated_at\":1457605717,\"discount\":12313}', '2016-03-10 17:28:42', 'admin');
INSERT INTO `activity` VALUES ('2163', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605727,\"discount\":\"12313\"}', '{\"updated_at\":1457605722,\"discount\":12313}', '2016-03-10 17:28:47', 'admin');
INSERT INTO `activity` VALUES ('2164', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605732,\"discount\":\"12313\"}', '{\"updated_at\":1457605727,\"discount\":12313}', '2016-03-10 17:28:52', 'admin');
INSERT INTO `activity` VALUES ('2165', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605737,\"discount\":\"12313\"}', '{\"updated_at\":1457605732,\"discount\":12313}', '2016-03-10 17:28:57', 'admin');
INSERT INTO `activity` VALUES ('2166', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605742,\"discount\":\"12313\"}', '{\"updated_at\":1457605737,\"discount\":12313}', '2016-03-10 17:29:02', 'admin');
INSERT INTO `activity` VALUES ('2167', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605747,\"discount\":\"12313\"}', '{\"updated_at\":1457605742,\"discount\":12313}', '2016-03-10 17:29:07', 'admin');
INSERT INTO `activity` VALUES ('2168', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605752,\"discount\":\"12313\"}', '{\"updated_at\":1457605747,\"discount\":12313}', '2016-03-10 17:29:12', 'admin');
INSERT INTO `activity` VALUES ('2169', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605757,\"discount\":\"12313\"}', '{\"updated_at\":1457605752,\"discount\":12313}', '2016-03-10 17:29:17', 'admin');
INSERT INTO `activity` VALUES ('2170', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605762,\"discount\":\"12313\"}', '{\"updated_at\":1457605757,\"discount\":12313}', '2016-03-10 17:29:22', 'admin');
INSERT INTO `activity` VALUES ('2171', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605767,\"discount\":\"12313\"}', '{\"updated_at\":1457605762,\"discount\":12313}', '2016-03-10 17:29:27', 'admin');
INSERT INTO `activity` VALUES ('2172', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605772,\"discount\":\"12313\"}', '{\"updated_at\":1457605767,\"discount\":12313}', '2016-03-10 17:29:32', 'admin');
INSERT INTO `activity` VALUES ('2173', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605777,\"discount\":\"12313\"}', '{\"updated_at\":1457605772,\"discount\":12313}', '2016-03-10 17:29:37', 'admin');
INSERT INTO `activity` VALUES ('2174', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605782,\"discount\":\"12313\"}', '{\"updated_at\":1457605777,\"discount\":12313}', '2016-03-10 17:29:42', 'admin');
INSERT INTO `activity` VALUES ('2175', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605787,\"discount\":\"12313\"}', '{\"updated_at\":1457605782,\"discount\":12313}', '2016-03-10 17:29:47', 'admin');
INSERT INTO `activity` VALUES ('2176', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605792,\"discount\":\"12313\"}', '{\"updated_at\":1457605787,\"discount\":12313}', '2016-03-10 17:29:52', 'admin');
INSERT INTO `activity` VALUES ('2177', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605797,\"discount\":\"12313\"}', '{\"updated_at\":1457605792,\"discount\":12313}', '2016-03-10 17:29:57', 'admin');
INSERT INTO `activity` VALUES ('2178', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605802,\"discount\":\"12313\"}', '{\"updated_at\":1457605797,\"discount\":12313}', '2016-03-10 17:30:02', 'admin');
INSERT INTO `activity` VALUES ('2179', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605807,\"discount\":\"12313\"}', '{\"updated_at\":1457605802,\"discount\":12313}', '2016-03-10 17:30:07', 'admin');
INSERT INTO `activity` VALUES ('2180', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605812,\"discount\":\"12313\"}', '{\"updated_at\":1457605807,\"discount\":12313}', '2016-03-10 17:30:12', 'admin');
INSERT INTO `activity` VALUES ('2181', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605817,\"discount\":\"12313\"}', '{\"updated_at\":1457605812,\"discount\":12313}', '2016-03-10 17:30:17', 'admin');
INSERT INTO `activity` VALUES ('2182', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605822,\"discount\":\"12313\"}', '{\"updated_at\":1457605817,\"discount\":12313}', '2016-03-10 17:30:22', 'admin');
INSERT INTO `activity` VALUES ('2183', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605827,\"discount\":\"12313\"}', '{\"updated_at\":1457605822,\"discount\":12313}', '2016-03-10 17:30:27', 'admin');
INSERT INTO `activity` VALUES ('2184', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605832,\"discount\":\"12313\"}', '{\"updated_at\":1457605827,\"discount\":12313}', '2016-03-10 17:30:32', 'admin');
INSERT INTO `activity` VALUES ('2185', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605837,\"discount\":\"12313\"}', '{\"updated_at\":1457605832,\"discount\":12313}', '2016-03-10 17:30:37', 'admin');
INSERT INTO `activity` VALUES ('2186', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605842,\"discount\":\"12313\"}', '{\"updated_at\":1457605837,\"discount\":12313}', '2016-03-10 17:30:42', 'admin');
INSERT INTO `activity` VALUES ('2187', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605847,\"discount\":\"12313\"}', '{\"updated_at\":1457605842,\"discount\":12313}', '2016-03-10 17:30:47', 'admin');
INSERT INTO `activity` VALUES ('2188', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605852,\"discount\":\"12313\"}', '{\"updated_at\":1457605847,\"discount\":12313}', '2016-03-10 17:30:52', 'admin');
INSERT INTO `activity` VALUES ('2189', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605857,\"discount\":\"12313\"}', '{\"updated_at\":1457605852,\"discount\":12313}', '2016-03-10 17:30:57', 'admin');
INSERT INTO `activity` VALUES ('2190', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605862,\"discount\":\"12313\"}', '{\"updated_at\":1457605857,\"discount\":12313}', '2016-03-10 17:31:02', 'admin');
INSERT INTO `activity` VALUES ('2191', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605867,\"discount\":\"12313\"}', '{\"updated_at\":1457605862,\"discount\":12313}', '2016-03-10 17:31:07', 'admin');
INSERT INTO `activity` VALUES ('2192', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605872,\"discount\":\"12313\"}', '{\"updated_at\":1457605867,\"discount\":12313}', '2016-03-10 17:31:12', 'admin');
INSERT INTO `activity` VALUES ('2193', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605877,\"discount\":\"12313\"}', '{\"updated_at\":1457605872,\"discount\":12313}', '2016-03-10 17:31:17', 'admin');
INSERT INTO `activity` VALUES ('2194', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605882,\"discount\":\"12313\"}', '{\"updated_at\":1457605877,\"discount\":12313}', '2016-03-10 17:31:22', 'admin');
INSERT INTO `activity` VALUES ('2195', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605887,\"discount\":\"12313\"}', '{\"updated_at\":1457605882,\"discount\":12313}', '2016-03-10 17:31:27', 'admin');
INSERT INTO `activity` VALUES ('2196', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605892,\"discount\":\"12313\"}', '{\"updated_at\":1457605887,\"discount\":12313}', '2016-03-10 17:31:32', 'admin');
INSERT INTO `activity` VALUES ('2197', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605897,\"discount\":\"12313\"}', '{\"updated_at\":1457605892,\"discount\":12313}', '2016-03-10 17:31:37', 'admin');
INSERT INTO `activity` VALUES ('2198', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605902,\"discount\":\"12313\"}', '{\"updated_at\":1457605897,\"discount\":12313}', '2016-03-10 17:31:42', 'admin');
INSERT INTO `activity` VALUES ('2199', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605907,\"discount\":\"12313\"}', '{\"updated_at\":1457605902,\"discount\":12313}', '2016-03-10 17:31:47', 'admin');
INSERT INTO `activity` VALUES ('2200', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605912,\"discount\":\"12313\"}', '{\"updated_at\":1457605907,\"discount\":12313}', '2016-03-10 17:31:52', 'admin');
INSERT INTO `activity` VALUES ('2201', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605917,\"discount\":\"12313\"}', '{\"updated_at\":1457605912,\"discount\":12313}', '2016-03-10 17:31:57', 'admin');
INSERT INTO `activity` VALUES ('2202', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605922,\"discount\":\"12313\"}', '{\"updated_at\":1457605917,\"discount\":12313}', '2016-03-10 17:32:02', 'admin');
INSERT INTO `activity` VALUES ('2203', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605927,\"discount\":\"12313\"}', '{\"updated_at\":1457605922,\"discount\":12313}', '2016-03-10 17:32:07', 'admin');
INSERT INTO `activity` VALUES ('2204', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605932,\"discount\":\"12313\"}', '{\"updated_at\":1457605927,\"discount\":12313}', '2016-03-10 17:32:12', 'admin');
INSERT INTO `activity` VALUES ('2205', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605937,\"discount\":\"12313\"}', '{\"updated_at\":1457605932,\"discount\":12313}', '2016-03-10 17:32:17', 'admin');
INSERT INTO `activity` VALUES ('2206', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605942,\"discount\":\"12313\"}', '{\"updated_at\":1457605937,\"discount\":12313}', '2016-03-10 17:32:22', 'admin');
INSERT INTO `activity` VALUES ('2207', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605947,\"discount\":\"12313\"}', '{\"updated_at\":1457605942,\"discount\":12313}', '2016-03-10 17:32:27', 'admin');
INSERT INTO `activity` VALUES ('2208', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605952,\"discount\":\"12313\"}', '{\"updated_at\":1457605947,\"discount\":12313}', '2016-03-10 17:32:32', 'admin');
INSERT INTO `activity` VALUES ('2209', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605957,\"discount\":\"12313\"}', '{\"updated_at\":1457605952,\"discount\":12313}', '2016-03-10 17:32:37', 'admin');
INSERT INTO `activity` VALUES ('2210', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605962,\"discount\":\"12313\"}', '{\"updated_at\":1457605957,\"discount\":12313}', '2016-03-10 17:32:42', 'admin');
INSERT INTO `activity` VALUES ('2211', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605967,\"discount\":\"12313\"}', '{\"updated_at\":1457605962,\"discount\":12313}', '2016-03-10 17:32:47', 'admin');
INSERT INTO `activity` VALUES ('2212', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605972,\"discount\":\"12313\"}', '{\"updated_at\":1457605967,\"discount\":12313}', '2016-03-10 17:32:52', 'admin');
INSERT INTO `activity` VALUES ('2213', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605977,\"discount\":\"12313\"}', '{\"updated_at\":1457605972,\"discount\":12313}', '2016-03-10 17:32:57', 'admin');
INSERT INTO `activity` VALUES ('2214', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605982,\"discount\":\"12313\"}', '{\"updated_at\":1457605977,\"discount\":12313}', '2016-03-10 17:33:02', 'admin');
INSERT INTO `activity` VALUES ('2215', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605987,\"discount\":\"12313\"}', '{\"updated_at\":1457605982,\"discount\":12313}', '2016-03-10 17:33:07', 'admin');
INSERT INTO `activity` VALUES ('2216', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605992,\"discount\":\"12313\"}', '{\"updated_at\":1457605987,\"discount\":12313}', '2016-03-10 17:33:12', 'admin');
INSERT INTO `activity` VALUES ('2217', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457605997,\"discount\":\"12313\"}', '{\"updated_at\":1457605992,\"discount\":12313}', '2016-03-10 17:33:17', 'admin');
INSERT INTO `activity` VALUES ('2218', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606002,\"discount\":\"12313\"}', '{\"updated_at\":1457605997,\"discount\":12313}', '2016-03-10 17:33:22', 'admin');
INSERT INTO `activity` VALUES ('2219', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606007,\"discount\":\"12313\"}', '{\"updated_at\":1457606002,\"discount\":12313}', '2016-03-10 17:33:27', 'admin');
INSERT INTO `activity` VALUES ('2220', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606012,\"discount\":\"12313\"}', '{\"updated_at\":1457606007,\"discount\":12313}', '2016-03-10 17:33:32', 'admin');
INSERT INTO `activity` VALUES ('2221', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606017,\"discount\":\"12313\"}', '{\"updated_at\":1457606012,\"discount\":12313}', '2016-03-10 17:33:37', 'admin');
INSERT INTO `activity` VALUES ('2222', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606022,\"discount\":\"12313\"}', '{\"updated_at\":1457606017,\"discount\":12313}', '2016-03-10 17:33:42', 'admin');
INSERT INTO `activity` VALUES ('2223', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606027,\"discount\":\"12313\"}', '{\"updated_at\":1457606022,\"discount\":12313}', '2016-03-10 17:33:47', 'admin');
INSERT INTO `activity` VALUES ('2224', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606032,\"discount\":\"12313\"}', '{\"updated_at\":1457606027,\"discount\":12313}', '2016-03-10 17:33:52', 'admin');
INSERT INTO `activity` VALUES ('2225', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606037,\"discount\":\"12313\"}', '{\"updated_at\":1457606032,\"discount\":12313}', '2016-03-10 17:33:57', 'admin');
INSERT INTO `activity` VALUES ('2226', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606042,\"discount\":\"12313\"}', '{\"updated_at\":1457606037,\"discount\":12313}', '2016-03-10 17:34:02', 'admin');
INSERT INTO `activity` VALUES ('2227', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606047,\"discount\":\"12313\"}', '{\"updated_at\":1457606042,\"discount\":12313}', '2016-03-10 17:34:07', 'admin');
INSERT INTO `activity` VALUES ('2228', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606052,\"discount\":\"12313\"}', '{\"updated_at\":1457606047,\"discount\":12313}', '2016-03-10 17:34:12', 'admin');
INSERT INTO `activity` VALUES ('2229', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606057,\"discount\":\"12313\"}', '{\"updated_at\":1457606052,\"discount\":12313}', '2016-03-10 17:34:17', 'admin');
INSERT INTO `activity` VALUES ('2230', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606062,\"discount\":\"12313\"}', '{\"updated_at\":1457606057,\"discount\":12313}', '2016-03-10 17:34:22', 'admin');
INSERT INTO `activity` VALUES ('2231', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606067,\"discount\":\"12313\"}', '{\"updated_at\":1457606062,\"discount\":12313}', '2016-03-10 17:34:27', 'admin');
INSERT INTO `activity` VALUES ('2232', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606072,\"discount\":\"12313\"}', '{\"updated_at\":1457606067,\"discount\":12313}', '2016-03-10 17:34:32', 'admin');
INSERT INTO `activity` VALUES ('2233', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606077,\"discount\":\"12313\"}', '{\"updated_at\":1457606072,\"discount\":12313}', '2016-03-10 17:34:37', 'admin');
INSERT INTO `activity` VALUES ('2234', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606082,\"discount\":\"12313\"}', '{\"updated_at\":1457606077,\"discount\":12313}', '2016-03-10 17:34:42', 'admin');
INSERT INTO `activity` VALUES ('2235', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606087,\"discount\":\"12313\"}', '{\"updated_at\":1457606082,\"discount\":12313}', '2016-03-10 17:34:47', 'admin');
INSERT INTO `activity` VALUES ('2236', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606092,\"discount\":\"12313\"}', '{\"updated_at\":1457606087,\"discount\":12313}', '2016-03-10 17:34:52', 'admin');
INSERT INTO `activity` VALUES ('2237', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606097,\"discount\":\"12313\"}', '{\"updated_at\":1457606092,\"discount\":12313}', '2016-03-10 17:34:57', 'admin');
INSERT INTO `activity` VALUES ('2238', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606102,\"discount\":\"12313\"}', '{\"updated_at\":1457606097,\"discount\":12313}', '2016-03-10 17:35:02', 'admin');
INSERT INTO `activity` VALUES ('2239', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606107,\"discount\":\"12313\"}', '{\"updated_at\":1457606102,\"discount\":12313}', '2016-03-10 17:35:07', 'admin');
INSERT INTO `activity` VALUES ('2240', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606110,\"discount\":\"12313\"}', '{\"updated_at\":1457606107,\"discount\":12313}', '2016-03-10 17:35:10', 'admin');
INSERT INTO `activity` VALUES ('2241', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606115,\"discount\":\"12313\"}', '{\"updated_at\":1457606110,\"discount\":12313}', '2016-03-10 17:35:15', 'admin');
INSERT INTO `activity` VALUES ('2242', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606120,\"discount\":\"12313\"}', '{\"updated_at\":1457606115,\"discount\":12313}', '2016-03-10 17:35:20', 'admin');
INSERT INTO `activity` VALUES ('2243', 'U', 'common\\models\\Order', '5', '{\"discount\":\"12313\"}', '{\"discount\":12313}', '2016-03-10 17:35:20', 'admin');
INSERT INTO `activity` VALUES ('2244', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606121,\"discount\":\"12313\"}', '{\"updated_at\":1457606120,\"discount\":12313}', '2016-03-10 17:35:21', 'admin');
INSERT INTO `activity` VALUES ('2245', 'U', 'common\\models\\Order', '5', '{\"discount\":\"12313\"}', '{\"discount\":12313}', '2016-03-10 17:35:21', 'admin');
INSERT INTO `activity` VALUES ('2246', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606122,\"discount\":\"12313\"}', '{\"updated_at\":1457606121,\"discount\":12313}', '2016-03-10 17:35:22', 'admin');
INSERT INTO `activity` VALUES ('2247', 'U', 'common\\models\\Order', '5', '{\"discount\":\"12313\"}', '{\"discount\":12313}', '2016-03-10 17:35:22', 'admin');
INSERT INTO `activity` VALUES ('2248', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606123,\"discount\":\"12313\"}', '{\"updated_at\":1457606122,\"discount\":12313}', '2016-03-10 17:35:23', 'admin');
INSERT INTO `activity` VALUES ('2249', 'U', 'common\\models\\Order', '5', '{\"discount\":\"12313\"}', '{\"discount\":12313}', '2016-03-10 17:35:23', 'admin');
INSERT INTO `activity` VALUES ('2250', 'U', 'common\\models\\Order', '5', '{\"discount\":\"12313\"}', '{\"discount\":12313}', '2016-03-10 17:35:24', 'admin');
INSERT INTO `activity` VALUES ('2251', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606124,\"discount\":\"12313\"}', '{\"updated_at\":1457606123,\"discount\":12313}', '2016-03-10 17:35:24', 'admin');
INSERT INTO `activity` VALUES ('2252', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606124,\"discount\":\"12313\"}', '{\"updated_at\":1457606123,\"discount\":12313}', '2016-03-10 17:35:24', 'admin');
INSERT INTO `activity` VALUES ('2253', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606129,\"discount\":\"12313\"}', '{\"updated_at\":1457606124,\"discount\":12313}', '2016-03-10 17:35:29', 'admin');
INSERT INTO `activity` VALUES ('2254', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606134,\"discount\":\"12313\"}', '{\"updated_at\":1457606129,\"discount\":12313}', '2016-03-10 17:35:34', 'admin');
INSERT INTO `activity` VALUES ('2255', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606139,\"discount\":\"12313\"}', '{\"updated_at\":1457606134,\"discount\":12313}', '2016-03-10 17:35:39', 'admin');
INSERT INTO `activity` VALUES ('2256', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606144,\"discount\":\"12313\"}', '{\"updated_at\":1457606139,\"discount\":12313}', '2016-03-10 17:35:44', 'admin');
INSERT INTO `activity` VALUES ('2257', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606149,\"discount\":\"12313\"}', '{\"updated_at\":1457606144,\"discount\":12313}', '2016-03-10 17:35:49', 'admin');
INSERT INTO `activity` VALUES ('2258', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606154,\"discount\":\"12313\"}', '{\"updated_at\":1457606149,\"discount\":12313}', '2016-03-10 17:35:54', 'admin');
INSERT INTO `activity` VALUES ('2259', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606159,\"discount\":\"12313\"}', '{\"updated_at\":1457606154,\"discount\":12313}', '2016-03-10 17:35:59', 'admin');
INSERT INTO `activity` VALUES ('2260', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606164,\"discount\":\"12313\"}', '{\"updated_at\":1457606159,\"discount\":12313}', '2016-03-10 17:36:04', 'admin');
INSERT INTO `activity` VALUES ('2261', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606169,\"discount\":\"12313\"}', '{\"updated_at\":1457606164,\"discount\":12313}', '2016-03-10 17:36:09', 'admin');
INSERT INTO `activity` VALUES ('2262', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606174,\"discount\":\"12313\"}', '{\"updated_at\":1457606169,\"discount\":12313}', '2016-03-10 17:36:14', 'admin');
INSERT INTO `activity` VALUES ('2263', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606179,\"discount\":\"12313\"}', '{\"updated_at\":1457606174,\"discount\":12313}', '2016-03-10 17:36:19', 'admin');
INSERT INTO `activity` VALUES ('2264', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606184,\"discount\":\"12313\"}', '{\"updated_at\":1457606179,\"discount\":12313}', '2016-03-10 17:36:24', 'admin');
INSERT INTO `activity` VALUES ('2265', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606189,\"discount\":\"12313\"}', '{\"updated_at\":1457606184,\"discount\":12313}', '2016-03-10 17:36:29', 'admin');
INSERT INTO `activity` VALUES ('2266', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606194,\"discount\":\"12313\"}', '{\"updated_at\":1457606189,\"discount\":12313}', '2016-03-10 17:36:34', 'admin');
INSERT INTO `activity` VALUES ('2267', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606199,\"discount\":\"12313\"}', '{\"updated_at\":1457606194,\"discount\":12313}', '2016-03-10 17:36:39', 'admin');
INSERT INTO `activity` VALUES ('2268', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606204,\"discount\":\"12313\"}', '{\"updated_at\":1457606199,\"discount\":12313}', '2016-03-10 17:36:44', 'admin');
INSERT INTO `activity` VALUES ('2269', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606209,\"discount\":\"12313\"}', '{\"updated_at\":1457606204,\"discount\":12313}', '2016-03-10 17:36:49', 'admin');
INSERT INTO `activity` VALUES ('2270', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606214,\"discount\":\"12313\"}', '{\"updated_at\":1457606209,\"discount\":12313}', '2016-03-10 17:36:54', 'admin');
INSERT INTO `activity` VALUES ('2271', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606219,\"discount\":\"12313\"}', '{\"updated_at\":1457606214,\"discount\":12313}', '2016-03-10 17:36:59', 'admin');
INSERT INTO `activity` VALUES ('2272', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606224,\"discount\":\"12313\"}', '{\"updated_at\":1457606219,\"discount\":12313}', '2016-03-10 17:37:04', 'admin');
INSERT INTO `activity` VALUES ('2273', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606229,\"discount\":\"12313\"}', '{\"updated_at\":1457606224,\"discount\":12313}', '2016-03-10 17:37:09', 'admin');
INSERT INTO `activity` VALUES ('2274', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606234,\"discount\":\"12313\"}', '{\"updated_at\":1457606229,\"discount\":12313}', '2016-03-10 17:37:14', 'admin');
INSERT INTO `activity` VALUES ('2275', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606239,\"discount\":\"12313\"}', '{\"updated_at\":1457606234,\"discount\":12313}', '2016-03-10 17:37:19', 'admin');
INSERT INTO `activity` VALUES ('2276', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606244,\"discount\":\"12313\"}', '{\"updated_at\":1457606239,\"discount\":12313}', '2016-03-10 17:37:24', 'admin');
INSERT INTO `activity` VALUES ('2277', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606249,\"discount\":\"12313\"}', '{\"updated_at\":1457606244,\"discount\":12313}', '2016-03-10 17:37:29', 'admin');
INSERT INTO `activity` VALUES ('2278', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606254,\"discount\":\"12313\"}', '{\"updated_at\":1457606249,\"discount\":12313}', '2016-03-10 17:37:34', 'admin');
INSERT INTO `activity` VALUES ('2279', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606259,\"discount\":\"12313\"}', '{\"updated_at\":1457606254,\"discount\":12313}', '2016-03-10 17:37:39', 'admin');
INSERT INTO `activity` VALUES ('2280', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606264,\"discount\":\"12313\"}', '{\"updated_at\":1457606259,\"discount\":12313}', '2016-03-10 17:37:44', 'admin');
INSERT INTO `activity` VALUES ('2281', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606269,\"discount\":\"12313\"}', '{\"updated_at\":1457606264,\"discount\":12313}', '2016-03-10 17:37:49', 'admin');
INSERT INTO `activity` VALUES ('2282', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606274,\"discount\":\"12313\"}', '{\"updated_at\":1457606269,\"discount\":12313}', '2016-03-10 17:37:54', 'admin');
INSERT INTO `activity` VALUES ('2283', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606279,\"discount\":\"12313\"}', '{\"updated_at\":1457606274,\"discount\":12313}', '2016-03-10 17:37:59', 'admin');
INSERT INTO `activity` VALUES ('2284', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606284,\"discount\":\"12313\"}', '{\"updated_at\":1457606279,\"discount\":12313}', '2016-03-10 17:38:04', 'admin');
INSERT INTO `activity` VALUES ('2285', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606288,\"discount\":\"12313\"}', '{\"updated_at\":1457606284,\"discount\":12313}', '2016-03-10 17:38:08', 'admin');
INSERT INTO `activity` VALUES ('2286', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606289,\"discount\":\"12313\"}', '{\"updated_at\":1457606288,\"discount\":12313}', '2016-03-10 17:38:09', 'admin');
INSERT INTO `activity` VALUES ('2287', 'U', 'common\\models\\Order', '5', '{\"discount\":\"12313\"}', '{\"discount\":12313}', '2016-03-10 17:38:10', 'admin');
INSERT INTO `activity` VALUES ('2288', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606290,\"discount\":\"12313\"}', '{\"updated_at\":1457606289,\"discount\":12313}', '2016-03-10 17:38:10', 'admin');
INSERT INTO `activity` VALUES ('2289', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606291,\"discount\":\"12313\"}', '{\"updated_at\":1457606290,\"discount\":12313}', '2016-03-10 17:38:12', 'admin');
INSERT INTO `activity` VALUES ('2290', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606292,\"discount\":\"12313\"}', '{\"updated_at\":1457606291,\"discount\":12313}', '2016-03-10 17:38:12', 'admin');
INSERT INTO `activity` VALUES ('2291', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606297,\"discount\":\"12313\"}', '{\"updated_at\":1457606292,\"discount\":12313}', '2016-03-10 17:38:17', 'admin');
INSERT INTO `activity` VALUES ('2292', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606302,\"discount\":\"12313\"}', '{\"updated_at\":1457606297,\"discount\":12313}', '2016-03-10 17:38:22', 'admin');
INSERT INTO `activity` VALUES ('2293', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606307,\"discount\":\"12313\"}', '{\"updated_at\":1457606302,\"discount\":12313}', '2016-03-10 17:38:27', 'admin');
INSERT INTO `activity` VALUES ('2294', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606312,\"discount\":\"12313\"}', '{\"updated_at\":1457606307,\"discount\":12313}', '2016-03-10 17:38:32', 'admin');
INSERT INTO `activity` VALUES ('2295', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606317,\"discount\":\"12313\"}', '{\"updated_at\":1457606312,\"discount\":12313}', '2016-03-10 17:38:37', 'admin');
INSERT INTO `activity` VALUES ('2296', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606322,\"discount\":\"12313\"}', '{\"updated_at\":1457606317,\"discount\":12313}', '2016-03-10 17:38:42', 'admin');
INSERT INTO `activity` VALUES ('2297', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606327,\"discount\":\"12313\"}', '{\"updated_at\":1457606322,\"discount\":12313}', '2016-03-10 17:38:47', 'admin');
INSERT INTO `activity` VALUES ('2298', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606332,\"discount\":\"12313\"}', '{\"updated_at\":1457606327,\"discount\":12313}', '2016-03-10 17:38:52', 'admin');
INSERT INTO `activity` VALUES ('2299', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606337,\"discount\":\"12313\"}', '{\"updated_at\":1457606332,\"discount\":12313}', '2016-03-10 17:38:57', 'admin');
INSERT INTO `activity` VALUES ('2300', 'U', 'common\\models\\Order', '5', '{\"discount\":\"12313\"}', '{\"discount\":12313}', '2016-03-10 17:38:57', 'admin');
INSERT INTO `activity` VALUES ('2301', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606338,\"discount\":\"12313\"}', '{\"updated_at\":1457606337,\"discount\":12313}', '2016-03-10 17:38:58', 'admin');
INSERT INTO `activity` VALUES ('2302', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606342,\"discount\":\"12313\"}', '{\"updated_at\":1457606338,\"discount\":12313}', '2016-03-10 17:39:02', 'admin');
INSERT INTO `activity` VALUES ('2303', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606346,\"discount\":\"12313\"}', '{\"updated_at\":1457606342,\"discount\":12313}', '2016-03-10 17:39:06', 'admin');
INSERT INTO `activity` VALUES ('2304', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606347,\"discount\":\"12313\"}', '{\"updated_at\":1457606346,\"discount\":12313}', '2016-03-10 17:39:07', 'admin');
INSERT INTO `activity` VALUES ('2305', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606352,\"discount\":\"12313\"}', '{\"updated_at\":1457606347,\"discount\":12313}', '2016-03-10 17:39:12', 'admin');
INSERT INTO `activity` VALUES ('2306', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606357,\"discount\":\"12313\"}', '{\"updated_at\":1457606352,\"discount\":12313}', '2016-03-10 17:39:17', 'admin');
INSERT INTO `activity` VALUES ('2307', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606362,\"discount\":\"12313\"}', '{\"updated_at\":1457606357,\"discount\":12313}', '2016-03-10 17:39:22', 'admin');
INSERT INTO `activity` VALUES ('2308', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606367,\"discount\":\"12313\"}', '{\"updated_at\":1457606362,\"discount\":12313}', '2016-03-10 17:39:27', 'admin');
INSERT INTO `activity` VALUES ('2309', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606372,\"discount\":\"12313\"}', '{\"updated_at\":1457606367,\"discount\":12313}', '2016-03-10 17:39:32', 'admin');
INSERT INTO `activity` VALUES ('2310', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606377,\"discount\":\"12313\"}', '{\"updated_at\":1457606372,\"discount\":12313}', '2016-03-10 17:39:37', 'admin');
INSERT INTO `activity` VALUES ('2311', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606382,\"discount\":\"12313\"}', '{\"updated_at\":1457606377,\"discount\":12313}', '2016-03-10 17:39:42', 'admin');
INSERT INTO `activity` VALUES ('2312', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606387,\"discount\":\"12313\"}', '{\"updated_at\":1457606382,\"discount\":12313}', '2016-03-10 17:39:47', 'admin');
INSERT INTO `activity` VALUES ('2313', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606392,\"discount\":\"12313\"}', '{\"updated_at\":1457606387,\"discount\":12313}', '2016-03-10 17:39:52', 'admin');
INSERT INTO `activity` VALUES ('2314', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606397,\"discount\":\"12313\"}', '{\"updated_at\":1457606392,\"discount\":12313}', '2016-03-10 17:39:57', 'admin');
INSERT INTO `activity` VALUES ('2315', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606402,\"discount\":\"12313\"}', '{\"updated_at\":1457606397,\"discount\":12313}', '2016-03-10 17:40:02', 'admin');
INSERT INTO `activity` VALUES ('2316', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606407,\"discount\":\"12313\"}', '{\"updated_at\":1457606402,\"discount\":12313}', '2016-03-10 17:40:07', 'admin');
INSERT INTO `activity` VALUES ('2317', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606413,\"discount\":\"12313\"}', '{\"updated_at\":1457606407,\"discount\":12313}', '2016-03-10 17:40:13', 'admin');
INSERT INTO `activity` VALUES ('2318', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606418,\"discount\":\"12313\"}', '{\"updated_at\":1457606413,\"discount\":12313}', '2016-03-10 17:40:18', 'admin');
INSERT INTO `activity` VALUES ('2319', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606423,\"discount\":\"12313\"}', '{\"updated_at\":1457606418,\"discount\":12313}', '2016-03-10 17:40:23', 'admin');
INSERT INTO `activity` VALUES ('2320', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606428,\"discount\":\"12313\"}', '{\"updated_at\":1457606423,\"discount\":12313}', '2016-03-10 17:40:28', 'admin');
INSERT INTO `activity` VALUES ('2321', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606433,\"discount\":\"12313\"}', '{\"updated_at\":1457606428,\"discount\":12313}', '2016-03-10 17:40:33', 'admin');
INSERT INTO `activity` VALUES ('2322', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606438,\"discount\":\"12313\"}', '{\"updated_at\":1457606433,\"discount\":12313}', '2016-03-10 17:40:38', 'admin');
INSERT INTO `activity` VALUES ('2323', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606443,\"discount\":\"12313\"}', '{\"updated_at\":1457606438,\"discount\":12313}', '2016-03-10 17:40:43', 'admin');
INSERT INTO `activity` VALUES ('2324', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606448,\"discount\":\"12313\"}', '{\"updated_at\":1457606443,\"discount\":12313}', '2016-03-10 17:40:48', 'admin');
INSERT INTO `activity` VALUES ('2325', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606453,\"discount\":\"12313\"}', '{\"updated_at\":1457606448,\"discount\":12313}', '2016-03-10 17:40:53', 'admin');
INSERT INTO `activity` VALUES ('2326', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606458,\"discount\":\"12313\"}', '{\"updated_at\":1457606453,\"discount\":12313}', '2016-03-10 17:40:58', 'admin');
INSERT INTO `activity` VALUES ('2327', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606463,\"discount\":\"12313\"}', '{\"updated_at\":1457606458,\"discount\":12313}', '2016-03-10 17:41:03', 'admin');
INSERT INTO `activity` VALUES ('2328', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606468,\"discount\":\"12313\"}', '{\"updated_at\":1457606463,\"discount\":12313}', '2016-03-10 17:41:08', 'admin');
INSERT INTO `activity` VALUES ('2329', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606473,\"discount\":\"12313\"}', '{\"updated_at\":1457606468,\"discount\":12313}', '2016-03-10 17:41:13', 'admin');
INSERT INTO `activity` VALUES ('2330', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606478,\"discount\":\"12313\"}', '{\"updated_at\":1457606473,\"discount\":12313}', '2016-03-10 17:41:18', 'admin');
INSERT INTO `activity` VALUES ('2331', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606483,\"discount\":\"12313\"}', '{\"updated_at\":1457606478,\"discount\":12313}', '2016-03-10 17:41:23', 'admin');
INSERT INTO `activity` VALUES ('2332', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606488,\"discount\":\"12313\"}', '{\"updated_at\":1457606483,\"discount\":12313}', '2016-03-10 17:41:28', 'admin');
INSERT INTO `activity` VALUES ('2333', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606493,\"discount\":\"12313\"}', '{\"updated_at\":1457606488,\"discount\":12313}', '2016-03-10 17:41:33', 'admin');
INSERT INTO `activity` VALUES ('2334', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606498,\"discount\":\"12313\"}', '{\"updated_at\":1457606493,\"discount\":12313}', '2016-03-10 17:41:38', 'admin');
INSERT INTO `activity` VALUES ('2335', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606503,\"discount\":\"12313\"}', '{\"updated_at\":1457606498,\"discount\":12313}', '2016-03-10 17:41:43', 'admin');
INSERT INTO `activity` VALUES ('2336', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606508,\"discount\":\"12313\"}', '{\"updated_at\":1457606503,\"discount\":12313}', '2016-03-10 17:41:48', 'admin');
INSERT INTO `activity` VALUES ('2337', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606513,\"discount\":\"12313\"}', '{\"updated_at\":1457606508,\"discount\":12313}', '2016-03-10 17:41:53', 'admin');
INSERT INTO `activity` VALUES ('2338', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606518,\"discount\":\"12313\"}', '{\"updated_at\":1457606513,\"discount\":12313}', '2016-03-10 17:41:58', 'admin');
INSERT INTO `activity` VALUES ('2339', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606523,\"discount\":\"12313\"}', '{\"updated_at\":1457606518,\"discount\":12313}', '2016-03-10 17:42:03', 'admin');
INSERT INTO `activity` VALUES ('2340', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606528,\"discount\":\"12313\"}', '{\"updated_at\":1457606523,\"discount\":12313}', '2016-03-10 17:42:08', 'admin');
INSERT INTO `activity` VALUES ('2341', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606533,\"discount\":\"12313\"}', '{\"updated_at\":1457606528,\"discount\":12313}', '2016-03-10 17:42:13', 'admin');
INSERT INTO `activity` VALUES ('2342', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606538,\"discount\":\"12313\"}', '{\"updated_at\":1457606533,\"discount\":12313}', '2016-03-10 17:42:18', 'admin');
INSERT INTO `activity` VALUES ('2343', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606543,\"discount\":\"12313\"}', '{\"updated_at\":1457606538,\"discount\":12313}', '2016-03-10 17:42:23', 'admin');
INSERT INTO `activity` VALUES ('2344', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606548,\"discount\":\"12313\"}', '{\"updated_at\":1457606543,\"discount\":12313}', '2016-03-10 17:42:28', 'admin');
INSERT INTO `activity` VALUES ('2345', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606553,\"discount\":\"12313\"}', '{\"updated_at\":1457606548,\"discount\":12313}', '2016-03-10 17:42:33', 'admin');
INSERT INTO `activity` VALUES ('2346', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606558,\"discount\":\"12313\"}', '{\"updated_at\":1457606553,\"discount\":12313}', '2016-03-10 17:42:38', 'admin');
INSERT INTO `activity` VALUES ('2347', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606563,\"discount\":\"12313\"}', '{\"updated_at\":1457606558,\"discount\":12313}', '2016-03-10 17:42:43', 'admin');
INSERT INTO `activity` VALUES ('2348', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606568,\"discount\":\"12313\"}', '{\"updated_at\":1457606563,\"discount\":12313}', '2016-03-10 17:42:48', 'admin');
INSERT INTO `activity` VALUES ('2349', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606573,\"discount\":\"12313\"}', '{\"updated_at\":1457606568,\"discount\":12313}', '2016-03-10 17:42:53', 'admin');
INSERT INTO `activity` VALUES ('2350', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606578,\"discount\":\"12313\"}', '{\"updated_at\":1457606573,\"discount\":12313}', '2016-03-10 17:42:58', 'admin');
INSERT INTO `activity` VALUES ('2351', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606582,\"discount\":\"12313\"}', '{\"updated_at\":1457606578,\"discount\":12313}', '2016-03-10 17:43:02', 'admin');
INSERT INTO `activity` VALUES ('2352', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606587,\"discount\":\"12313\"}', '{\"updated_at\":1457606582,\"discount\":12313}', '2016-03-10 17:43:07', 'admin');
INSERT INTO `activity` VALUES ('2353', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606592,\"discount\":\"12313\"}', '{\"updated_at\":1457606587,\"discount\":12313}', '2016-03-10 17:43:12', 'admin');
INSERT INTO `activity` VALUES ('2354', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606597,\"discount\":\"12313\"}', '{\"updated_at\":1457606592,\"discount\":12313}', '2016-03-10 17:43:17', 'admin');
INSERT INTO `activity` VALUES ('2355', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606602,\"discount\":\"12313\"}', '{\"updated_at\":1457606597,\"discount\":12313}', '2016-03-10 17:43:22', 'admin');
INSERT INTO `activity` VALUES ('2356', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606607,\"discount\":\"12313\"}', '{\"updated_at\":1457606602,\"discount\":12313}', '2016-03-10 17:43:27', 'admin');
INSERT INTO `activity` VALUES ('2357', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606612,\"discount\":\"12313\"}', '{\"updated_at\":1457606607,\"discount\":12313}', '2016-03-10 17:43:32', 'admin');
INSERT INTO `activity` VALUES ('2358', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606617,\"discount\":\"12313\"}', '{\"updated_at\":1457606612,\"discount\":12313}', '2016-03-10 17:43:37', 'admin');
INSERT INTO `activity` VALUES ('2359', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606622,\"discount\":\"12313\"}', '{\"updated_at\":1457606617,\"discount\":12313}', '2016-03-10 17:43:42', 'admin');
INSERT INTO `activity` VALUES ('2360', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606627,\"discount\":\"12313\"}', '{\"updated_at\":1457606622,\"discount\":12313}', '2016-03-10 17:43:47', 'admin');
INSERT INTO `activity` VALUES ('2361', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606632,\"discount\":\"12313\"}', '{\"updated_at\":1457606627,\"discount\":12313}', '2016-03-10 17:43:52', 'admin');
INSERT INTO `activity` VALUES ('2362', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606637,\"discount\":\"12313\"}', '{\"updated_at\":1457606632,\"discount\":12313}', '2016-03-10 17:43:57', 'admin');
INSERT INTO `activity` VALUES ('2363', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606642,\"discount\":\"12313\"}', '{\"updated_at\":1457606637,\"discount\":12313}', '2016-03-10 17:44:02', 'admin');
INSERT INTO `activity` VALUES ('2364', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606647,\"discount\":\"12313\"}', '{\"updated_at\":1457606642,\"discount\":12313}', '2016-03-10 17:44:07', 'admin');
INSERT INTO `activity` VALUES ('2365', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606652,\"discount\":\"12313\"}', '{\"updated_at\":1457606647,\"discount\":12313}', '2016-03-10 17:44:12', 'admin');
INSERT INTO `activity` VALUES ('2366', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606657,\"discount\":\"12313\"}', '{\"updated_at\":1457606652,\"discount\":12313}', '2016-03-10 17:44:17', 'admin');
INSERT INTO `activity` VALUES ('2367', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606662,\"discount\":\"12313\"}', '{\"updated_at\":1457606657,\"discount\":12313}', '2016-03-10 17:44:22', 'admin');
INSERT INTO `activity` VALUES ('2368', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606667,\"discount\":\"12313\"}', '{\"updated_at\":1457606662,\"discount\":12313}', '2016-03-10 17:44:27', 'admin');
INSERT INTO `activity` VALUES ('2369', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606672,\"discount\":\"12313\"}', '{\"updated_at\":1457606667,\"discount\":12313}', '2016-03-10 17:44:32', 'admin');
INSERT INTO `activity` VALUES ('2370', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606677,\"discount\":\"12313\"}', '{\"updated_at\":1457606672,\"discount\":12313}', '2016-03-10 17:44:37', 'admin');
INSERT INTO `activity` VALUES ('2371', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606682,\"discount\":\"12313\"}', '{\"updated_at\":1457606677,\"discount\":12313}', '2016-03-10 17:44:42', 'admin');
INSERT INTO `activity` VALUES ('2372', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606687,\"discount\":\"12313\"}', '{\"updated_at\":1457606682,\"discount\":12313}', '2016-03-10 17:44:47', 'admin');
INSERT INTO `activity` VALUES ('2373', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606692,\"discount\":\"12313\"}', '{\"updated_at\":1457606687,\"discount\":12313}', '2016-03-10 17:44:52', 'admin');
INSERT INTO `activity` VALUES ('2374', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606697,\"discount\":\"12313\"}', '{\"updated_at\":1457606692,\"discount\":12313}', '2016-03-10 17:44:57', 'admin');
INSERT INTO `activity` VALUES ('2375', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606702,\"discount\":\"12313\"}', '{\"updated_at\":1457606697,\"discount\":12313}', '2016-03-10 17:45:02', 'admin');
INSERT INTO `activity` VALUES ('2376', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606707,\"discount\":\"12313\"}', '{\"updated_at\":1457606702,\"discount\":12313}', '2016-03-10 17:45:07', 'admin');
INSERT INTO `activity` VALUES ('2377', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606712,\"discount\":\"12313\"}', '{\"updated_at\":1457606707,\"discount\":12313}', '2016-03-10 17:45:12', 'admin');
INSERT INTO `activity` VALUES ('2378', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606717,\"discount\":\"12313\"}', '{\"updated_at\":1457606712,\"discount\":12313}', '2016-03-10 17:45:17', 'admin');
INSERT INTO `activity` VALUES ('2379', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606722,\"discount\":\"12313\"}', '{\"updated_at\":1457606717,\"discount\":12313}', '2016-03-10 17:45:22', 'admin');
INSERT INTO `activity` VALUES ('2380', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606727,\"discount\":\"12313\"}', '{\"updated_at\":1457606722,\"discount\":12313}', '2016-03-10 17:45:27', 'admin');
INSERT INTO `activity` VALUES ('2381', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606732,\"discount\":\"12313\"}', '{\"updated_at\":1457606727,\"discount\":12313}', '2016-03-10 17:45:32', 'admin');
INSERT INTO `activity` VALUES ('2382', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606737,\"discount\":\"12313\"}', '{\"updated_at\":1457606732,\"discount\":12313}', '2016-03-10 17:45:37', 'admin');
INSERT INTO `activity` VALUES ('2383', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606742,\"discount\":\"12313\"}', '{\"updated_at\":1457606737,\"discount\":12313}', '2016-03-10 17:45:42', 'admin');
INSERT INTO `activity` VALUES ('2384', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606747,\"discount\":\"12313\"}', '{\"updated_at\":1457606742,\"discount\":12313}', '2016-03-10 17:45:47', 'admin');
INSERT INTO `activity` VALUES ('2385', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606752,\"discount\":\"12313\"}', '{\"updated_at\":1457606747,\"discount\":12313}', '2016-03-10 17:45:52', 'admin');
INSERT INTO `activity` VALUES ('2386', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606757,\"discount\":\"12313\"}', '{\"updated_at\":1457606752,\"discount\":12313}', '2016-03-10 17:45:57', 'admin');
INSERT INTO `activity` VALUES ('2387', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606762,\"discount\":\"12313\"}', '{\"updated_at\":1457606757,\"discount\":12313}', '2016-03-10 17:46:02', 'admin');
INSERT INTO `activity` VALUES ('2388', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606767,\"discount\":\"12313\"}', '{\"updated_at\":1457606762,\"discount\":12313}', '2016-03-10 17:46:07', 'admin');
INSERT INTO `activity` VALUES ('2389', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606772,\"discount\":\"12313\"}', '{\"updated_at\":1457606767,\"discount\":12313}', '2016-03-10 17:46:12', 'admin');
INSERT INTO `activity` VALUES ('2390', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606777,\"discount\":\"12313\"}', '{\"updated_at\":1457606772,\"discount\":12313}', '2016-03-10 17:46:17', 'admin');
INSERT INTO `activity` VALUES ('2391', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606782,\"discount\":\"12313\"}', '{\"updated_at\":1457606777,\"discount\":12313}', '2016-03-10 17:46:22', 'admin');
INSERT INTO `activity` VALUES ('2392', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606787,\"discount\":\"12313\"}', '{\"updated_at\":1457606782,\"discount\":12313}', '2016-03-10 17:46:27', 'admin');
INSERT INTO `activity` VALUES ('2393', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606792,\"discount\":\"12313\"}', '{\"updated_at\":1457606787,\"discount\":12313}', '2016-03-10 17:46:32', 'admin');
INSERT INTO `activity` VALUES ('2394', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606797,\"discount\":\"12313\"}', '{\"updated_at\":1457606792,\"discount\":12313}', '2016-03-10 17:46:37', 'admin');
INSERT INTO `activity` VALUES ('2395', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606802,\"discount\":\"12313\"}', '{\"updated_at\":1457606797,\"discount\":12313}', '2016-03-10 17:46:42', 'admin');
INSERT INTO `activity` VALUES ('2396', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606808,\"discount\":\"12313\"}', '{\"updated_at\":1457606802,\"discount\":12313}', '2016-03-10 17:46:48', 'admin');
INSERT INTO `activity` VALUES ('2397', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606813,\"discount\":\"12313\"}', '{\"updated_at\":1457606808,\"discount\":12313}', '2016-03-10 17:46:53', 'admin');
INSERT INTO `activity` VALUES ('2398', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606818,\"discount\":\"12313\"}', '{\"updated_at\":1457606813,\"discount\":12313}', '2016-03-10 17:46:58', 'admin');
INSERT INTO `activity` VALUES ('2399', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606823,\"discount\":\"12313\"}', '{\"updated_at\":1457606818,\"discount\":12313}', '2016-03-10 17:47:03', 'admin');
INSERT INTO `activity` VALUES ('2400', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606828,\"discount\":\"12313\"}', '{\"updated_at\":1457606823,\"discount\":12313}', '2016-03-10 17:47:08', 'admin');
INSERT INTO `activity` VALUES ('2401', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606833,\"discount\":\"12313\"}', '{\"updated_at\":1457606828,\"discount\":12313}', '2016-03-10 17:47:13', 'admin');
INSERT INTO `activity` VALUES ('2402', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606838,\"discount\":\"12313\"}', '{\"updated_at\":1457606833,\"discount\":12313}', '2016-03-10 17:47:18', 'admin');
INSERT INTO `activity` VALUES ('2403', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606843,\"discount\":\"12313\"}', '{\"updated_at\":1457606838,\"discount\":12313}', '2016-03-10 17:47:23', 'admin');
INSERT INTO `activity` VALUES ('2404', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606848,\"discount\":\"12313\"}', '{\"updated_at\":1457606843,\"discount\":12313}', '2016-03-10 17:47:28', 'admin');
INSERT INTO `activity` VALUES ('2405', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606853,\"discount\":\"12313\"}', '{\"updated_at\":1457606848,\"discount\":12313}', '2016-03-10 17:47:33', 'admin');
INSERT INTO `activity` VALUES ('2406', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606858,\"discount\":\"12313\"}', '{\"updated_at\":1457606853,\"discount\":12313}', '2016-03-10 17:47:38', 'admin');
INSERT INTO `activity` VALUES ('2407', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606863,\"discount\":\"12313\"}', '{\"updated_at\":1457606858,\"discount\":12313}', '2016-03-10 17:47:43', 'admin');
INSERT INTO `activity` VALUES ('2408', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606868,\"discount\":\"12313\"}', '{\"updated_at\":1457606863,\"discount\":12313}', '2016-03-10 17:47:48', 'admin');
INSERT INTO `activity` VALUES ('2409', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606873,\"discount\":\"12313\"}', '{\"updated_at\":1457606868,\"discount\":12313}', '2016-03-10 17:47:53', 'admin');
INSERT INTO `activity` VALUES ('2410', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606878,\"discount\":\"12313\"}', '{\"updated_at\":1457606873,\"discount\":12313}', '2016-03-10 17:47:58', 'admin');
INSERT INTO `activity` VALUES ('2411', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606883,\"discount\":\"12313\"}', '{\"updated_at\":1457606878,\"discount\":12313}', '2016-03-10 17:48:03', 'admin');
INSERT INTO `activity` VALUES ('2412', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606888,\"discount\":\"12313\"}', '{\"updated_at\":1457606883,\"discount\":12313}', '2016-03-10 17:48:08', 'admin');
INSERT INTO `activity` VALUES ('2413', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606893,\"discount\":\"12313\"}', '{\"updated_at\":1457606888,\"discount\":12313}', '2016-03-10 17:48:13', 'admin');
INSERT INTO `activity` VALUES ('2414', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606898,\"discount\":\"12313\"}', '{\"updated_at\":1457606893,\"discount\":12313}', '2016-03-10 17:48:18', 'admin');
INSERT INTO `activity` VALUES ('2415', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606903,\"discount\":\"12313\"}', '{\"updated_at\":1457606898,\"discount\":12313}', '2016-03-10 17:48:23', 'admin');
INSERT INTO `activity` VALUES ('2416', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606908,\"discount\":\"12313\"}', '{\"updated_at\":1457606903,\"discount\":12313}', '2016-03-10 17:48:28', 'admin');
INSERT INTO `activity` VALUES ('2417', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606913,\"discount\":\"12313\"}', '{\"updated_at\":1457606908,\"discount\":12313}', '2016-03-10 17:48:33', 'admin');
INSERT INTO `activity` VALUES ('2418', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606918,\"discount\":\"12313\"}', '{\"updated_at\":1457606913,\"discount\":12313}', '2016-03-10 17:48:38', 'admin');
INSERT INTO `activity` VALUES ('2419', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606923,\"discount\":\"12313\"}', '{\"updated_at\":1457606918,\"discount\":12313}', '2016-03-10 17:48:43', 'admin');
INSERT INTO `activity` VALUES ('2420', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606928,\"discount\":\"12313\"}', '{\"updated_at\":1457606923,\"discount\":12313}', '2016-03-10 17:48:48', 'admin');
INSERT INTO `activity` VALUES ('2421', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606933,\"discount\":\"12313\"}', '{\"updated_at\":1457606928,\"discount\":12313}', '2016-03-10 17:48:53', 'admin');
INSERT INTO `activity` VALUES ('2422', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606938,\"discount\":\"12313\"}', '{\"updated_at\":1457606933,\"discount\":12313}', '2016-03-10 17:48:58', 'admin');
INSERT INTO `activity` VALUES ('2423', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606943,\"discount\":\"12313\"}', '{\"updated_at\":1457606938,\"discount\":12313}', '2016-03-10 17:49:03', 'admin');
INSERT INTO `activity` VALUES ('2424', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606948,\"discount\":\"12313\"}', '{\"updated_at\":1457606943,\"discount\":12313}', '2016-03-10 17:49:08', 'admin');
INSERT INTO `activity` VALUES ('2425', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606953,\"discount\":\"12313\"}', '{\"updated_at\":1457606948,\"discount\":12313}', '2016-03-10 17:49:13', 'admin');
INSERT INTO `activity` VALUES ('2426', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606958,\"discount\":\"12313\"}', '{\"updated_at\":1457606953,\"discount\":12313}', '2016-03-10 17:49:18', 'admin');
INSERT INTO `activity` VALUES ('2427', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606963,\"discount\":\"12313\"}', '{\"updated_at\":1457606958,\"discount\":12313}', '2016-03-10 17:49:23', 'admin');
INSERT INTO `activity` VALUES ('2428', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606968,\"discount\":\"12313\"}', '{\"updated_at\":1457606963,\"discount\":12313}', '2016-03-10 17:49:28', 'admin');
INSERT INTO `activity` VALUES ('2429', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606973,\"discount\":\"12313\"}', '{\"updated_at\":1457606968,\"discount\":12313}', '2016-03-10 17:49:33', 'admin');
INSERT INTO `activity` VALUES ('2430', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606978,\"discount\":\"12313\"}', '{\"updated_at\":1457606973,\"discount\":12313}', '2016-03-10 17:49:38', 'admin');
INSERT INTO `activity` VALUES ('2431', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606983,\"discount\":\"12313\"}', '{\"updated_at\":1457606978,\"discount\":12313}', '2016-03-10 17:49:43', 'admin');
INSERT INTO `activity` VALUES ('2432', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606988,\"discount\":\"12313\"}', '{\"updated_at\":1457606983,\"discount\":12313}', '2016-03-10 17:49:48', 'admin');
INSERT INTO `activity` VALUES ('2433', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606993,\"discount\":\"12313\"}', '{\"updated_at\":1457606988,\"discount\":12313}', '2016-03-10 17:49:53', 'admin');
INSERT INTO `activity` VALUES ('2434', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457606998,\"discount\":\"12313\"}', '{\"updated_at\":1457606993,\"discount\":12313}', '2016-03-10 17:49:58', 'admin');
INSERT INTO `activity` VALUES ('2435', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607003,\"discount\":\"12313\"}', '{\"updated_at\":1457606998,\"discount\":12313}', '2016-03-10 17:50:03', 'admin');
INSERT INTO `activity` VALUES ('2436', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607008,\"discount\":\"12313\"}', '{\"updated_at\":1457607003,\"discount\":12313}', '2016-03-10 17:50:08', 'admin');
INSERT INTO `activity` VALUES ('2437', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607013,\"discount\":\"12313\"}', '{\"updated_at\":1457607008,\"discount\":12313}', '2016-03-10 17:50:13', 'admin');
INSERT INTO `activity` VALUES ('2438', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607018,\"discount\":\"12313\"}', '{\"updated_at\":1457607013,\"discount\":12313}', '2016-03-10 17:50:18', 'admin');
INSERT INTO `activity` VALUES ('2439', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607023,\"discount\":\"12313\"}', '{\"updated_at\":1457607018,\"discount\":12313}', '2016-03-10 17:50:23', 'admin');
INSERT INTO `activity` VALUES ('2440', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607028,\"discount\":\"12313\"}', '{\"updated_at\":1457607023,\"discount\":12313}', '2016-03-10 17:50:28', 'admin');
INSERT INTO `activity` VALUES ('2441', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607033,\"discount\":\"12313\"}', '{\"updated_at\":1457607028,\"discount\":12313}', '2016-03-10 17:50:33', 'admin');
INSERT INTO `activity` VALUES ('2442', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607038,\"discount\":\"12313\"}', '{\"updated_at\":1457607033,\"discount\":12313}', '2016-03-10 17:50:38', 'admin');
INSERT INTO `activity` VALUES ('2443', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607043,\"discount\":\"12313\"}', '{\"updated_at\":1457607038,\"discount\":12313}', '2016-03-10 17:50:43', 'admin');
INSERT INTO `activity` VALUES ('2444', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607048,\"discount\":\"12313\"}', '{\"updated_at\":1457607043,\"discount\":12313}', '2016-03-10 17:50:48', 'admin');
INSERT INTO `activity` VALUES ('2445', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607053,\"discount\":\"12313\"}', '{\"updated_at\":1457607048,\"discount\":12313}', '2016-03-10 17:50:53', 'admin');
INSERT INTO `activity` VALUES ('2446', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607058,\"discount\":\"12313\"}', '{\"updated_at\":1457607053,\"discount\":12313}', '2016-03-10 17:50:58', 'admin');
INSERT INTO `activity` VALUES ('2447', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607063,\"discount\":\"12313\"}', '{\"updated_at\":1457607058,\"discount\":12313}', '2016-03-10 17:51:03', 'admin');
INSERT INTO `activity` VALUES ('2448', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607068,\"discount\":\"12313\"}', '{\"updated_at\":1457607063,\"discount\":12313}', '2016-03-10 17:51:08', 'admin');
INSERT INTO `activity` VALUES ('2449', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607073,\"discount\":\"12313\"}', '{\"updated_at\":1457607068,\"discount\":12313}', '2016-03-10 17:51:13', 'admin');
INSERT INTO `activity` VALUES ('2450', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607078,\"discount\":\"12313\"}', '{\"updated_at\":1457607073,\"discount\":12313}', '2016-03-10 17:51:18', 'admin');
INSERT INTO `activity` VALUES ('2451', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607083,\"discount\":\"12313\"}', '{\"updated_at\":1457607078,\"discount\":12313}', '2016-03-10 17:51:23', 'admin');
INSERT INTO `activity` VALUES ('2452', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607088,\"discount\":\"12313\"}', '{\"updated_at\":1457607083,\"discount\":12313}', '2016-03-10 17:51:28', 'admin');
INSERT INTO `activity` VALUES ('2453', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607093,\"discount\":\"12313\"}', '{\"updated_at\":1457607088,\"discount\":12313}', '2016-03-10 17:51:33', 'admin');
INSERT INTO `activity` VALUES ('2454', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607098,\"discount\":\"12313\"}', '{\"updated_at\":1457607093,\"discount\":12313}', '2016-03-10 17:51:38', 'admin');
INSERT INTO `activity` VALUES ('2455', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607103,\"discount\":\"12313\"}', '{\"updated_at\":1457607098,\"discount\":12313}', '2016-03-10 17:51:43', 'admin');
INSERT INTO `activity` VALUES ('2456', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607108,\"discount\":\"12313\"}', '{\"updated_at\":1457607103,\"discount\":12313}', '2016-03-10 17:51:48', 'admin');
INSERT INTO `activity` VALUES ('2457', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607113,\"discount\":\"12313\"}', '{\"updated_at\":1457607108,\"discount\":12313}', '2016-03-10 17:51:53', 'admin');
INSERT INTO `activity` VALUES ('2458', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607118,\"discount\":\"12313\"}', '{\"updated_at\":1457607113,\"discount\":12313}', '2016-03-10 17:51:58', 'admin');
INSERT INTO `activity` VALUES ('2459', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607123,\"discount\":\"12313\"}', '{\"updated_at\":1457607118,\"discount\":12313}', '2016-03-10 17:52:03', 'admin');
INSERT INTO `activity` VALUES ('2460', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607128,\"discount\":\"12313\"}', '{\"updated_at\":1457607123,\"discount\":12313}', '2016-03-10 17:52:08', 'admin');
INSERT INTO `activity` VALUES ('2461', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607133,\"discount\":\"12313\"}', '{\"updated_at\":1457607128,\"discount\":12313}', '2016-03-10 17:52:13', 'admin');
INSERT INTO `activity` VALUES ('2462', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607138,\"discount\":\"12313\"}', '{\"updated_at\":1457607133,\"discount\":12313}', '2016-03-10 17:52:18', 'admin');
INSERT INTO `activity` VALUES ('2463', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607143,\"discount\":\"12313\"}', '{\"updated_at\":1457607138,\"discount\":12313}', '2016-03-10 17:52:23', 'admin');
INSERT INTO `activity` VALUES ('2464', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607148,\"discount\":\"12313\"}', '{\"updated_at\":1457607143,\"discount\":12313}', '2016-03-10 17:52:28', 'admin');
INSERT INTO `activity` VALUES ('2465', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607153,\"discount\":\"12313\"}', '{\"updated_at\":1457607148,\"discount\":12313}', '2016-03-10 17:52:33', 'admin');
INSERT INTO `activity` VALUES ('2466', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607158,\"discount\":\"12313\"}', '{\"updated_at\":1457607153,\"discount\":12313}', '2016-03-10 17:52:38', 'admin');
INSERT INTO `activity` VALUES ('2467', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607163,\"discount\":\"12313\"}', '{\"updated_at\":1457607158,\"discount\":12313}', '2016-03-10 17:52:43', 'admin');
INSERT INTO `activity` VALUES ('2468', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607168,\"discount\":\"12313\"}', '{\"updated_at\":1457607163,\"discount\":12313}', '2016-03-10 17:52:48', 'admin');
INSERT INTO `activity` VALUES ('2469', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607173,\"discount\":\"12313\"}', '{\"updated_at\":1457607168,\"discount\":12313}', '2016-03-10 17:52:53', 'admin');
INSERT INTO `activity` VALUES ('2470', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607178,\"discount\":\"12313\"}', '{\"updated_at\":1457607173,\"discount\":12313}', '2016-03-10 17:52:58', 'admin');
INSERT INTO `activity` VALUES ('2471', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607183,\"discount\":\"12313\"}', '{\"updated_at\":1457607178,\"discount\":12313}', '2016-03-10 17:53:03', 'admin');
INSERT INTO `activity` VALUES ('2472', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607188,\"discount\":\"12313\"}', '{\"updated_at\":1457607183,\"discount\":12313}', '2016-03-10 17:53:08', 'admin');
INSERT INTO `activity` VALUES ('2473', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607193,\"discount\":\"12313\"}', '{\"updated_at\":1457607188,\"discount\":12313}', '2016-03-10 17:53:13', 'admin');
INSERT INTO `activity` VALUES ('2474', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607198,\"discount\":\"12313\"}', '{\"updated_at\":1457607193,\"discount\":12313}', '2016-03-10 17:53:18', 'admin');
INSERT INTO `activity` VALUES ('2475', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607203,\"discount\":\"12313\"}', '{\"updated_at\":1457607198,\"discount\":12313}', '2016-03-10 17:53:23', 'admin');
INSERT INTO `activity` VALUES ('2476', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607208,\"discount\":\"12313\"}', '{\"updated_at\":1457607203,\"discount\":12313}', '2016-03-10 17:53:28', 'admin');
INSERT INTO `activity` VALUES ('2477', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607213,\"discount\":\"12313\"}', '{\"updated_at\":1457607208,\"discount\":12313}', '2016-03-10 17:53:33', 'admin');
INSERT INTO `activity` VALUES ('2478', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607218,\"discount\":\"12313\"}', '{\"updated_at\":1457607213,\"discount\":12313}', '2016-03-10 17:53:38', 'admin');
INSERT INTO `activity` VALUES ('2479', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607223,\"discount\":\"12313\"}', '{\"updated_at\":1457607218,\"discount\":12313}', '2016-03-10 17:53:43', 'admin');
INSERT INTO `activity` VALUES ('2480', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607228,\"discount\":\"12313\"}', '{\"updated_at\":1457607223,\"discount\":12313}', '2016-03-10 17:53:48', 'admin');
INSERT INTO `activity` VALUES ('2481', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607233,\"discount\":\"12313\"}', '{\"updated_at\":1457607228,\"discount\":12313}', '2016-03-10 17:53:53', 'admin');
INSERT INTO `activity` VALUES ('2482', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607238,\"discount\":\"12313\"}', '{\"updated_at\":1457607233,\"discount\":12313}', '2016-03-10 17:53:58', 'admin');
INSERT INTO `activity` VALUES ('2483', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607243,\"discount\":\"12313\"}', '{\"updated_at\":1457607238,\"discount\":12313}', '2016-03-10 17:54:03', 'admin');
INSERT INTO `activity` VALUES ('2484', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607248,\"discount\":\"12313\"}', '{\"updated_at\":1457607243,\"discount\":12313}', '2016-03-10 17:54:08', 'admin');
INSERT INTO `activity` VALUES ('2485', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607253,\"discount\":\"12313\"}', '{\"updated_at\":1457607248,\"discount\":12313}', '2016-03-10 17:54:13', 'admin');
INSERT INTO `activity` VALUES ('2486', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607258,\"discount\":\"12313\"}', '{\"updated_at\":1457607253,\"discount\":12313}', '2016-03-10 17:54:18', 'admin');
INSERT INTO `activity` VALUES ('2487', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607263,\"discount\":\"12313\"}', '{\"updated_at\":1457607258,\"discount\":12313}', '2016-03-10 17:54:23', 'admin');
INSERT INTO `activity` VALUES ('2488', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607268,\"discount\":\"12313\"}', '{\"updated_at\":1457607263,\"discount\":12313}', '2016-03-10 17:54:28', 'admin');
INSERT INTO `activity` VALUES ('2489', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607273,\"discount\":\"12313\"}', '{\"updated_at\":1457607268,\"discount\":12313}', '2016-03-10 17:54:33', 'admin');
INSERT INTO `activity` VALUES ('2490', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607278,\"discount\":\"12313\"}', '{\"updated_at\":1457607273,\"discount\":12313}', '2016-03-10 17:54:38', 'admin');
INSERT INTO `activity` VALUES ('2491', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607283,\"discount\":\"12313\"}', '{\"updated_at\":1457607278,\"discount\":12313}', '2016-03-10 17:54:43', 'admin');
INSERT INTO `activity` VALUES ('2492', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607288,\"discount\":\"12313\"}', '{\"updated_at\":1457607283,\"discount\":12313}', '2016-03-10 17:54:48', 'admin');
INSERT INTO `activity` VALUES ('2493', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607293,\"discount\":\"12313\"}', '{\"updated_at\":1457607288,\"discount\":12313}', '2016-03-10 17:54:53', 'admin');
INSERT INTO `activity` VALUES ('2494', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607298,\"discount\":\"12313\"}', '{\"updated_at\":1457607293,\"discount\":12313}', '2016-03-10 17:54:58', 'admin');
INSERT INTO `activity` VALUES ('2495', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607303,\"discount\":\"12313\"}', '{\"updated_at\":1457607298,\"discount\":12313}', '2016-03-10 17:55:03', 'admin');
INSERT INTO `activity` VALUES ('2496', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607308,\"discount\":\"12313\"}', '{\"updated_at\":1457607303,\"discount\":12313}', '2016-03-10 17:55:08', 'admin');
INSERT INTO `activity` VALUES ('2497', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607313,\"discount\":\"12313\"}', '{\"updated_at\":1457607308,\"discount\":12313}', '2016-03-10 17:55:13', 'admin');
INSERT INTO `activity` VALUES ('2498', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607318,\"discount\":\"12313\"}', '{\"updated_at\":1457607313,\"discount\":12313}', '2016-03-10 17:55:18', 'admin');
INSERT INTO `activity` VALUES ('2499', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607323,\"discount\":\"12313\"}', '{\"updated_at\":1457607318,\"discount\":12313}', '2016-03-10 17:55:23', 'admin');
INSERT INTO `activity` VALUES ('2500', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607328,\"discount\":\"12313\"}', '{\"updated_at\":1457607323,\"discount\":12313}', '2016-03-10 17:55:28', 'admin');
INSERT INTO `activity` VALUES ('2501', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607333,\"discount\":\"12313\"}', '{\"updated_at\":1457607328,\"discount\":12313}', '2016-03-10 17:55:33', 'admin');
INSERT INTO `activity` VALUES ('2502', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607338,\"discount\":\"12313\"}', '{\"updated_at\":1457607333,\"discount\":12313}', '2016-03-10 17:55:38', 'admin');
INSERT INTO `activity` VALUES ('2503', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607343,\"discount\":\"12313\"}', '{\"updated_at\":1457607338,\"discount\":12313}', '2016-03-10 17:55:43', 'admin');
INSERT INTO `activity` VALUES ('2504', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607348,\"discount\":\"12313\"}', '{\"updated_at\":1457607343,\"discount\":12313}', '2016-03-10 17:55:48', 'admin');
INSERT INTO `activity` VALUES ('2505', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607353,\"discount\":\"12313\"}', '{\"updated_at\":1457607348,\"discount\":12313}', '2016-03-10 17:55:53', 'admin');
INSERT INTO `activity` VALUES ('2506', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607358,\"discount\":\"12313\"}', '{\"updated_at\":1457607353,\"discount\":12313}', '2016-03-10 17:55:58', 'admin');
INSERT INTO `activity` VALUES ('2507', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607363,\"discount\":\"12313\"}', '{\"updated_at\":1457607358,\"discount\":12313}', '2016-03-10 17:56:03', 'admin');
INSERT INTO `activity` VALUES ('2508', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607368,\"discount\":\"12313\"}', '{\"updated_at\":1457607363,\"discount\":12313}', '2016-03-10 17:56:08', 'admin');
INSERT INTO `activity` VALUES ('2509', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607373,\"discount\":\"12313\"}', '{\"updated_at\":1457607368,\"discount\":12313}', '2016-03-10 17:56:13', 'admin');
INSERT INTO `activity` VALUES ('2510', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607378,\"discount\":\"12313\"}', '{\"updated_at\":1457607373,\"discount\":12313}', '2016-03-10 17:56:18', 'admin');
INSERT INTO `activity` VALUES ('2511', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607383,\"discount\":\"12313\"}', '{\"updated_at\":1457607378,\"discount\":12313}', '2016-03-10 17:56:23', 'admin');
INSERT INTO `activity` VALUES ('2512', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607388,\"discount\":\"12313\"}', '{\"updated_at\":1457607383,\"discount\":12313}', '2016-03-10 17:56:28', 'admin');
INSERT INTO `activity` VALUES ('2513', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607393,\"discount\":\"12313\"}', '{\"updated_at\":1457607388,\"discount\":12313}', '2016-03-10 17:56:33', 'admin');
INSERT INTO `activity` VALUES ('2514', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607398,\"discount\":\"12313\"}', '{\"updated_at\":1457607393,\"discount\":12313}', '2016-03-10 17:56:38', 'admin');
INSERT INTO `activity` VALUES ('2515', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607403,\"discount\":\"12313\"}', '{\"updated_at\":1457607398,\"discount\":12313}', '2016-03-10 17:56:43', 'admin');
INSERT INTO `activity` VALUES ('2516', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607408,\"discount\":\"12313\"}', '{\"updated_at\":1457607403,\"discount\":12313}', '2016-03-10 17:56:48', 'admin');
INSERT INTO `activity` VALUES ('2517', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607413,\"discount\":\"12313\"}', '{\"updated_at\":1457607408,\"discount\":12313}', '2016-03-10 17:56:53', 'admin');
INSERT INTO `activity` VALUES ('2518', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607418,\"discount\":\"12313\"}', '{\"updated_at\":1457607413,\"discount\":12313}', '2016-03-10 17:56:58', 'admin');
INSERT INTO `activity` VALUES ('2519', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607423,\"discount\":\"12313\"}', '{\"updated_at\":1457607418,\"discount\":12313}', '2016-03-10 17:57:03', 'admin');
INSERT INTO `activity` VALUES ('2520', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607428,\"discount\":\"12313\"}', '{\"updated_at\":1457607423,\"discount\":12313}', '2016-03-10 17:57:08', 'admin');
INSERT INTO `activity` VALUES ('2521', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607433,\"discount\":\"12313\"}', '{\"updated_at\":1457607428,\"discount\":12313}', '2016-03-10 17:57:13', 'admin');
INSERT INTO `activity` VALUES ('2522', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607438,\"discount\":\"12313\"}', '{\"updated_at\":1457607433,\"discount\":12313}', '2016-03-10 17:57:18', 'admin');
INSERT INTO `activity` VALUES ('2523', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607443,\"discount\":\"12313\"}', '{\"updated_at\":1457607438,\"discount\":12313}', '2016-03-10 17:57:23', 'admin');
INSERT INTO `activity` VALUES ('2524', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607448,\"discount\":\"12313\"}', '{\"updated_at\":1457607443,\"discount\":12313}', '2016-03-10 17:57:28', 'admin');
INSERT INTO `activity` VALUES ('2525', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607453,\"discount\":\"12313\"}', '{\"updated_at\":1457607448,\"discount\":12313}', '2016-03-10 17:57:33', 'admin');
INSERT INTO `activity` VALUES ('2526', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607458,\"discount\":\"12313\"}', '{\"updated_at\":1457607453,\"discount\":12313}', '2016-03-10 17:57:38', 'admin');
INSERT INTO `activity` VALUES ('2527', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607463,\"discount\":\"12313\"}', '{\"updated_at\":1457607458,\"discount\":12313}', '2016-03-10 17:57:43', 'admin');
INSERT INTO `activity` VALUES ('2528', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607468,\"discount\":\"12313\"}', '{\"updated_at\":1457607463,\"discount\":12313}', '2016-03-10 17:57:48', 'admin');
INSERT INTO `activity` VALUES ('2529', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607473,\"discount\":\"12313\"}', '{\"updated_at\":1457607468,\"discount\":12313}', '2016-03-10 17:57:53', 'admin');
INSERT INTO `activity` VALUES ('2530', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607478,\"discount\":\"12313\"}', '{\"updated_at\":1457607473,\"discount\":12313}', '2016-03-10 17:57:58', 'admin');
INSERT INTO `activity` VALUES ('2531', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607483,\"discount\":\"12313\"}', '{\"updated_at\":1457607478,\"discount\":12313}', '2016-03-10 17:58:03', 'admin');
INSERT INTO `activity` VALUES ('2532', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607488,\"discount\":\"12313\"}', '{\"updated_at\":1457607483,\"discount\":12313}', '2016-03-10 17:58:08', 'admin');
INSERT INTO `activity` VALUES ('2533', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607493,\"discount\":\"12313\"}', '{\"updated_at\":1457607488,\"discount\":12313}', '2016-03-10 17:58:13', 'admin');
INSERT INTO `activity` VALUES ('2534', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607498,\"discount\":\"12313\"}', '{\"updated_at\":1457607493,\"discount\":12313}', '2016-03-10 17:58:18', 'admin');
INSERT INTO `activity` VALUES ('2535', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607503,\"discount\":\"12313\"}', '{\"updated_at\":1457607498,\"discount\":12313}', '2016-03-10 17:58:23', 'admin');
INSERT INTO `activity` VALUES ('2536', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607508,\"discount\":\"12313\"}', '{\"updated_at\":1457607503,\"discount\":12313}', '2016-03-10 17:58:28', 'admin');
INSERT INTO `activity` VALUES ('2537', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607513,\"discount\":\"12313\"}', '{\"updated_at\":1457607508,\"discount\":12313}', '2016-03-10 17:58:33', 'admin');
INSERT INTO `activity` VALUES ('2538', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607518,\"discount\":\"12313\"}', '{\"updated_at\":1457607513,\"discount\":12313}', '2016-03-10 17:58:38', 'admin');
INSERT INTO `activity` VALUES ('2539', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607523,\"discount\":\"12313\"}', '{\"updated_at\":1457607518,\"discount\":12313}', '2016-03-10 17:58:43', 'admin');
INSERT INTO `activity` VALUES ('2540', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607528,\"discount\":\"12313\"}', '{\"updated_at\":1457607523,\"discount\":12313}', '2016-03-10 17:58:48', 'admin');
INSERT INTO `activity` VALUES ('2541', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607533,\"discount\":\"12313\"}', '{\"updated_at\":1457607528,\"discount\":12313}', '2016-03-10 17:58:53', 'admin');
INSERT INTO `activity` VALUES ('2542', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607538,\"discount\":\"12313\"}', '{\"updated_at\":1457607533,\"discount\":12313}', '2016-03-10 17:58:58', 'admin');
INSERT INTO `activity` VALUES ('2543', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607543,\"discount\":\"12313\"}', '{\"updated_at\":1457607538,\"discount\":12313}', '2016-03-10 17:59:03', 'admin');
INSERT INTO `activity` VALUES ('2544', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607548,\"discount\":\"12313\"}', '{\"updated_at\":1457607543,\"discount\":12313}', '2016-03-10 17:59:08', 'admin');
INSERT INTO `activity` VALUES ('2545', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607553,\"discount\":\"12313\"}', '{\"updated_at\":1457607548,\"discount\":12313}', '2016-03-10 17:59:13', 'admin');
INSERT INTO `activity` VALUES ('2546', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607558,\"discount\":\"12313\"}', '{\"updated_at\":1457607553,\"discount\":12313}', '2016-03-10 17:59:18', 'admin');
INSERT INTO `activity` VALUES ('2547', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607563,\"discount\":\"12313\"}', '{\"updated_at\":1457607558,\"discount\":12313}', '2016-03-10 17:59:23', 'admin');
INSERT INTO `activity` VALUES ('2548', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607568,\"discount\":\"12313\"}', '{\"updated_at\":1457607563,\"discount\":12313}', '2016-03-10 17:59:28', 'admin');
INSERT INTO `activity` VALUES ('2549', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607573,\"discount\":\"12313\"}', '{\"updated_at\":1457607568,\"discount\":12313}', '2016-03-10 17:59:33', 'admin');
INSERT INTO `activity` VALUES ('2550', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607578,\"discount\":\"12313\"}', '{\"updated_at\":1457607573,\"discount\":12313}', '2016-03-10 17:59:38', 'admin');
INSERT INTO `activity` VALUES ('2551', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607583,\"discount\":\"12313\"}', '{\"updated_at\":1457607578,\"discount\":12313}', '2016-03-10 17:59:43', 'admin');
INSERT INTO `activity` VALUES ('2552', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607588,\"discount\":\"12313\"}', '{\"updated_at\":1457607583,\"discount\":12313}', '2016-03-10 17:59:48', 'admin');
INSERT INTO `activity` VALUES ('2553', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607593,\"discount\":\"12313\"}', '{\"updated_at\":1457607588,\"discount\":12313}', '2016-03-10 17:59:53', 'admin');
INSERT INTO `activity` VALUES ('2554', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607598,\"discount\":\"12313\"}', '{\"updated_at\":1457607593,\"discount\":12313}', '2016-03-10 17:59:58', 'admin');
INSERT INTO `activity` VALUES ('2555', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607603,\"discount\":\"12313\"}', '{\"updated_at\":1457607598,\"discount\":12313}', '2016-03-10 18:00:03', 'admin');
INSERT INTO `activity` VALUES ('2556', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607608,\"discount\":\"12313\"}', '{\"updated_at\":1457607603,\"discount\":12313}', '2016-03-10 18:00:08', 'admin');
INSERT INTO `activity` VALUES ('2557', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607613,\"discount\":\"12313\"}', '{\"updated_at\":1457607608,\"discount\":12313}', '2016-03-10 18:00:13', 'admin');
INSERT INTO `activity` VALUES ('2558', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607618,\"discount\":\"12313\"}', '{\"updated_at\":1457607613,\"discount\":12313}', '2016-03-10 18:00:18', 'admin');
INSERT INTO `activity` VALUES ('2559', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607623,\"discount\":\"12313\"}', '{\"updated_at\":1457607618,\"discount\":12313}', '2016-03-10 18:00:23', 'admin');
INSERT INTO `activity` VALUES ('2560', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607628,\"discount\":\"12313\"}', '{\"updated_at\":1457607623,\"discount\":12313}', '2016-03-10 18:00:28', 'admin');
INSERT INTO `activity` VALUES ('2561', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607633,\"discount\":\"12313\"}', '{\"updated_at\":1457607628,\"discount\":12313}', '2016-03-10 18:00:33', 'admin');
INSERT INTO `activity` VALUES ('2562', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607638,\"discount\":\"12313\"}', '{\"updated_at\":1457607633,\"discount\":12313}', '2016-03-10 18:00:38', 'admin');
INSERT INTO `activity` VALUES ('2563', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607643,\"discount\":\"12313\"}', '{\"updated_at\":1457607638,\"discount\":12313}', '2016-03-10 18:00:43', 'admin');
INSERT INTO `activity` VALUES ('2564', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607648,\"discount\":\"12313\"}', '{\"updated_at\":1457607643,\"discount\":12313}', '2016-03-10 18:00:48', 'admin');
INSERT INTO `activity` VALUES ('2565', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607653,\"discount\":\"12313\"}', '{\"updated_at\":1457607648,\"discount\":12313}', '2016-03-10 18:00:53', 'admin');
INSERT INTO `activity` VALUES ('2566', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607658,\"discount\":\"12313\"}', '{\"updated_at\":1457607653,\"discount\":12313}', '2016-03-10 18:00:58', 'admin');
INSERT INTO `activity` VALUES ('2567', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607663,\"discount\":\"12313\"}', '{\"updated_at\":1457607658,\"discount\":12313}', '2016-03-10 18:01:03', 'admin');
INSERT INTO `activity` VALUES ('2568', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607668,\"discount\":\"12313\"}', '{\"updated_at\":1457607663,\"discount\":12313}', '2016-03-10 18:01:08', 'admin');
INSERT INTO `activity` VALUES ('2569', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607673,\"discount\":\"12313\"}', '{\"updated_at\":1457607668,\"discount\":12313}', '2016-03-10 18:01:13', 'admin');
INSERT INTO `activity` VALUES ('2570', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607678,\"discount\":\"12313\"}', '{\"updated_at\":1457607673,\"discount\":12313}', '2016-03-10 18:01:18', 'admin');
INSERT INTO `activity` VALUES ('2571', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607683,\"discount\":\"12313\"}', '{\"updated_at\":1457607678,\"discount\":12313}', '2016-03-10 18:01:23', 'admin');
INSERT INTO `activity` VALUES ('2572', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607688,\"discount\":\"12313\"}', '{\"updated_at\":1457607683,\"discount\":12313}', '2016-03-10 18:01:28', 'admin');
INSERT INTO `activity` VALUES ('2573', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607693,\"discount\":\"12313\"}', '{\"updated_at\":1457607688,\"discount\":12313}', '2016-03-10 18:01:33', 'admin');
INSERT INTO `activity` VALUES ('2574', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607698,\"discount\":\"12313\"}', '{\"updated_at\":1457607693,\"discount\":12313}', '2016-03-10 18:01:38', 'admin');
INSERT INTO `activity` VALUES ('2575', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607703,\"discount\":\"12313\"}', '{\"updated_at\":1457607698,\"discount\":12313}', '2016-03-10 18:01:43', 'admin');
INSERT INTO `activity` VALUES ('2576', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607708,\"discount\":\"12313\"}', '{\"updated_at\":1457607703,\"discount\":12313}', '2016-03-10 18:01:48', 'admin');
INSERT INTO `activity` VALUES ('2577', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607713,\"discount\":\"12313\"}', '{\"updated_at\":1457607708,\"discount\":12313}', '2016-03-10 18:01:53', 'admin');
INSERT INTO `activity` VALUES ('2578', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607718,\"discount\":\"12313\"}', '{\"updated_at\":1457607713,\"discount\":12313}', '2016-03-10 18:01:58', 'admin');
INSERT INTO `activity` VALUES ('2579', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607723,\"discount\":\"12313\"}', '{\"updated_at\":1457607718,\"discount\":12313}', '2016-03-10 18:02:03', 'admin');
INSERT INTO `activity` VALUES ('2580', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607728,\"discount\":\"12313\"}', '{\"updated_at\":1457607723,\"discount\":12313}', '2016-03-10 18:02:08', 'admin');
INSERT INTO `activity` VALUES ('2581', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607733,\"discount\":\"12313\"}', '{\"updated_at\":1457607728,\"discount\":12313}', '2016-03-10 18:02:13', 'admin');
INSERT INTO `activity` VALUES ('2582', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607738,\"discount\":\"12313\"}', '{\"updated_at\":1457607733,\"discount\":12313}', '2016-03-10 18:02:18', 'admin');
INSERT INTO `activity` VALUES ('2583', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607743,\"discount\":\"12313\"}', '{\"updated_at\":1457607738,\"discount\":12313}', '2016-03-10 18:02:23', 'admin');
INSERT INTO `activity` VALUES ('2584', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607748,\"discount\":\"12313\"}', '{\"updated_at\":1457607743,\"discount\":12313}', '2016-03-10 18:02:28', 'admin');
INSERT INTO `activity` VALUES ('2585', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607753,\"discount\":\"12313\"}', '{\"updated_at\":1457607748,\"discount\":12313}', '2016-03-10 18:02:33', 'admin');
INSERT INTO `activity` VALUES ('2586', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607758,\"discount\":\"12313\"}', '{\"updated_at\":1457607753,\"discount\":12313}', '2016-03-10 18:02:38', 'admin');
INSERT INTO `activity` VALUES ('2587', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607763,\"discount\":\"12313\"}', '{\"updated_at\":1457607758,\"discount\":12313}', '2016-03-10 18:02:43', 'admin');
INSERT INTO `activity` VALUES ('2588', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607768,\"discount\":\"12313\"}', '{\"updated_at\":1457607763,\"discount\":12313}', '2016-03-10 18:02:48', 'admin');
INSERT INTO `activity` VALUES ('2589', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607773,\"discount\":\"12313\"}', '{\"updated_at\":1457607768,\"discount\":12313}', '2016-03-10 18:02:53', 'admin');
INSERT INTO `activity` VALUES ('2590', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607778,\"discount\":\"12313\"}', '{\"updated_at\":1457607773,\"discount\":12313}', '2016-03-10 18:02:58', 'admin');
INSERT INTO `activity` VALUES ('2591', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607783,\"discount\":\"12313\"}', '{\"updated_at\":1457607778,\"discount\":12313}', '2016-03-10 18:03:03', 'admin');
INSERT INTO `activity` VALUES ('2592', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607788,\"discount\":\"12313\"}', '{\"updated_at\":1457607783,\"discount\":12313}', '2016-03-10 18:03:08', 'admin');
INSERT INTO `activity` VALUES ('2593', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607793,\"discount\":\"12313\"}', '{\"updated_at\":1457607788,\"discount\":12313}', '2016-03-10 18:03:13', 'admin');
INSERT INTO `activity` VALUES ('2594', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607798,\"discount\":\"12313\"}', '{\"updated_at\":1457607793,\"discount\":12313}', '2016-03-10 18:03:18', 'admin');
INSERT INTO `activity` VALUES ('2595', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607803,\"discount\":\"12313\"}', '{\"updated_at\":1457607798,\"discount\":12313}', '2016-03-10 18:03:23', 'admin');
INSERT INTO `activity` VALUES ('2596', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607808,\"discount\":\"12313\"}', '{\"updated_at\":1457607803,\"discount\":12313}', '2016-03-10 18:03:28', 'admin');
INSERT INTO `activity` VALUES ('2597', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607813,\"discount\":\"12313\"}', '{\"updated_at\":1457607808,\"discount\":12313}', '2016-03-10 18:03:33', 'admin');
INSERT INTO `activity` VALUES ('2598', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607818,\"discount\":\"12313\"}', '{\"updated_at\":1457607813,\"discount\":12313}', '2016-03-10 18:03:38', 'admin');
INSERT INTO `activity` VALUES ('2599', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607823,\"discount\":\"12313\"}', '{\"updated_at\":1457607818,\"discount\":12313}', '2016-03-10 18:03:43', 'admin');
INSERT INTO `activity` VALUES ('2600', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607828,\"discount\":\"12313\"}', '{\"updated_at\":1457607823,\"discount\":12313}', '2016-03-10 18:03:48', 'admin');
INSERT INTO `activity` VALUES ('2601', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607833,\"discount\":\"12313\"}', '{\"updated_at\":1457607828,\"discount\":12313}', '2016-03-10 18:03:53', 'admin');
INSERT INTO `activity` VALUES ('2602', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607838,\"discount\":\"12313\"}', '{\"updated_at\":1457607833,\"discount\":12313}', '2016-03-10 18:03:58', 'admin');
INSERT INTO `activity` VALUES ('2603', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607843,\"discount\":\"12313\"}', '{\"updated_at\":1457607838,\"discount\":12313}', '2016-03-10 18:04:03', 'admin');
INSERT INTO `activity` VALUES ('2604', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607848,\"discount\":\"12313\"}', '{\"updated_at\":1457607843,\"discount\":12313}', '2016-03-10 18:04:08', 'admin');
INSERT INTO `activity` VALUES ('2605', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607853,\"discount\":\"12313\"}', '{\"updated_at\":1457607848,\"discount\":12313}', '2016-03-10 18:04:13', 'admin');
INSERT INTO `activity` VALUES ('2606', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607858,\"discount\":\"12313\"}', '{\"updated_at\":1457607853,\"discount\":12313}', '2016-03-10 18:04:18', 'admin');
INSERT INTO `activity` VALUES ('2607', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607863,\"discount\":\"12313\"}', '{\"updated_at\":1457607858,\"discount\":12313}', '2016-03-10 18:04:23', 'admin');
INSERT INTO `activity` VALUES ('2608', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607868,\"discount\":\"12313\"}', '{\"updated_at\":1457607863,\"discount\":12313}', '2016-03-10 18:04:28', 'admin');
INSERT INTO `activity` VALUES ('2609', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607873,\"discount\":\"12313\"}', '{\"updated_at\":1457607868,\"discount\":12313}', '2016-03-10 18:04:33', 'admin');
INSERT INTO `activity` VALUES ('2610', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607878,\"discount\":\"12313\"}', '{\"updated_at\":1457607873,\"discount\":12313}', '2016-03-10 18:04:38', 'admin');
INSERT INTO `activity` VALUES ('2611', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607883,\"discount\":\"12313\"}', '{\"updated_at\":1457607878,\"discount\":12313}', '2016-03-10 18:04:43', 'admin');
INSERT INTO `activity` VALUES ('2612', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607888,\"discount\":\"12313\"}', '{\"updated_at\":1457607883,\"discount\":12313}', '2016-03-10 18:04:48', 'admin');
INSERT INTO `activity` VALUES ('2613', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607893,\"discount\":\"12313\"}', '{\"updated_at\":1457607888,\"discount\":12313}', '2016-03-10 18:04:53', 'admin');
INSERT INTO `activity` VALUES ('2614', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607898,\"discount\":\"12313\"}', '{\"updated_at\":1457607893,\"discount\":12313}', '2016-03-10 18:04:58', 'admin');
INSERT INTO `activity` VALUES ('2615', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607903,\"discount\":\"12313\"}', '{\"updated_at\":1457607898,\"discount\":12313}', '2016-03-10 18:05:03', 'admin');
INSERT INTO `activity` VALUES ('2616', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607908,\"discount\":\"12313\"}', '{\"updated_at\":1457607903,\"discount\":12313}', '2016-03-10 18:05:08', 'admin');
INSERT INTO `activity` VALUES ('2617', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607913,\"discount\":\"12313\"}', '{\"updated_at\":1457607908,\"discount\":12313}', '2016-03-10 18:05:13', 'admin');
INSERT INTO `activity` VALUES ('2618', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607918,\"discount\":\"12313\"}', '{\"updated_at\":1457607913,\"discount\":12313}', '2016-03-10 18:05:18', 'admin');
INSERT INTO `activity` VALUES ('2619', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607923,\"discount\":\"12313\"}', '{\"updated_at\":1457607918,\"discount\":12313}', '2016-03-10 18:05:23', 'admin');
INSERT INTO `activity` VALUES ('2620', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607928,\"discount\":\"12313\"}', '{\"updated_at\":1457607923,\"discount\":12313}', '2016-03-10 18:05:28', 'admin');
INSERT INTO `activity` VALUES ('2621', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607933,\"discount\":\"12313\"}', '{\"updated_at\":1457607928,\"discount\":12313}', '2016-03-10 18:05:33', 'admin');
INSERT INTO `activity` VALUES ('2622', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607938,\"discount\":\"12313\"}', '{\"updated_at\":1457607933,\"discount\":12313}', '2016-03-10 18:05:38', 'admin');
INSERT INTO `activity` VALUES ('2623', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607943,\"discount\":\"12313\"}', '{\"updated_at\":1457607938,\"discount\":12313}', '2016-03-10 18:05:43', 'admin');
INSERT INTO `activity` VALUES ('2624', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607948,\"discount\":\"12313\"}', '{\"updated_at\":1457607943,\"discount\":12313}', '2016-03-10 18:05:48', 'admin');
INSERT INTO `activity` VALUES ('2625', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607953,\"discount\":\"12313\"}', '{\"updated_at\":1457607948,\"discount\":12313}', '2016-03-10 18:05:53', 'admin');
INSERT INTO `activity` VALUES ('2626', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607958,\"discount\":\"12313\"}', '{\"updated_at\":1457607953,\"discount\":12313}', '2016-03-10 18:05:58', 'admin');
INSERT INTO `activity` VALUES ('2627', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607963,\"discount\":\"12313\"}', '{\"updated_at\":1457607958,\"discount\":12313}', '2016-03-10 18:06:03', 'admin');
INSERT INTO `activity` VALUES ('2628', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607968,\"discount\":\"12313\"}', '{\"updated_at\":1457607963,\"discount\":12313}', '2016-03-10 18:06:08', 'admin');
INSERT INTO `activity` VALUES ('2629', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607973,\"discount\":\"12313\"}', '{\"updated_at\":1457607968,\"discount\":12313}', '2016-03-10 18:06:13', 'admin');
INSERT INTO `activity` VALUES ('2630', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607978,\"discount\":\"12313\"}', '{\"updated_at\":1457607973,\"discount\":12313}', '2016-03-10 18:06:18', 'admin');
INSERT INTO `activity` VALUES ('2631', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607983,\"discount\":\"12313\"}', '{\"updated_at\":1457607978,\"discount\":12313}', '2016-03-10 18:06:23', 'admin');
INSERT INTO `activity` VALUES ('2632', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607988,\"discount\":\"12313\"}', '{\"updated_at\":1457607983,\"discount\":12313}', '2016-03-10 18:06:28', 'admin');
INSERT INTO `activity` VALUES ('2633', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607993,\"discount\":\"12313\"}', '{\"updated_at\":1457607988,\"discount\":12313}', '2016-03-10 18:06:33', 'admin');
INSERT INTO `activity` VALUES ('2634', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457607998,\"discount\":\"12313\"}', '{\"updated_at\":1457607993,\"discount\":12313}', '2016-03-10 18:06:38', 'admin');
INSERT INTO `activity` VALUES ('2635', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608003,\"discount\":\"12313\"}', '{\"updated_at\":1457607998,\"discount\":12313}', '2016-03-10 18:06:43', 'admin');
INSERT INTO `activity` VALUES ('2636', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608008,\"discount\":\"12313\"}', '{\"updated_at\":1457608003,\"discount\":12313}', '2016-03-10 18:06:48', 'admin');
INSERT INTO `activity` VALUES ('2637', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608013,\"discount\":\"12313\"}', '{\"updated_at\":1457608008,\"discount\":12313}', '2016-03-10 18:06:53', 'admin');
INSERT INTO `activity` VALUES ('2638', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608018,\"discount\":\"12313\"}', '{\"updated_at\":1457608013,\"discount\":12313}', '2016-03-10 18:06:58', 'admin');
INSERT INTO `activity` VALUES ('2639', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608023,\"discount\":\"12313\"}', '{\"updated_at\":1457608018,\"discount\":12313}', '2016-03-10 18:07:03', 'admin');
INSERT INTO `activity` VALUES ('2640', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608028,\"discount\":\"12313\"}', '{\"updated_at\":1457608023,\"discount\":12313}', '2016-03-10 18:07:08', 'admin');
INSERT INTO `activity` VALUES ('2641', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608033,\"discount\":\"12313\"}', '{\"updated_at\":1457608028,\"discount\":12313}', '2016-03-10 18:07:13', 'admin');
INSERT INTO `activity` VALUES ('2642', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608038,\"discount\":\"12313\"}', '{\"updated_at\":1457608033,\"discount\":12313}', '2016-03-10 18:07:18', 'admin');
INSERT INTO `activity` VALUES ('2643', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608043,\"discount\":\"12313\"}', '{\"updated_at\":1457608038,\"discount\":12313}', '2016-03-10 18:07:23', 'admin');
INSERT INTO `activity` VALUES ('2644', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608048,\"discount\":\"12313\"}', '{\"updated_at\":1457608043,\"discount\":12313}', '2016-03-10 18:07:28', 'admin');
INSERT INTO `activity` VALUES ('2645', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608053,\"discount\":\"12313\"}', '{\"updated_at\":1457608048,\"discount\":12313}', '2016-03-10 18:07:33', 'admin');
INSERT INTO `activity` VALUES ('2646', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608058,\"discount\":\"12313\"}', '{\"updated_at\":1457608053,\"discount\":12313}', '2016-03-10 18:07:38', 'admin');
INSERT INTO `activity` VALUES ('2647', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608063,\"discount\":\"12313\"}', '{\"updated_at\":1457608058,\"discount\":12313}', '2016-03-10 18:07:43', 'admin');
INSERT INTO `activity` VALUES ('2648', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608068,\"discount\":\"12313\"}', '{\"updated_at\":1457608063,\"discount\":12313}', '2016-03-10 18:07:48', 'admin');
INSERT INTO `activity` VALUES ('2649', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608073,\"discount\":\"12313\"}', '{\"updated_at\":1457608068,\"discount\":12313}', '2016-03-10 18:07:53', 'admin');
INSERT INTO `activity` VALUES ('2650', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608078,\"discount\":\"12313\"}', '{\"updated_at\":1457608073,\"discount\":12313}', '2016-03-10 18:07:58', 'admin');
INSERT INTO `activity` VALUES ('2651', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608083,\"discount\":\"12313\"}', '{\"updated_at\":1457608078,\"discount\":12313}', '2016-03-10 18:08:03', 'admin');
INSERT INTO `activity` VALUES ('2652', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608088,\"discount\":\"12313\"}', '{\"updated_at\":1457608083,\"discount\":12313}', '2016-03-10 18:08:08', 'admin');
INSERT INTO `activity` VALUES ('2653', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608093,\"discount\":\"12313\"}', '{\"updated_at\":1457608088,\"discount\":12313}', '2016-03-10 18:08:13', 'admin');
INSERT INTO `activity` VALUES ('2654', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608098,\"discount\":\"12313\"}', '{\"updated_at\":1457608093,\"discount\":12313}', '2016-03-10 18:08:18', 'admin');
INSERT INTO `activity` VALUES ('2655', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608103,\"discount\":\"12313\"}', '{\"updated_at\":1457608098,\"discount\":12313}', '2016-03-10 18:08:23', 'admin');
INSERT INTO `activity` VALUES ('2656', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608108,\"discount\":\"12313\"}', '{\"updated_at\":1457608103,\"discount\":12313}', '2016-03-10 18:08:28', 'admin');
INSERT INTO `activity` VALUES ('2657', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608113,\"discount\":\"12313\"}', '{\"updated_at\":1457608108,\"discount\":12313}', '2016-03-10 18:08:33', 'admin');
INSERT INTO `activity` VALUES ('2658', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608118,\"discount\":\"12313\"}', '{\"updated_at\":1457608113,\"discount\":12313}', '2016-03-10 18:08:38', 'admin');
INSERT INTO `activity` VALUES ('2659', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608123,\"discount\":\"12313\"}', '{\"updated_at\":1457608118,\"discount\":12313}', '2016-03-10 18:08:43', 'admin');
INSERT INTO `activity` VALUES ('2660', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608128,\"discount\":\"12313\"}', '{\"updated_at\":1457608123,\"discount\":12313}', '2016-03-10 18:08:48', 'admin');
INSERT INTO `activity` VALUES ('2661', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608133,\"discount\":\"12313\"}', '{\"updated_at\":1457608128,\"discount\":12313}', '2016-03-10 18:08:53', 'admin');
INSERT INTO `activity` VALUES ('2662', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608138,\"discount\":\"12313\"}', '{\"updated_at\":1457608133,\"discount\":12313}', '2016-03-10 18:08:58', 'admin');
INSERT INTO `activity` VALUES ('2663', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608143,\"discount\":\"12313\"}', '{\"updated_at\":1457608138,\"discount\":12313}', '2016-03-10 18:09:03', 'admin');
INSERT INTO `activity` VALUES ('2664', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608148,\"discount\":\"12313\"}', '{\"updated_at\":1457608143,\"discount\":12313}', '2016-03-10 18:09:08', 'admin');
INSERT INTO `activity` VALUES ('2665', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608153,\"discount\":\"12313\"}', '{\"updated_at\":1457608148,\"discount\":12313}', '2016-03-10 18:09:13', 'admin');
INSERT INTO `activity` VALUES ('2666', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608158,\"discount\":\"12313\"}', '{\"updated_at\":1457608153,\"discount\":12313}', '2016-03-10 18:09:18', 'admin');
INSERT INTO `activity` VALUES ('2667', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608163,\"discount\":\"12313\"}', '{\"updated_at\":1457608158,\"discount\":12313}', '2016-03-10 18:09:23', 'admin');
INSERT INTO `activity` VALUES ('2668', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608168,\"discount\":\"12313\"}', '{\"updated_at\":1457608163,\"discount\":12313}', '2016-03-10 18:09:28', 'admin');
INSERT INTO `activity` VALUES ('2669', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608173,\"discount\":\"12313\"}', '{\"updated_at\":1457608168,\"discount\":12313}', '2016-03-10 18:09:33', 'admin');
INSERT INTO `activity` VALUES ('2670', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608178,\"discount\":\"12313\"}', '{\"updated_at\":1457608173,\"discount\":12313}', '2016-03-10 18:09:38', 'admin');
INSERT INTO `activity` VALUES ('2671', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608183,\"discount\":\"12313\"}', '{\"updated_at\":1457608178,\"discount\":12313}', '2016-03-10 18:09:43', 'admin');
INSERT INTO `activity` VALUES ('2672', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608188,\"discount\":\"12313\"}', '{\"updated_at\":1457608183,\"discount\":12313}', '2016-03-10 18:09:48', 'admin');
INSERT INTO `activity` VALUES ('2673', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608193,\"discount\":\"12313\"}', '{\"updated_at\":1457608188,\"discount\":12313}', '2016-03-10 18:09:53', 'admin');
INSERT INTO `activity` VALUES ('2674', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608198,\"discount\":\"12313\"}', '{\"updated_at\":1457608193,\"discount\":12313}', '2016-03-10 18:09:58', 'admin');
INSERT INTO `activity` VALUES ('2675', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608203,\"discount\":\"12313\"}', '{\"updated_at\":1457608198,\"discount\":12313}', '2016-03-10 18:10:03', 'admin');
INSERT INTO `activity` VALUES ('2676', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608208,\"discount\":\"12313\"}', '{\"updated_at\":1457608203,\"discount\":12313}', '2016-03-10 18:10:08', 'admin');
INSERT INTO `activity` VALUES ('2677', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608213,\"discount\":\"12313\"}', '{\"updated_at\":1457608208,\"discount\":12313}', '2016-03-10 18:10:13', 'admin');
INSERT INTO `activity` VALUES ('2678', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608218,\"discount\":\"12313\"}', '{\"updated_at\":1457608213,\"discount\":12313}', '2016-03-10 18:10:18', 'admin');
INSERT INTO `activity` VALUES ('2679', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608223,\"discount\":\"12313\"}', '{\"updated_at\":1457608218,\"discount\":12313}', '2016-03-10 18:10:23', 'admin');
INSERT INTO `activity` VALUES ('2680', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608228,\"discount\":\"12313\"}', '{\"updated_at\":1457608223,\"discount\":12313}', '2016-03-10 18:10:28', 'admin');
INSERT INTO `activity` VALUES ('2681', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608233,\"discount\":\"12313\"}', '{\"updated_at\":1457608228,\"discount\":12313}', '2016-03-10 18:10:33', 'admin');
INSERT INTO `activity` VALUES ('2682', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608238,\"discount\":\"12313\"}', '{\"updated_at\":1457608233,\"discount\":12313}', '2016-03-10 18:10:38', 'admin');
INSERT INTO `activity` VALUES ('2683', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608243,\"discount\":\"12313\"}', '{\"updated_at\":1457608238,\"discount\":12313}', '2016-03-10 18:10:43', 'admin');
INSERT INTO `activity` VALUES ('2684', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608248,\"discount\":\"12313\"}', '{\"updated_at\":1457608243,\"discount\":12313}', '2016-03-10 18:10:48', 'admin');
INSERT INTO `activity` VALUES ('2685', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608253,\"discount\":\"12313\"}', '{\"updated_at\":1457608248,\"discount\":12313}', '2016-03-10 18:10:53', 'admin');
INSERT INTO `activity` VALUES ('2686', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608258,\"discount\":\"12313\"}', '{\"updated_at\":1457608253,\"discount\":12313}', '2016-03-10 18:10:58', 'admin');
INSERT INTO `activity` VALUES ('2687', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608263,\"discount\":\"12313\"}', '{\"updated_at\":1457608258,\"discount\":12313}', '2016-03-10 18:11:03', 'admin');
INSERT INTO `activity` VALUES ('2688', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608268,\"discount\":\"12313\"}', '{\"updated_at\":1457608263,\"discount\":12313}', '2016-03-10 18:11:08', 'admin');
INSERT INTO `activity` VALUES ('2689', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608273,\"discount\":\"12313\"}', '{\"updated_at\":1457608268,\"discount\":12313}', '2016-03-10 18:11:13', 'admin');
INSERT INTO `activity` VALUES ('2690', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608278,\"discount\":\"12313\"}', '{\"updated_at\":1457608273,\"discount\":12313}', '2016-03-10 18:11:18', 'admin');
INSERT INTO `activity` VALUES ('2691', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608283,\"discount\":\"12313\"}', '{\"updated_at\":1457608278,\"discount\":12313}', '2016-03-10 18:11:23', 'admin');
INSERT INTO `activity` VALUES ('2692', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608288,\"discount\":\"12313\"}', '{\"updated_at\":1457608283,\"discount\":12313}', '2016-03-10 18:11:28', 'admin');
INSERT INTO `activity` VALUES ('2693', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608293,\"discount\":\"12313\"}', '{\"updated_at\":1457608288,\"discount\":12313}', '2016-03-10 18:11:33', 'admin');
INSERT INTO `activity` VALUES ('2694', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608298,\"discount\":\"12313\"}', '{\"updated_at\":1457608293,\"discount\":12313}', '2016-03-10 18:11:38', 'admin');
INSERT INTO `activity` VALUES ('2695', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608303,\"discount\":\"12313\"}', '{\"updated_at\":1457608298,\"discount\":12313}', '2016-03-10 18:11:43', 'admin');
INSERT INTO `activity` VALUES ('2696', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608308,\"discount\":\"12313\"}', '{\"updated_at\":1457608303,\"discount\":12313}', '2016-03-10 18:11:48', 'admin');
INSERT INTO `activity` VALUES ('2697', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608313,\"discount\":\"12313\"}', '{\"updated_at\":1457608308,\"discount\":12313}', '2016-03-10 18:11:53', 'admin');
INSERT INTO `activity` VALUES ('2698', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608318,\"discount\":\"12313\"}', '{\"updated_at\":1457608313,\"discount\":12313}', '2016-03-10 18:11:58', 'admin');
INSERT INTO `activity` VALUES ('2699', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608323,\"discount\":\"12313\"}', '{\"updated_at\":1457608318,\"discount\":12313}', '2016-03-10 18:12:03', 'admin');
INSERT INTO `activity` VALUES ('2700', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608328,\"discount\":\"12313\"}', '{\"updated_at\":1457608323,\"discount\":12313}', '2016-03-10 18:12:08', 'admin');
INSERT INTO `activity` VALUES ('2701', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608333,\"discount\":\"12313\"}', '{\"updated_at\":1457608328,\"discount\":12313}', '2016-03-10 18:12:13', 'admin');
INSERT INTO `activity` VALUES ('2702', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608338,\"discount\":\"12313\"}', '{\"updated_at\":1457608333,\"discount\":12313}', '2016-03-10 18:12:18', 'admin');
INSERT INTO `activity` VALUES ('2703', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608343,\"discount\":\"12313\"}', '{\"updated_at\":1457608338,\"discount\":12313}', '2016-03-10 18:12:23', 'admin');
INSERT INTO `activity` VALUES ('2704', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608348,\"discount\":\"12313\"}', '{\"updated_at\":1457608343,\"discount\":12313}', '2016-03-10 18:12:28', 'admin');
INSERT INTO `activity` VALUES ('2705', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608353,\"discount\":\"12313\"}', '{\"updated_at\":1457608348,\"discount\":12313}', '2016-03-10 18:12:33', 'admin');
INSERT INTO `activity` VALUES ('2706', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608358,\"discount\":\"12313\"}', '{\"updated_at\":1457608353,\"discount\":12313}', '2016-03-10 18:12:38', 'admin');
INSERT INTO `activity` VALUES ('2707', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608363,\"discount\":\"12313\"}', '{\"updated_at\":1457608358,\"discount\":12313}', '2016-03-10 18:12:43', 'admin');
INSERT INTO `activity` VALUES ('2708', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608368,\"discount\":\"12313\"}', '{\"updated_at\":1457608363,\"discount\":12313}', '2016-03-10 18:12:48', 'admin');
INSERT INTO `activity` VALUES ('2709', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608373,\"discount\":\"12313\"}', '{\"updated_at\":1457608368,\"discount\":12313}', '2016-03-10 18:12:53', 'admin');
INSERT INTO `activity` VALUES ('2710', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608378,\"discount\":\"12313\"}', '{\"updated_at\":1457608373,\"discount\":12313}', '2016-03-10 18:12:58', 'admin');
INSERT INTO `activity` VALUES ('2711', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608383,\"discount\":\"12313\"}', '{\"updated_at\":1457608378,\"discount\":12313}', '2016-03-10 18:13:03', 'admin');
INSERT INTO `activity` VALUES ('2712', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608388,\"discount\":\"12313\"}', '{\"updated_at\":1457608383,\"discount\":12313}', '2016-03-10 18:13:08', 'admin');
INSERT INTO `activity` VALUES ('2713', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608393,\"discount\":\"12313\"}', '{\"updated_at\":1457608388,\"discount\":12313}', '2016-03-10 18:13:13', 'admin');
INSERT INTO `activity` VALUES ('2714', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608398,\"discount\":\"12313\"}', '{\"updated_at\":1457608393,\"discount\":12313}', '2016-03-10 18:13:18', 'admin');
INSERT INTO `activity` VALUES ('2715', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608403,\"discount\":\"12313\"}', '{\"updated_at\":1457608398,\"discount\":12313}', '2016-03-10 18:13:23', 'admin');
INSERT INTO `activity` VALUES ('2716', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608408,\"discount\":\"12313\"}', '{\"updated_at\":1457608403,\"discount\":12313}', '2016-03-10 18:13:28', 'admin');
INSERT INTO `activity` VALUES ('2717', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608413,\"discount\":\"12313\"}', '{\"updated_at\":1457608408,\"discount\":12313}', '2016-03-10 18:13:33', 'admin');
INSERT INTO `activity` VALUES ('2718', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608418,\"discount\":\"12313\"}', '{\"updated_at\":1457608413,\"discount\":12313}', '2016-03-10 18:13:38', 'admin');
INSERT INTO `activity` VALUES ('2719', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608423,\"discount\":\"12313\"}', '{\"updated_at\":1457608418,\"discount\":12313}', '2016-03-10 18:13:43', 'admin');
INSERT INTO `activity` VALUES ('2720', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608428,\"discount\":\"12313\"}', '{\"updated_at\":1457608423,\"discount\":12313}', '2016-03-10 18:13:48', 'admin');
INSERT INTO `activity` VALUES ('2721', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608433,\"discount\":\"12313\"}', '{\"updated_at\":1457608428,\"discount\":12313}', '2016-03-10 18:13:53', 'admin');
INSERT INTO `activity` VALUES ('2722', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608438,\"discount\":\"12313\"}', '{\"updated_at\":1457608433,\"discount\":12313}', '2016-03-10 18:13:58', 'admin');
INSERT INTO `activity` VALUES ('2723', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608443,\"discount\":\"12313\"}', '{\"updated_at\":1457608438,\"discount\":12313}', '2016-03-10 18:14:03', 'admin');
INSERT INTO `activity` VALUES ('2724', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608448,\"discount\":\"12313\"}', '{\"updated_at\":1457608443,\"discount\":12313}', '2016-03-10 18:14:08', 'admin');
INSERT INTO `activity` VALUES ('2725', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608453,\"discount\":\"12313\"}', '{\"updated_at\":1457608448,\"discount\":12313}', '2016-03-10 18:14:13', 'admin');
INSERT INTO `activity` VALUES ('2726', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608458,\"discount\":\"12313\"}', '{\"updated_at\":1457608453,\"discount\":12313}', '2016-03-10 18:14:18', 'admin');
INSERT INTO `activity` VALUES ('2727', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608463,\"discount\":\"12313\"}', '{\"updated_at\":1457608458,\"discount\":12313}', '2016-03-10 18:14:23', 'admin');
INSERT INTO `activity` VALUES ('2728', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608468,\"discount\":\"12313\"}', '{\"updated_at\":1457608463,\"discount\":12313}', '2016-03-10 18:14:28', 'admin');
INSERT INTO `activity` VALUES ('2729', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608473,\"discount\":\"12313\"}', '{\"updated_at\":1457608468,\"discount\":12313}', '2016-03-10 18:14:33', 'admin');
INSERT INTO `activity` VALUES ('2730', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608478,\"discount\":\"12313\"}', '{\"updated_at\":1457608473,\"discount\":12313}', '2016-03-10 18:14:38', 'admin');
INSERT INTO `activity` VALUES ('2731', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608483,\"discount\":\"12313\"}', '{\"updated_at\":1457608478,\"discount\":12313}', '2016-03-10 18:14:43', 'admin');
INSERT INTO `activity` VALUES ('2732', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608488,\"discount\":\"12313\"}', '{\"updated_at\":1457608483,\"discount\":12313}', '2016-03-10 18:14:48', 'admin');
INSERT INTO `activity` VALUES ('2733', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608493,\"discount\":\"12313\"}', '{\"updated_at\":1457608488,\"discount\":12313}', '2016-03-10 18:14:53', 'admin');
INSERT INTO `activity` VALUES ('2734', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608498,\"discount\":\"12313\"}', '{\"updated_at\":1457608493,\"discount\":12313}', '2016-03-10 18:14:58', 'admin');
INSERT INTO `activity` VALUES ('2735', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608503,\"discount\":\"12313\"}', '{\"updated_at\":1457608498,\"discount\":12313}', '2016-03-10 18:15:03', 'admin');
INSERT INTO `activity` VALUES ('2736', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608508,\"discount\":\"12313\"}', '{\"updated_at\":1457608503,\"discount\":12313}', '2016-03-10 18:15:08', 'admin');
INSERT INTO `activity` VALUES ('2737', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608513,\"discount\":\"12313\"}', '{\"updated_at\":1457608508,\"discount\":12313}', '2016-03-10 18:15:13', 'admin');
INSERT INTO `activity` VALUES ('2738', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608518,\"discount\":\"12313\"}', '{\"updated_at\":1457608513,\"discount\":12313}', '2016-03-10 18:15:18', 'admin');
INSERT INTO `activity` VALUES ('2739', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608523,\"discount\":\"12313\"}', '{\"updated_at\":1457608518,\"discount\":12313}', '2016-03-10 18:15:23', 'admin');
INSERT INTO `activity` VALUES ('2740', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608528,\"discount\":\"12313\"}', '{\"updated_at\":1457608523,\"discount\":12313}', '2016-03-10 18:15:28', 'admin');
INSERT INTO `activity` VALUES ('2741', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608533,\"discount\":\"12313\"}', '{\"updated_at\":1457608528,\"discount\":12313}', '2016-03-10 18:15:33', 'admin');
INSERT INTO `activity` VALUES ('2742', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608538,\"discount\":\"12313\"}', '{\"updated_at\":1457608533,\"discount\":12313}', '2016-03-10 18:15:38', 'admin');
INSERT INTO `activity` VALUES ('2743', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608543,\"discount\":\"12313\"}', '{\"updated_at\":1457608538,\"discount\":12313}', '2016-03-10 18:15:43', 'admin');
INSERT INTO `activity` VALUES ('2744', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608548,\"discount\":\"12313\"}', '{\"updated_at\":1457608543,\"discount\":12313}', '2016-03-10 18:15:48', 'admin');
INSERT INTO `activity` VALUES ('2745', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608553,\"discount\":\"12313\"}', '{\"updated_at\":1457608548,\"discount\":12313}', '2016-03-10 18:15:53', 'admin');
INSERT INTO `activity` VALUES ('2746', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608558,\"discount\":\"12313\"}', '{\"updated_at\":1457608553,\"discount\":12313}', '2016-03-10 18:15:58', 'admin');
INSERT INTO `activity` VALUES ('2747', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608563,\"discount\":\"12313\"}', '{\"updated_at\":1457608558,\"discount\":12313}', '2016-03-10 18:16:03', 'admin');
INSERT INTO `activity` VALUES ('2748', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608568,\"discount\":\"12313\"}', '{\"updated_at\":1457608563,\"discount\":12313}', '2016-03-10 18:16:08', 'admin');
INSERT INTO `activity` VALUES ('2749', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608573,\"discount\":\"12313\"}', '{\"updated_at\":1457608568,\"discount\":12313}', '2016-03-10 18:16:13', 'admin');
INSERT INTO `activity` VALUES ('2750', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608578,\"discount\":\"12313\"}', '{\"updated_at\":1457608573,\"discount\":12313}', '2016-03-10 18:16:18', 'admin');
INSERT INTO `activity` VALUES ('2751', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608583,\"discount\":\"12313\"}', '{\"updated_at\":1457608578,\"discount\":12313}', '2016-03-10 18:16:23', 'admin');
INSERT INTO `activity` VALUES ('2752', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608588,\"discount\":\"12313\"}', '{\"updated_at\":1457608583,\"discount\":12313}', '2016-03-10 18:16:28', 'admin');
INSERT INTO `activity` VALUES ('2753', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608593,\"discount\":\"12313\"}', '{\"updated_at\":1457608588,\"discount\":12313}', '2016-03-10 18:16:33', 'admin');
INSERT INTO `activity` VALUES ('2754', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608598,\"discount\":\"12313\"}', '{\"updated_at\":1457608593,\"discount\":12313}', '2016-03-10 18:16:38', 'admin');
INSERT INTO `activity` VALUES ('2755', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608603,\"discount\":\"12313\"}', '{\"updated_at\":1457608598,\"discount\":12313}', '2016-03-10 18:16:43', 'admin');
INSERT INTO `activity` VALUES ('2756', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608608,\"discount\":\"12313\"}', '{\"updated_at\":1457608603,\"discount\":12313}', '2016-03-10 18:16:48', 'admin');
INSERT INTO `activity` VALUES ('2757', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608613,\"discount\":\"12313\"}', '{\"updated_at\":1457608608,\"discount\":12313}', '2016-03-10 18:16:53', 'admin');
INSERT INTO `activity` VALUES ('2758', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608618,\"discount\":\"12313\"}', '{\"updated_at\":1457608613,\"discount\":12313}', '2016-03-10 18:16:58', 'admin');
INSERT INTO `activity` VALUES ('2759', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608623,\"discount\":\"12313\"}', '{\"updated_at\":1457608618,\"discount\":12313}', '2016-03-10 18:17:03', 'admin');
INSERT INTO `activity` VALUES ('2760', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608628,\"discount\":\"12313\"}', '{\"updated_at\":1457608623,\"discount\":12313}', '2016-03-10 18:17:08', 'admin');
INSERT INTO `activity` VALUES ('2761', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608633,\"discount\":\"12313\"}', '{\"updated_at\":1457608628,\"discount\":12313}', '2016-03-10 18:17:13', 'admin');
INSERT INTO `activity` VALUES ('2762', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608638,\"discount\":\"12313\"}', '{\"updated_at\":1457608633,\"discount\":12313}', '2016-03-10 18:17:18', 'admin');
INSERT INTO `activity` VALUES ('2763', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608643,\"discount\":\"12313\"}', '{\"updated_at\":1457608638,\"discount\":12313}', '2016-03-10 18:17:23', 'admin');
INSERT INTO `activity` VALUES ('2764', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608648,\"discount\":\"12313\"}', '{\"updated_at\":1457608643,\"discount\":12313}', '2016-03-10 18:17:28', 'admin');
INSERT INTO `activity` VALUES ('2765', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608653,\"discount\":\"12313\"}', '{\"updated_at\":1457608648,\"discount\":12313}', '2016-03-10 18:17:33', 'admin');
INSERT INTO `activity` VALUES ('2766', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608658,\"discount\":\"12313\"}', '{\"updated_at\":1457608653,\"discount\":12313}', '2016-03-10 18:17:38', 'admin');
INSERT INTO `activity` VALUES ('2767', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608663,\"discount\":\"12313\"}', '{\"updated_at\":1457608658,\"discount\":12313}', '2016-03-10 18:17:43', 'admin');
INSERT INTO `activity` VALUES ('2768', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608668,\"discount\":\"12313\"}', '{\"updated_at\":1457608663,\"discount\":12313}', '2016-03-10 18:17:48', 'admin');
INSERT INTO `activity` VALUES ('2769', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608673,\"discount\":\"12313\"}', '{\"updated_at\":1457608668,\"discount\":12313}', '2016-03-10 18:17:53', 'admin');
INSERT INTO `activity` VALUES ('2770', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608678,\"discount\":\"12313\"}', '{\"updated_at\":1457608673,\"discount\":12313}', '2016-03-10 18:17:58', 'admin');
INSERT INTO `activity` VALUES ('2771', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608683,\"discount\":\"12313\"}', '{\"updated_at\":1457608678,\"discount\":12313}', '2016-03-10 18:18:03', 'admin');
INSERT INTO `activity` VALUES ('2772', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608688,\"discount\":\"12313\"}', '{\"updated_at\":1457608683,\"discount\":12313}', '2016-03-10 18:18:08', 'admin');
INSERT INTO `activity` VALUES ('2773', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608693,\"discount\":\"12313\"}', '{\"updated_at\":1457608688,\"discount\":12313}', '2016-03-10 18:18:13', 'admin');
INSERT INTO `activity` VALUES ('2774', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608698,\"discount\":\"12313\"}', '{\"updated_at\":1457608693,\"discount\":12313}', '2016-03-10 18:18:18', 'admin');
INSERT INTO `activity` VALUES ('2775', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608703,\"discount\":\"12313\"}', '{\"updated_at\":1457608698,\"discount\":12313}', '2016-03-10 18:18:23', 'admin');
INSERT INTO `activity` VALUES ('2776', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608708,\"discount\":\"12313\"}', '{\"updated_at\":1457608703,\"discount\":12313}', '2016-03-10 18:18:28', 'admin');
INSERT INTO `activity` VALUES ('2777', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608713,\"discount\":\"12313\"}', '{\"updated_at\":1457608708,\"discount\":12313}', '2016-03-10 18:18:33', 'admin');
INSERT INTO `activity` VALUES ('2778', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608718,\"discount\":\"12313\"}', '{\"updated_at\":1457608713,\"discount\":12313}', '2016-03-10 18:18:38', 'admin');
INSERT INTO `activity` VALUES ('2779', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608723,\"discount\":\"12313\"}', '{\"updated_at\":1457608718,\"discount\":12313}', '2016-03-10 18:18:43', 'admin');
INSERT INTO `activity` VALUES ('2780', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608728,\"discount\":\"12313\"}', '{\"updated_at\":1457608723,\"discount\":12313}', '2016-03-10 18:18:48', 'admin');
INSERT INTO `activity` VALUES ('2781', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608733,\"discount\":\"12313\"}', '{\"updated_at\":1457608728,\"discount\":12313}', '2016-03-10 18:18:53', 'admin');
INSERT INTO `activity` VALUES ('2782', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608738,\"discount\":\"12313\"}', '{\"updated_at\":1457608733,\"discount\":12313}', '2016-03-10 18:18:58', 'admin');
INSERT INTO `activity` VALUES ('2783', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608743,\"discount\":\"12313\"}', '{\"updated_at\":1457608738,\"discount\":12313}', '2016-03-10 18:19:03', 'admin');
INSERT INTO `activity` VALUES ('2784', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608748,\"discount\":\"12313\"}', '{\"updated_at\":1457608743,\"discount\":12313}', '2016-03-10 18:19:08', 'admin');
INSERT INTO `activity` VALUES ('2785', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608753,\"discount\":\"12313\"}', '{\"updated_at\":1457608748,\"discount\":12313}', '2016-03-10 18:19:13', 'admin');
INSERT INTO `activity` VALUES ('2786', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608758,\"discount\":\"12313\"}', '{\"updated_at\":1457608753,\"discount\":12313}', '2016-03-10 18:19:18', 'admin');
INSERT INTO `activity` VALUES ('2787', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608763,\"discount\":\"12313\"}', '{\"updated_at\":1457608758,\"discount\":12313}', '2016-03-10 18:19:23', 'admin');
INSERT INTO `activity` VALUES ('2788', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608768,\"discount\":\"12313\"}', '{\"updated_at\":1457608763,\"discount\":12313}', '2016-03-10 18:19:28', 'admin');
INSERT INTO `activity` VALUES ('2789', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608773,\"discount\":\"12313\"}', '{\"updated_at\":1457608768,\"discount\":12313}', '2016-03-10 18:19:33', 'admin');
INSERT INTO `activity` VALUES ('2790', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608778,\"discount\":\"12313\"}', '{\"updated_at\":1457608773,\"discount\":12313}', '2016-03-10 18:19:38', 'admin');
INSERT INTO `activity` VALUES ('2791', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608783,\"discount\":\"12313\"}', '{\"updated_at\":1457608778,\"discount\":12313}', '2016-03-10 18:19:43', 'admin');
INSERT INTO `activity` VALUES ('2792', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608788,\"discount\":\"12313\"}', '{\"updated_at\":1457608783,\"discount\":12313}', '2016-03-10 18:19:48', 'admin');
INSERT INTO `activity` VALUES ('2793', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608793,\"discount\":\"12313\"}', '{\"updated_at\":1457608788,\"discount\":12313}', '2016-03-10 18:19:53', 'admin');
INSERT INTO `activity` VALUES ('2794', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608798,\"discount\":\"12313\"}', '{\"updated_at\":1457608793,\"discount\":12313}', '2016-03-10 18:19:58', 'admin');
INSERT INTO `activity` VALUES ('2795', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608803,\"discount\":\"12313\"}', '{\"updated_at\":1457608798,\"discount\":12313}', '2016-03-10 18:20:03', 'admin');
INSERT INTO `activity` VALUES ('2796', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608808,\"discount\":\"12313\"}', '{\"updated_at\":1457608803,\"discount\":12313}', '2016-03-10 18:20:08', 'admin');
INSERT INTO `activity` VALUES ('2797', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608813,\"discount\":\"12313\"}', '{\"updated_at\":1457608808,\"discount\":12313}', '2016-03-10 18:20:13', 'admin');
INSERT INTO `activity` VALUES ('2798', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608818,\"discount\":\"12313\"}', '{\"updated_at\":1457608813,\"discount\":12313}', '2016-03-10 18:20:18', 'admin');
INSERT INTO `activity` VALUES ('2799', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608823,\"discount\":\"12313\"}', '{\"updated_at\":1457608818,\"discount\":12313}', '2016-03-10 18:20:23', 'admin');
INSERT INTO `activity` VALUES ('2800', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608828,\"discount\":\"12313\"}', '{\"updated_at\":1457608823,\"discount\":12313}', '2016-03-10 18:20:28', 'admin');
INSERT INTO `activity` VALUES ('2801', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608833,\"discount\":\"12313\"}', '{\"updated_at\":1457608828,\"discount\":12313}', '2016-03-10 18:20:33', 'admin');
INSERT INTO `activity` VALUES ('2802', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608838,\"discount\":\"12313\"}', '{\"updated_at\":1457608833,\"discount\":12313}', '2016-03-10 18:20:38', 'admin');
INSERT INTO `activity` VALUES ('2803', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608843,\"discount\":\"12313\"}', '{\"updated_at\":1457608838,\"discount\":12313}', '2016-03-10 18:20:43', 'admin');
INSERT INTO `activity` VALUES ('2804', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608848,\"discount\":\"12313\"}', '{\"updated_at\":1457608843,\"discount\":12313}', '2016-03-10 18:20:48', 'admin');
INSERT INTO `activity` VALUES ('2805', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608853,\"discount\":\"12313\"}', '{\"updated_at\":1457608848,\"discount\":12313}', '2016-03-10 18:20:53', 'admin');
INSERT INTO `activity` VALUES ('2806', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608858,\"discount\":\"12313\"}', '{\"updated_at\":1457608853,\"discount\":12313}', '2016-03-10 18:20:58', 'admin');
INSERT INTO `activity` VALUES ('2807', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608863,\"discount\":\"12313\"}', '{\"updated_at\":1457608858,\"discount\":12313}', '2016-03-10 18:21:03', 'admin');
INSERT INTO `activity` VALUES ('2808', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608868,\"discount\":\"12313\"}', '{\"updated_at\":1457608863,\"discount\":12313}', '2016-03-10 18:21:08', 'admin');
INSERT INTO `activity` VALUES ('2809', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608873,\"discount\":\"12313\"}', '{\"updated_at\":1457608868,\"discount\":12313}', '2016-03-10 18:21:13', 'admin');
INSERT INTO `activity` VALUES ('2810', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608878,\"discount\":\"12313\"}', '{\"updated_at\":1457608873,\"discount\":12313}', '2016-03-10 18:21:18', 'admin');
INSERT INTO `activity` VALUES ('2811', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608883,\"discount\":\"12313\"}', '{\"updated_at\":1457608878,\"discount\":12313}', '2016-03-10 18:21:23', 'admin');
INSERT INTO `activity` VALUES ('2812', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608888,\"discount\":\"12313\"}', '{\"updated_at\":1457608883,\"discount\":12313}', '2016-03-10 18:21:28', 'admin');
INSERT INTO `activity` VALUES ('2813', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608893,\"discount\":\"12313\"}', '{\"updated_at\":1457608888,\"discount\":12313}', '2016-03-10 18:21:33', 'admin');
INSERT INTO `activity` VALUES ('2814', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608898,\"discount\":\"12313\"}', '{\"updated_at\":1457608893,\"discount\":12313}', '2016-03-10 18:21:38', 'admin');
INSERT INTO `activity` VALUES ('2815', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608903,\"discount\":\"12313\"}', '{\"updated_at\":1457608898,\"discount\":12313}', '2016-03-10 18:21:43', 'admin');
INSERT INTO `activity` VALUES ('2816', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608908,\"discount\":\"12313\"}', '{\"updated_at\":1457608903,\"discount\":12313}', '2016-03-10 18:21:48', 'admin');
INSERT INTO `activity` VALUES ('2817', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608913,\"discount\":\"12313\"}', '{\"updated_at\":1457608908,\"discount\":12313}', '2016-03-10 18:21:53', 'admin');
INSERT INTO `activity` VALUES ('2818', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608918,\"discount\":\"12313\"}', '{\"updated_at\":1457608913,\"discount\":12313}', '2016-03-10 18:21:58', 'admin');
INSERT INTO `activity` VALUES ('2819', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608923,\"discount\":\"12313\"}', '{\"updated_at\":1457608918,\"discount\":12313}', '2016-03-10 18:22:03', 'admin');
INSERT INTO `activity` VALUES ('2820', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608928,\"discount\":\"12313\"}', '{\"updated_at\":1457608923,\"discount\":12313}', '2016-03-10 18:22:08', 'admin');
INSERT INTO `activity` VALUES ('2821', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608933,\"discount\":\"12313\"}', '{\"updated_at\":1457608928,\"discount\":12313}', '2016-03-10 18:22:13', 'admin');
INSERT INTO `activity` VALUES ('2822', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608938,\"discount\":\"12313\"}', '{\"updated_at\":1457608933,\"discount\":12313}', '2016-03-10 18:22:18', 'admin');
INSERT INTO `activity` VALUES ('2823', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608943,\"discount\":\"12313\"}', '{\"updated_at\":1457608938,\"discount\":12313}', '2016-03-10 18:22:23', 'admin');
INSERT INTO `activity` VALUES ('2824', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608948,\"discount\":\"12313\"}', '{\"updated_at\":1457608943,\"discount\":12313}', '2016-03-10 18:22:28', 'admin');
INSERT INTO `activity` VALUES ('2825', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608953,\"discount\":\"12313\"}', '{\"updated_at\":1457608948,\"discount\":12313}', '2016-03-10 18:22:33', 'admin');
INSERT INTO `activity` VALUES ('2826', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608958,\"discount\":\"12313\"}', '{\"updated_at\":1457608953,\"discount\":12313}', '2016-03-10 18:22:38', 'admin');
INSERT INTO `activity` VALUES ('2827', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608963,\"discount\":\"12313\"}', '{\"updated_at\":1457608958,\"discount\":12313}', '2016-03-10 18:22:43', 'admin');
INSERT INTO `activity` VALUES ('2828', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608968,\"discount\":\"12313\"}', '{\"updated_at\":1457608963,\"discount\":12313}', '2016-03-10 18:22:48', 'admin');
INSERT INTO `activity` VALUES ('2829', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608973,\"discount\":\"12313\"}', '{\"updated_at\":1457608968,\"discount\":12313}', '2016-03-10 18:22:53', 'admin');
INSERT INTO `activity` VALUES ('2830', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608978,\"discount\":\"12313\"}', '{\"updated_at\":1457608973,\"discount\":12313}', '2016-03-10 18:22:58', 'admin');
INSERT INTO `activity` VALUES ('2831', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608983,\"discount\":\"12313\"}', '{\"updated_at\":1457608978,\"discount\":12313}', '2016-03-10 18:23:03', 'admin');
INSERT INTO `activity` VALUES ('2832', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608988,\"discount\":\"12313\"}', '{\"updated_at\":1457608983,\"discount\":12313}', '2016-03-10 18:23:08', 'admin');
INSERT INTO `activity` VALUES ('2833', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608993,\"discount\":\"12313\"}', '{\"updated_at\":1457608988,\"discount\":12313}', '2016-03-10 18:23:13', 'admin');
INSERT INTO `activity` VALUES ('2834', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457608998,\"discount\":\"12313\"}', '{\"updated_at\":1457608993,\"discount\":12313}', '2016-03-10 18:23:18', 'admin');
INSERT INTO `activity` VALUES ('2835', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609003,\"discount\":\"12313\"}', '{\"updated_at\":1457608998,\"discount\":12313}', '2016-03-10 18:23:23', 'admin');
INSERT INTO `activity` VALUES ('2836', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609008,\"discount\":\"12313\"}', '{\"updated_at\":1457609003,\"discount\":12313}', '2016-03-10 18:23:28', 'admin');
INSERT INTO `activity` VALUES ('2837', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609013,\"discount\":\"12313\"}', '{\"updated_at\":1457609008,\"discount\":12313}', '2016-03-10 18:23:33', 'admin');
INSERT INTO `activity` VALUES ('2838', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609018,\"discount\":\"12313\"}', '{\"updated_at\":1457609013,\"discount\":12313}', '2016-03-10 18:23:38', 'admin');
INSERT INTO `activity` VALUES ('2839', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609023,\"discount\":\"12313\"}', '{\"updated_at\":1457609018,\"discount\":12313}', '2016-03-10 18:23:43', 'admin');
INSERT INTO `activity` VALUES ('2840', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609028,\"discount\":\"12313\"}', '{\"updated_at\":1457609023,\"discount\":12313}', '2016-03-10 18:23:48', 'admin');
INSERT INTO `activity` VALUES ('2841', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609033,\"discount\":\"12313\"}', '{\"updated_at\":1457609028,\"discount\":12313}', '2016-03-10 18:23:53', 'admin');
INSERT INTO `activity` VALUES ('2842', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609038,\"discount\":\"12313\"}', '{\"updated_at\":1457609033,\"discount\":12313}', '2016-03-10 18:23:58', 'admin');
INSERT INTO `activity` VALUES ('2843', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609043,\"discount\":\"12313\"}', '{\"updated_at\":1457609038,\"discount\":12313}', '2016-03-10 18:24:03', 'admin');
INSERT INTO `activity` VALUES ('2844', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609048,\"discount\":\"12313\"}', '{\"updated_at\":1457609043,\"discount\":12313}', '2016-03-10 18:24:08', 'admin');
INSERT INTO `activity` VALUES ('2845', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609053,\"discount\":\"12313\"}', '{\"updated_at\":1457609048,\"discount\":12313}', '2016-03-10 18:24:13', 'admin');
INSERT INTO `activity` VALUES ('2846', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609058,\"discount\":\"12313\"}', '{\"updated_at\":1457609053,\"discount\":12313}', '2016-03-10 18:24:18', 'admin');
INSERT INTO `activity` VALUES ('2847', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609063,\"discount\":\"12313\"}', '{\"updated_at\":1457609058,\"discount\":12313}', '2016-03-10 18:24:23', 'admin');
INSERT INTO `activity` VALUES ('2848', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609068,\"discount\":\"12313\"}', '{\"updated_at\":1457609063,\"discount\":12313}', '2016-03-10 18:24:28', 'admin');
INSERT INTO `activity` VALUES ('2849', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609073,\"discount\":\"12313\"}', '{\"updated_at\":1457609068,\"discount\":12313}', '2016-03-10 18:24:33', 'admin');
INSERT INTO `activity` VALUES ('2850', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609078,\"discount\":\"12313\"}', '{\"updated_at\":1457609073,\"discount\":12313}', '2016-03-10 18:24:38', 'admin');
INSERT INTO `activity` VALUES ('2851', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609083,\"discount\":\"12313\"}', '{\"updated_at\":1457609078,\"discount\":12313}', '2016-03-10 18:24:43', 'admin');
INSERT INTO `activity` VALUES ('2852', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609088,\"discount\":\"12313\"}', '{\"updated_at\":1457609083,\"discount\":12313}', '2016-03-10 18:24:48', 'admin');
INSERT INTO `activity` VALUES ('2853', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609093,\"discount\":\"12313\"}', '{\"updated_at\":1457609088,\"discount\":12313}', '2016-03-10 18:24:53', 'admin');
INSERT INTO `activity` VALUES ('2854', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609098,\"discount\":\"12313\"}', '{\"updated_at\":1457609093,\"discount\":12313}', '2016-03-10 18:24:58', 'admin');
INSERT INTO `activity` VALUES ('2855', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609103,\"discount\":\"12313\"}', '{\"updated_at\":1457609098,\"discount\":12313}', '2016-03-10 18:25:03', 'admin');
INSERT INTO `activity` VALUES ('2856', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609108,\"discount\":\"12313\"}', '{\"updated_at\":1457609103,\"discount\":12313}', '2016-03-10 18:25:08', 'admin');
INSERT INTO `activity` VALUES ('2857', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609113,\"discount\":\"12313\"}', '{\"updated_at\":1457609108,\"discount\":12313}', '2016-03-10 18:25:13', 'admin');
INSERT INTO `activity` VALUES ('2858', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609118,\"discount\":\"12313\"}', '{\"updated_at\":1457609113,\"discount\":12313}', '2016-03-10 18:25:18', 'admin');
INSERT INTO `activity` VALUES ('2859', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609123,\"discount\":\"12313\"}', '{\"updated_at\":1457609118,\"discount\":12313}', '2016-03-10 18:25:23', 'admin');
INSERT INTO `activity` VALUES ('2860', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609128,\"discount\":\"12313\"}', '{\"updated_at\":1457609123,\"discount\":12313}', '2016-03-10 18:25:28', 'admin');
INSERT INTO `activity` VALUES ('2861', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609133,\"discount\":\"12313\"}', '{\"updated_at\":1457609128,\"discount\":12313}', '2016-03-10 18:25:33', 'admin');
INSERT INTO `activity` VALUES ('2862', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609138,\"discount\":\"12313\"}', '{\"updated_at\":1457609133,\"discount\":12313}', '2016-03-10 18:25:38', 'admin');
INSERT INTO `activity` VALUES ('2863', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609143,\"discount\":\"12313\"}', '{\"updated_at\":1457609138,\"discount\":12313}', '2016-03-10 18:25:43', 'admin');
INSERT INTO `activity` VALUES ('2864', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609148,\"discount\":\"12313\"}', '{\"updated_at\":1457609143,\"discount\":12313}', '2016-03-10 18:25:48', 'admin');
INSERT INTO `activity` VALUES ('2865', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609153,\"discount\":\"12313\"}', '{\"updated_at\":1457609148,\"discount\":12313}', '2016-03-10 18:25:53', 'admin');
INSERT INTO `activity` VALUES ('2866', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609158,\"discount\":\"12313\"}', '{\"updated_at\":1457609153,\"discount\":12313}', '2016-03-10 18:25:58', 'admin');
INSERT INTO `activity` VALUES ('2867', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609163,\"discount\":\"12313\"}', '{\"updated_at\":1457609158,\"discount\":12313}', '2016-03-10 18:26:03', 'admin');
INSERT INTO `activity` VALUES ('2868', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609168,\"discount\":\"12313\"}', '{\"updated_at\":1457609163,\"discount\":12313}', '2016-03-10 18:26:08', 'admin');
INSERT INTO `activity` VALUES ('2869', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609173,\"discount\":\"12313\"}', '{\"updated_at\":1457609168,\"discount\":12313}', '2016-03-10 18:26:13', 'admin');
INSERT INTO `activity` VALUES ('2870', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609178,\"discount\":\"12313\"}', '{\"updated_at\":1457609173,\"discount\":12313}', '2016-03-10 18:26:18', 'admin');
INSERT INTO `activity` VALUES ('2871', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609183,\"discount\":\"12313\"}', '{\"updated_at\":1457609178,\"discount\":12313}', '2016-03-10 18:26:23', 'admin');
INSERT INTO `activity` VALUES ('2872', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609188,\"discount\":\"12313\"}', '{\"updated_at\":1457609183,\"discount\":12313}', '2016-03-10 18:26:28', 'admin');
INSERT INTO `activity` VALUES ('2873', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609193,\"discount\":\"12313\"}', '{\"updated_at\":1457609188,\"discount\":12313}', '2016-03-10 18:26:33', 'admin');
INSERT INTO `activity` VALUES ('2874', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609198,\"discount\":\"12313\"}', '{\"updated_at\":1457609193,\"discount\":12313}', '2016-03-10 18:26:38', 'admin');
INSERT INTO `activity` VALUES ('2875', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609203,\"discount\":\"12313\"}', '{\"updated_at\":1457609198,\"discount\":12313}', '2016-03-10 18:26:43', 'admin');
INSERT INTO `activity` VALUES ('2876', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609208,\"discount\":\"12313\"}', '{\"updated_at\":1457609203,\"discount\":12313}', '2016-03-10 18:26:48', 'admin');
INSERT INTO `activity` VALUES ('2877', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609213,\"discount\":\"12313\"}', '{\"updated_at\":1457609208,\"discount\":12313}', '2016-03-10 18:26:53', 'admin');
INSERT INTO `activity` VALUES ('2878', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609218,\"discount\":\"12313\"}', '{\"updated_at\":1457609213,\"discount\":12313}', '2016-03-10 18:26:58', 'admin');
INSERT INTO `activity` VALUES ('2879', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609223,\"discount\":\"12313\"}', '{\"updated_at\":1457609218,\"discount\":12313}', '2016-03-10 18:27:03', 'admin');
INSERT INTO `activity` VALUES ('2880', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609228,\"discount\":\"12313\"}', '{\"updated_at\":1457609223,\"discount\":12313}', '2016-03-10 18:27:08', 'admin');
INSERT INTO `activity` VALUES ('2881', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609233,\"discount\":\"12313\"}', '{\"updated_at\":1457609228,\"discount\":12313}', '2016-03-10 18:27:13', 'admin');
INSERT INTO `activity` VALUES ('2882', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609238,\"discount\":\"12313\"}', '{\"updated_at\":1457609233,\"discount\":12313}', '2016-03-10 18:27:18', 'admin');
INSERT INTO `activity` VALUES ('2883', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609243,\"discount\":\"12313\"}', '{\"updated_at\":1457609238,\"discount\":12313}', '2016-03-10 18:27:23', 'admin');
INSERT INTO `activity` VALUES ('2884', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609248,\"discount\":\"12313\"}', '{\"updated_at\":1457609243,\"discount\":12313}', '2016-03-10 18:27:28', 'admin');
INSERT INTO `activity` VALUES ('2885', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609253,\"discount\":\"12313\"}', '{\"updated_at\":1457609248,\"discount\":12313}', '2016-03-10 18:27:33', 'admin');
INSERT INTO `activity` VALUES ('2886', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609258,\"discount\":\"12313\"}', '{\"updated_at\":1457609253,\"discount\":12313}', '2016-03-10 18:27:38', 'admin');
INSERT INTO `activity` VALUES ('2887', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609263,\"discount\":\"12313\"}', '{\"updated_at\":1457609258,\"discount\":12313}', '2016-03-10 18:27:43', 'admin');
INSERT INTO `activity` VALUES ('2888', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609268,\"discount\":\"12313\"}', '{\"updated_at\":1457609263,\"discount\":12313}', '2016-03-10 18:27:48', 'admin');
INSERT INTO `activity` VALUES ('2889', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609273,\"discount\":\"12313\"}', '{\"updated_at\":1457609268,\"discount\":12313}', '2016-03-10 18:27:53', 'admin');
INSERT INTO `activity` VALUES ('2890', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609278,\"discount\":\"12313\"}', '{\"updated_at\":1457609273,\"discount\":12313}', '2016-03-10 18:27:58', 'admin');
INSERT INTO `activity` VALUES ('2891', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609283,\"discount\":\"12313\"}', '{\"updated_at\":1457609278,\"discount\":12313}', '2016-03-10 18:28:03', 'admin');
INSERT INTO `activity` VALUES ('2892', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609288,\"discount\":\"12313\"}', '{\"updated_at\":1457609283,\"discount\":12313}', '2016-03-10 18:28:08', 'admin');
INSERT INTO `activity` VALUES ('2893', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609293,\"discount\":\"12313\"}', '{\"updated_at\":1457609288,\"discount\":12313}', '2016-03-10 18:28:13', 'admin');
INSERT INTO `activity` VALUES ('2894', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609298,\"discount\":\"12313\"}', '{\"updated_at\":1457609293,\"discount\":12313}', '2016-03-10 18:28:18', 'admin');
INSERT INTO `activity` VALUES ('2895', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609303,\"discount\":\"12313\"}', '{\"updated_at\":1457609298,\"discount\":12313}', '2016-03-10 18:28:23', 'admin');
INSERT INTO `activity` VALUES ('2896', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609308,\"discount\":\"12313\"}', '{\"updated_at\":1457609303,\"discount\":12313}', '2016-03-10 18:28:28', 'admin');
INSERT INTO `activity` VALUES ('2897', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609313,\"discount\":\"12313\"}', '{\"updated_at\":1457609308,\"discount\":12313}', '2016-03-10 18:28:33', 'admin');
INSERT INTO `activity` VALUES ('2898', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609318,\"discount\":\"12313\"}', '{\"updated_at\":1457609313,\"discount\":12313}', '2016-03-10 18:28:38', 'admin');
INSERT INTO `activity` VALUES ('2899', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609323,\"discount\":\"12313\"}', '{\"updated_at\":1457609318,\"discount\":12313}', '2016-03-10 18:28:43', 'admin');
INSERT INTO `activity` VALUES ('2900', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609328,\"discount\":\"12313\"}', '{\"updated_at\":1457609323,\"discount\":12313}', '2016-03-10 18:28:48', 'admin');
INSERT INTO `activity` VALUES ('2901', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609333,\"discount\":\"12313\"}', '{\"updated_at\":1457609328,\"discount\":12313}', '2016-03-10 18:28:53', 'admin');
INSERT INTO `activity` VALUES ('2902', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609338,\"discount\":\"12313\"}', '{\"updated_at\":1457609333,\"discount\":12313}', '2016-03-10 18:28:58', 'admin');
INSERT INTO `activity` VALUES ('2903', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609343,\"discount\":\"12313\"}', '{\"updated_at\":1457609338,\"discount\":12313}', '2016-03-10 18:29:03', 'admin');
INSERT INTO `activity` VALUES ('2904', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609348,\"discount\":\"12313\"}', '{\"updated_at\":1457609343,\"discount\":12313}', '2016-03-10 18:29:08', 'admin');
INSERT INTO `activity` VALUES ('2905', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609353,\"discount\":\"12313\"}', '{\"updated_at\":1457609348,\"discount\":12313}', '2016-03-10 18:29:13', 'admin');
INSERT INTO `activity` VALUES ('2906', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609358,\"discount\":\"12313\"}', '{\"updated_at\":1457609353,\"discount\":12313}', '2016-03-10 18:29:18', 'admin');
INSERT INTO `activity` VALUES ('2907', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609363,\"discount\":\"12313\"}', '{\"updated_at\":1457609358,\"discount\":12313}', '2016-03-10 18:29:23', 'admin');
INSERT INTO `activity` VALUES ('2908', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609368,\"discount\":\"12313\"}', '{\"updated_at\":1457609363,\"discount\":12313}', '2016-03-10 18:29:28', 'admin');
INSERT INTO `activity` VALUES ('2909', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609373,\"discount\":\"12313\"}', '{\"updated_at\":1457609368,\"discount\":12313}', '2016-03-10 18:29:33', 'admin');
INSERT INTO `activity` VALUES ('2910', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609378,\"discount\":\"12313\"}', '{\"updated_at\":1457609373,\"discount\":12313}', '2016-03-10 18:29:38', 'admin');
INSERT INTO `activity` VALUES ('2911', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609383,\"discount\":\"12313\"}', '{\"updated_at\":1457609378,\"discount\":12313}', '2016-03-10 18:29:43', 'admin');
INSERT INTO `activity` VALUES ('2912', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609388,\"discount\":\"12313\"}', '{\"updated_at\":1457609383,\"discount\":12313}', '2016-03-10 18:29:48', 'admin');
INSERT INTO `activity` VALUES ('2913', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609393,\"discount\":\"12313\"}', '{\"updated_at\":1457609388,\"discount\":12313}', '2016-03-10 18:29:53', 'admin');
INSERT INTO `activity` VALUES ('2914', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609398,\"discount\":\"12313\"}', '{\"updated_at\":1457609393,\"discount\":12313}', '2016-03-10 18:29:58', 'admin');
INSERT INTO `activity` VALUES ('2915', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609403,\"discount\":\"12313\"}', '{\"updated_at\":1457609398,\"discount\":12313}', '2016-03-10 18:30:03', 'admin');
INSERT INTO `activity` VALUES ('2916', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609408,\"discount\":\"12313\"}', '{\"updated_at\":1457609403,\"discount\":12313}', '2016-03-10 18:30:08', 'admin');
INSERT INTO `activity` VALUES ('2917', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609413,\"discount\":\"12313\"}', '{\"updated_at\":1457609408,\"discount\":12313}', '2016-03-10 18:30:13', 'admin');
INSERT INTO `activity` VALUES ('2918', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609418,\"discount\":\"12313\"}', '{\"updated_at\":1457609413,\"discount\":12313}', '2016-03-10 18:30:18', 'admin');
INSERT INTO `activity` VALUES ('2919', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609423,\"discount\":\"12313\"}', '{\"updated_at\":1457609418,\"discount\":12313}', '2016-03-10 18:30:23', 'admin');
INSERT INTO `activity` VALUES ('2920', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609428,\"discount\":\"12313\"}', '{\"updated_at\":1457609423,\"discount\":12313}', '2016-03-10 18:30:28', 'admin');
INSERT INTO `activity` VALUES ('2921', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609433,\"discount\":\"12313\"}', '{\"updated_at\":1457609428,\"discount\":12313}', '2016-03-10 18:30:33', 'admin');
INSERT INTO `activity` VALUES ('2922', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609438,\"discount\":\"12313\"}', '{\"updated_at\":1457609433,\"discount\":12313}', '2016-03-10 18:30:38', 'admin');
INSERT INTO `activity` VALUES ('2923', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609443,\"discount\":\"12313\"}', '{\"updated_at\":1457609438,\"discount\":12313}', '2016-03-10 18:30:43', 'admin');
INSERT INTO `activity` VALUES ('2924', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609448,\"discount\":\"12313\"}', '{\"updated_at\":1457609443,\"discount\":12313}', '2016-03-10 18:30:48', 'admin');
INSERT INTO `activity` VALUES ('2925', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609453,\"discount\":\"12313\"}', '{\"updated_at\":1457609448,\"discount\":12313}', '2016-03-10 18:30:53', 'admin');
INSERT INTO `activity` VALUES ('2926', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609458,\"discount\":\"12313\"}', '{\"updated_at\":1457609453,\"discount\":12313}', '2016-03-10 18:30:58', 'admin');
INSERT INTO `activity` VALUES ('2927', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609463,\"discount\":\"12313\"}', '{\"updated_at\":1457609458,\"discount\":12313}', '2016-03-10 18:31:03', 'admin');
INSERT INTO `activity` VALUES ('2928', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609468,\"discount\":\"12313\"}', '{\"updated_at\":1457609463,\"discount\":12313}', '2016-03-10 18:31:08', 'admin');
INSERT INTO `activity` VALUES ('2929', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609473,\"discount\":\"12313\"}', '{\"updated_at\":1457609468,\"discount\":12313}', '2016-03-10 18:31:13', 'admin');
INSERT INTO `activity` VALUES ('2930', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609478,\"discount\":\"12313\"}', '{\"updated_at\":1457609473,\"discount\":12313}', '2016-03-10 18:31:18', 'admin');
INSERT INTO `activity` VALUES ('2931', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609483,\"discount\":\"12313\"}', '{\"updated_at\":1457609478,\"discount\":12313}', '2016-03-10 18:31:23', 'admin');
INSERT INTO `activity` VALUES ('2932', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609488,\"discount\":\"12313\"}', '{\"updated_at\":1457609483,\"discount\":12313}', '2016-03-10 18:31:28', 'admin');
INSERT INTO `activity` VALUES ('2933', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609493,\"discount\":\"12313\"}', '{\"updated_at\":1457609488,\"discount\":12313}', '2016-03-10 18:31:33', 'admin');
INSERT INTO `activity` VALUES ('2934', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609498,\"discount\":\"12313\"}', '{\"updated_at\":1457609493,\"discount\":12313}', '2016-03-10 18:31:38', 'admin');
INSERT INTO `activity` VALUES ('2935', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609503,\"discount\":\"12313\"}', '{\"updated_at\":1457609498,\"discount\":12313}', '2016-03-10 18:31:43', 'admin');
INSERT INTO `activity` VALUES ('2936', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609508,\"discount\":\"12313\"}', '{\"updated_at\":1457609503,\"discount\":12313}', '2016-03-10 18:31:48', 'admin');
INSERT INTO `activity` VALUES ('2937', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609513,\"discount\":\"12313\"}', '{\"updated_at\":1457609508,\"discount\":12313}', '2016-03-10 18:31:53', 'admin');
INSERT INTO `activity` VALUES ('2938', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609518,\"discount\":\"12313\"}', '{\"updated_at\":1457609513,\"discount\":12313}', '2016-03-10 18:31:58', 'admin');
INSERT INTO `activity` VALUES ('2939', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609523,\"discount\":\"12313\"}', '{\"updated_at\":1457609518,\"discount\":12313}', '2016-03-10 18:32:03', 'admin');
INSERT INTO `activity` VALUES ('2940', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609528,\"discount\":\"12313\"}', '{\"updated_at\":1457609523,\"discount\":12313}', '2016-03-10 18:32:08', 'admin');
INSERT INTO `activity` VALUES ('2941', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609533,\"discount\":\"12313\"}', '{\"updated_at\":1457609528,\"discount\":12313}', '2016-03-10 18:32:13', 'admin');
INSERT INTO `activity` VALUES ('2942', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609538,\"discount\":\"12313\"}', '{\"updated_at\":1457609533,\"discount\":12313}', '2016-03-10 18:32:18', 'admin');
INSERT INTO `activity` VALUES ('2943', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609543,\"discount\":\"12313\"}', '{\"updated_at\":1457609538,\"discount\":12313}', '2016-03-10 18:32:23', 'admin');
INSERT INTO `activity` VALUES ('2944', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609548,\"discount\":\"12313\"}', '{\"updated_at\":1457609543,\"discount\":12313}', '2016-03-10 18:32:28', 'admin');
INSERT INTO `activity` VALUES ('2945', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609553,\"discount\":\"12313\"}', '{\"updated_at\":1457609548,\"discount\":12313}', '2016-03-10 18:32:33', 'admin');
INSERT INTO `activity` VALUES ('2946', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609558,\"discount\":\"12313\"}', '{\"updated_at\":1457609553,\"discount\":12313}', '2016-03-10 18:32:38', 'admin');
INSERT INTO `activity` VALUES ('2947', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609563,\"discount\":\"12313\"}', '{\"updated_at\":1457609558,\"discount\":12313}', '2016-03-10 18:32:43', 'admin');
INSERT INTO `activity` VALUES ('2948', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609568,\"discount\":\"12313\"}', '{\"updated_at\":1457609563,\"discount\":12313}', '2016-03-10 18:32:48', 'admin');
INSERT INTO `activity` VALUES ('2949', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609573,\"discount\":\"12313\"}', '{\"updated_at\":1457609568,\"discount\":12313}', '2016-03-10 18:32:53', 'admin');
INSERT INTO `activity` VALUES ('2950', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609578,\"discount\":\"12313\"}', '{\"updated_at\":1457609573,\"discount\":12313}', '2016-03-10 18:32:58', 'admin');
INSERT INTO `activity` VALUES ('2951', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609583,\"discount\":\"12313\"}', '{\"updated_at\":1457609578,\"discount\":12313}', '2016-03-10 18:33:03', 'admin');
INSERT INTO `activity` VALUES ('2952', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609588,\"discount\":\"12313\"}', '{\"updated_at\":1457609583,\"discount\":12313}', '2016-03-10 18:33:08', 'admin');
INSERT INTO `activity` VALUES ('2953', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609593,\"discount\":\"12313\"}', '{\"updated_at\":1457609588,\"discount\":12313}', '2016-03-10 18:33:13', 'admin');
INSERT INTO `activity` VALUES ('2954', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609598,\"discount\":\"12313\"}', '{\"updated_at\":1457609593,\"discount\":12313}', '2016-03-10 18:33:18', 'admin');
INSERT INTO `activity` VALUES ('2955', 'U', 'common\\models\\Order', '5', '{\"updated_at\":1457609603,\"discount\":\"12313\"}', '{\"updated_at\":1457609598,\"discount\":12313}', '2016-03-10 18:33:23', 'admin');
INSERT INTO `activity` VALUES ('2956', 'U', 'common\\models\\TicketProductImport', '10', '{\"updated_at\":1457939975}', '{\"updated_at\":1456895138}', '2016-03-14 14:19:35', 'admin');
INSERT INTO `activity` VALUES ('2957', 'U', 'common\\models\\TicketProductImport', '10', '{\"total_product\":\"2\",\"total_price\":\"201\"}', '{\"total_product\":1,\"total_price\":1}', '2016-03-14 14:19:35', 'admin');

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) DEFAULT '0',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Đồ nữ', '0', null, null);
INSERT INTO `category` VALUES ('2', 'Váy - đầm', '0', null, '1');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip` int(11) DEFAULT '0',
  `point` int(11) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `search_term` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '123', '3424', '', 'C00001', '0', '0', '1457434344', '1457434344', '1', '1', 'C00001|123|3424');
INSERT INTO `customer` VALUES ('2', '345345', '345345', '', 'C00002', '0', '0', '1457434349', '1457434349', '1', '1', 'C00002|345345|345345');
INSERT INTO `customer` VALUES ('3', '54546546546546', '5465464', '56465', 'C00003', '0', '0', '1457515621', '1457515621', '1', '1', 'C00003|54546546546546|5465464');
INSERT INTO `customer` VALUES ('4', 'aaaaa', 'aaaa', 'aaaa', 'C00004', '0', '0', '1457515642', '1457515642', '1', '1', 'C00004|aaaaa|aaaa');
INSERT INTO `customer` VALUES ('5', 'vbbbbbbbb', 'bbbbbb', '', 'C00005', '0', '0', '1457515674', '1457515675', '1', '1', 'C00005|vbbbbbbbb|bbbbbb');

-- ----------------------------
-- Table structure for metadata
-- ----------------------------
DROP TABLE IF EXISTS `metadata`;
CREATE TABLE `metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of metadata
-- ----------------------------

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1455786863');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1455786866');
INSERT INTO `migration` VALUES ('m140506_102106_rbac_init', '1455787377');
INSERT INTO `migration` VALUES ('m150125_135015_init_config', '1455787401');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `sale_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `customer_id` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT '0',
  `discount` float(11,2) DEFAULT '0.00',
  `status` smallint(1) DEFAULT '0',
  `code` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_product` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('4', '1457514508', '1457515102', '1', '1', '1', '2016-03-09 16:08:28', '', null, '0', '0.00', '1', 'P00004', '0');
INSERT INTO `order` VALUES ('5', '1457515155', '1457609603', '1', '1', '1', '2016-03-09 16:19:31', '123123', '4', '0', '12313.00', '0', 'P00005', '0');
INSERT INTO `order` VALUES ('6', '1457601245', '1457602264', null, null, null, '2016-03-10 16:22:33', '', '1', '0', null, '0', 'P00006', '0');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `search_term` text COLLATE utf8_unicode_ci,
  `price_sale` int(11) NOT NULL DEFAULT '0' COMMENT 'Giá bán',
  `price_store` int(11) NOT NULL DEFAULT '0' COMMENT 'Giá gốc',
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT 'Số lượng tồn',
  `note` text COLLATE utf8_unicode_ci,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('14', 'Váy đầm họa tiết', '2', 'P00014|Váy đầm họa tiết|​✓ Tên sản phẩm: Đầm Họa Tiết Hoa Xuân Cổ Kết Đá\r\n\r\n✓ Chất liệu : Vải Châu hoa cao cấp co giãn in họa tiết 3D\r\n\r\n✓ Thiết kết kiểu dáng đầm liền sang trọng với họa tiết xinh xắn giúp bạn gái thêm tự tin nổi bật\r\n\r\n✓ Kiểu dáng thời trang , tay ngắn trẻ trung phối với cổ kết những chuổi đá cao cấp tạo điểm nhấn sành điệu\r\n\r\n✓ size S: Chiều dài đầm: 86cm, Ngực 78-82cm, Eo 64-68cm, Mông 86-88 cm\r\n\r\n✓ size M: Chiều dài đầm: 87cm, Ngực 82-85cm, Eo 68-72cm, Mông 88-92cm\r\n\r\n✓ size L: Chiều dài đầm: ', '100', '200', '/avatar/2016/02/24/Untitled-12(2)_1456302424.jpg', '1', 'vay-m-ha-tit', '1456302412', '1456818047', '1', '1', '​✓ Tên sản phẩm: Đầm Họa Tiết Hoa Xuân Cổ Kết Đá\r\n\r\n✓ Chất liệu : Vải Châu hoa cao cấp co giãn in họa tiết 3D\r\n\r\n✓ Thiết kết kiểu dáng đầm liền sang trọng với họa tiết xinh xắn giúp bạn gái thêm tự tin nổi bật\r\n\r\n✓ Kiểu dáng thời trang , tay ngắn trẻ trung phối với cổ kết những chuổi đá cao cấp tạo điểm nhấn sành điệu\r\n\r\n✓ size S: Chiều dài đầm: 86cm, Ngực 78-82cm, Eo 64-68cm, Mông 86-88 cm\r\n\r\n✓ size M: Chiều dài đầm: 87cm, Ngực 82-85cm, Eo 68-72cm, Mông 88-92cm\r\n\r\n✓ size L: Chiều dài đầm: ', '10', '1111', 'P00014');
INSERT INTO `product` VALUES ('15', '123123123', null, 'P00015|123123123|', '0', '1', null, '1', '123123123', '1456816899', '1457602280', '1', '1', null, '2', '', 'P00015');
INSERT INTO `product` VALUES ('16', 'vfvdfv', null, 'P00016|vfvdfv|', '0', '4', null, '1', 'vfvdfv', '1456816899', '1457602283', '1', '1', null, '3', '', 'P00016');
INSERT INTO `product` VALUES ('17', '4546356', null, 'P00017|4546356|', '0', '1', null, '1', '4546356', '1456890218', '1457602287', '1', '1', null, '1', '', 'P00017');
INSERT INTO `product` VALUES ('18', 'sgsg', null, 'P00018|sgsg|', '0', '2', null, '1', 'sgsg', '1456890218', '1457602289', '1', '1', null, '3', '', 'P00018');

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES ('1', '14', '/images/product/14/1456302618_Untitled-8(8).jpg', '2016-02-24 15:30:18');
INSERT INTO `product_image` VALUES ('2', '14', '/images/product/14/1456302618_Untitled-4(8).jpg', '2016-02-24 15:30:18');
INSERT INTO `product_image` VALUES ('3', '14', '/images/product/14/1456302618_Untitled-10(8).jpg', '2016-02-24 15:30:18');
INSERT INTO `product_image` VALUES ('4', '14', '/images/product/14/1456302618_Untitled-12(2).jpg', '2016-02-24 15:30:18');
INSERT INTO `product_image` VALUES ('5', '14', '/images/product/14/1456302619_Untitled-13(2).jpg', '2016-02-24 15:30:19');
INSERT INTO `product_image` VALUES ('7', '14', '/images/product/14/1456302619_Untitledge-16.jpg', '2016-02-24 15:30:19');

-- ----------------------------
-- Table structure for product_metadata
-- ----------------------------
DROP TABLE IF EXISTS `product_metadata`;
CREATE TABLE `product_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `metadata_id` int(11) NOT NULL,
  `metadata_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_metadata
-- ----------------------------

-- ----------------------------
-- Table structure for product_note_history
-- ----------------------------
DROP TABLE IF EXISTS `product_note_history`;
CREATE TABLE `product_note_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_note_history
-- ----------------------------

-- ----------------------------
-- Table structure for product_store
-- ----------------------------
DROP TABLE IF EXISTS `product_store`;
CREATE TABLE `product_store` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `total` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_store
-- ----------------------------

-- ----------------------------
-- Table structure for provider
-- ----------------------------
DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of provider
-- ----------------------------

-- ----------------------------
-- Table structure for rlt_order_product
-- ----------------------------
DROP TABLE IF EXISTS `rlt_order_product`;
CREATE TABLE `rlt_order_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT '0',
  `price_sale` int(11) DEFAULT '0',
  `discount` float(11,2) DEFAULT '0.00',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni` (`order_id`,`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of rlt_order_product
-- ----------------------------
INSERT INTO `rlt_order_product` VALUES ('10', '6', '15', 'P00015', '123123123', null, '2', '0', '1.00', null, null, null, null, '', null);
INSERT INTO `rlt_order_product` VALUES ('11', '6', '16', 'P00016', 'vfvdfv', null, '3', '0', '4.00', null, null, null, null, '', null);
INSERT INTO `rlt_order_product` VALUES ('12', '7', null, null, 'bfdb', null, '1', '0', '1.00', null, null, null, null, '', null);
INSERT INTO `rlt_order_product` VALUES ('13', '7', null, null, 'dfbdfbdfbd', null, '3', '0', '2.00', null, null, null, null, '', null);
INSERT INTO `rlt_order_product` VALUES ('14', '8', '17', 'P00017', '4546356', null, '1', '0', '1.00', null, null, null, null, '', null);
INSERT INTO `rlt_order_product` VALUES ('15', '8', '18', 'P00018', 'sgsg', null, '3', '0', '2.00', null, null, null, null, '', null);
INSERT INTO `rlt_order_product` VALUES ('17', '10', null, null, 'bfdbdfb', null, '1', '0', '1.00', null, null, null, null, '', null);

-- ----------------------------
-- Table structure for rlt_product_ticket_product_import
-- ----------------------------
DROP TABLE IF EXISTS `rlt_product_ticket_product_import`;
CREATE TABLE `rlt_product_ticket_product_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_import` int(11) DEFAULT '0',
  `price_sale` int(11) DEFAULT '0',
  `price_store` int(11) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of rlt_product_ticket_product_import
-- ----------------------------
INSERT INTO `rlt_product_ticket_product_import` VALUES ('10', '6', '15', 'P00015', '123123123', '2', '0', '1', null, null, null, null, '');
INSERT INTO `rlt_product_ticket_product_import` VALUES ('11', '6', '16', 'P00016', 'vfvdfv', '3', '0', '4', null, null, null, null, '');
INSERT INTO `rlt_product_ticket_product_import` VALUES ('12', '7', null, null, 'bfdb', '1', '0', '1', null, null, null, null, '');
INSERT INTO `rlt_product_ticket_product_import` VALUES ('13', '7', null, null, 'dfbdfbdfbd', '3', '0', '2', null, null, null, null, '');
INSERT INTO `rlt_product_ticket_product_import` VALUES ('14', '8', '17', 'P00017', '4546356', '1', '0', '1', null, null, null, null, '');
INSERT INTO `rlt_product_ticket_product_import` VALUES ('15', '8', '18', 'P00018', 'sgsg', '3', '0', '2', null, null, null, null, '');
INSERT INTO `rlt_product_ticket_product_import` VALUES ('17', '10', null, null, 'bfdbdfb', '1', '0', '1', null, null, null, null, '');
INSERT INTO `rlt_product_ticket_product_import` VALUES ('18', '10', null, null, '234', '2', '0', '100', null, null, null, null, '234');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of store
-- ----------------------------

-- ----------------------------
-- Table structure for ticket_product_import
-- ----------------------------
DROP TABLE IF EXISTS `ticket_product_import`;
CREATE TABLE `ticket_product_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` text COLLATE utf8_unicode_ci,
  `status` smallint(1) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `total_product` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT '0',
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_import` date DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ticket_product_import
-- ----------------------------
INSERT INTO `ticket_product_import` VALUES ('6', null, '1', '1456481128', '1456816898', '1', '1', '0', '0', null, null, null);
INSERT INTO `ticket_product_import` VALUES ('7', null, '1', '1456825498', '1456825503', '1', '1', '0', '0', null, null, null);
INSERT INTO `ticket_product_import` VALUES ('8', 'fasfdsf', '1', '1456826510', '1456890218', '1', '1', '2', '7', 'TI8', '2016-03-02', null);
INSERT INTO `ticket_product_import` VALUES ('10', '', '0', '1456890465', '1457939975', '1', '1', '2', '201', 'TI10', '2016-03-02', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '5qO8eLvylguMHHFosShQ5eYhSPs9hCOx', '$2y$13$Lnyiuu5XzdHYFM4nE9ASxuCJEX57zdFZLKGOpLgobPJdtgLhgfi4m', null, 'admin@thong.vn', '10', '1455787927', '1455787927');
