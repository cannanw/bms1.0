/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : bms

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2018-09-28 17:46:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bms_attachements
-- ----------------------------
DROP TABLE IF EXISTS `bms_attachements`;
CREATE TABLE `bms_attachements` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件主键',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `fileName` varchar(200) DEFAULT NULL COMMENT '文件名称 ',
  `contentType` varchar(50) DEFAULT NULL COMMENT '文件类型',
  `filePath` varchar(200) DEFAULT NULL COMMENT '备注',
  `fileDisgest` varchar(200) DEFAULT NULL COMMENT '文件摘要',
  `athType` int(3) DEFAULT NULL COMMENT '附件归属类型',
  `belongId` int(11) DEFAULT NULL COMMENT '归属对象id',
  `createdUser` varchar(255) DEFAULT NULL COMMENT '创建人用户名',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedUser` varchar(255) DEFAULT NULL COMMENT '修改人用户名',
  `modifiedTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bms_attachements
-- ----------------------------
INSERT INTO `bms_attachements` VALUES ('1', '測試1', '虚拟机下线.txt', 'text/plain', 'e:\\bms\\uploads\\2018\\05\\04\\c71d765a-7401-4044-84d8-0fe7d6ce9afa.txt', 'e10e883fb0b6fbb08f39fe0c6682ab37', '1', '1', null, '2018-05-04 02:30:13', null, '2018-05-04 02:30:13');
INSERT INTO `bms_attachements` VALUES ('2', '测试2', '[每周一书]《字体故事》西文字体的美丽传奇.txt', 'text/plain', 'e:\\bms\\uploads\\2018\\05\\04\\9aebcc0c-7148-4945-9a8e-91cffc1895ee.txt', 'ec8eb61b0f3245e49d7eaaac87e8dfa4', '1', '1', null, '2018-05-04 10:56:10', null, '2018-05-04 10:56:10');
INSERT INTO `bms_attachements` VALUES ('3', '小军的书', '[每周一书] 创新是什么？创新就是《从 0 到 1》.txt', 'text/plain', 'e:\\bms\\uploads\\2018\\05\\04\\5671e10c-40b4-4bb8-97b2-ca57661f8d5b.txt', 'fac2317237e810650dab96f4a2f32393', '1', '1', null, '2018-05-04 11:27:51', null, '2018-05-04 11:27:51');

-- ----------------------------
-- Table structure for bms_classes
-- ----------------------------
DROP TABLE IF EXISTS `bms_classes`;
CREATE TABLE `bms_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类主键',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `sort` int(11) DEFAULT NULL COMMENT '分类序号',
  `parentId` int(11) DEFAULT NULL COMMENT '父类id ',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `createdUser` varchar(255) DEFAULT NULL COMMENT '创建人用户名',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedUser` varchar(255) DEFAULT NULL COMMENT '修改人用户名',
  `modifiedTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bms_classes
-- ----------------------------
INSERT INTO `bms_classes` VALUES ('1', 'A马列主义毛邓思想', '1', null, '', 'admin', '2018-03-16 11:47:47', null, '2018-05-04 15:02:00');
INSERT INTO `bms_classes` VALUES ('2', 'A1　马克思、恩格斯著作', '2', '1', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('3', 'A11 选集、文集', '3', '2', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('4', 'A12 单行著作', '3', '2', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('5', 'A13 书信集、日记、函电、谈话', '3', '2', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('6', 'A14 诗词', '3', '2', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('7', 'A15 手迹', '3', '2', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('8', 'A16 专题汇编', '3', '2', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('9', 'A18 语录', '3', '2', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('10', 'A2　列宁著作', '2', '1', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('11', 'A21 选集、文集', '3', '10', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('12', 'A22 单行著作', '3', '10', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('13', 'A23 书信集、日记、函电、谈话', '3', '10', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('14', 'A24 诗词', '3', '10', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('15', 'A25 手迹', '3', '10', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('16', 'A26 专题汇编', '3', '10', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('17', 'A28 语录', '3', '10', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('18', 'A3　斯大林著作', '2', '1', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('19', 'A31 选集、文集', '3', '18', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('20', 'A32 单行著作', '3', '18', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('21', 'A33 书信集、日记、函电、谈话', '3', '18', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('22', 'A34 诗词', '3', '18', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('23', 'A35 手迹', '3', '18', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('24', 'A36 专题汇编', '3', '18', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('25', 'A38 语录', '3', '18', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('26', 'A4　毛泽东著作', '2', '1', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('27', 'A41 选集、文集', '3', '26', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('28', 'A42 单行著作', '3', '26', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('29', 'A43 书信集、日记、函电、谈话', '3', '26', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('30', 'A44 诗词', '3', '26', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('31', 'A45 手迹', '3', '26', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('32', 'A46 专题汇编', '3', '26', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('33', 'A48 语录', '3', '26', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('34', 'A49 邓小平著作', '3', '26', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('35', 'A491 选集、文集', '3', '26', null, 'admin', '2018-03-16 11:47:47', 'admin', '2018-03-16 11:47:47');
INSERT INTO `bms_classes` VALUES ('36', 'A492 单行著作', '3', '26', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('41', 'A498 语录 ', '3', '26', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('42', 'A5　马克思、恩格斯、列宁、斯大林、毛泽东著作汇编', '2', '1', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('67', 'B哲学', '1', null, null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('68', 'B0　哲学理论', '2', '67', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('69', 'B0-0 马克思主义哲学', '3', '68', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('70', 'B01 哲学基本问题', '3', '68', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('71', 'B02 辩证唯物主义', '3', '68', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('72', 'B03 历史唯物主义', '3', '68', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('73', 'B08 哲学流派及其研究 ', '3', '68', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('74', 'B1　世界哲学', '2', '67', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('75', 'B2　中国哲学', '2', '67', null, 'admin', '2018-03-16 11:47:48', 'admin', '2018-03-16 11:47:48');
INSERT INTO `bms_classes` VALUES ('76', 'B20 唯物主义和唯心主义（总论）', '3', '75', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('77', 'B21 古代哲学', '3', '75', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('78', 'B22 先秦哲学（公元前221年）', '3', '75', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('79', 'B23 秦汉、三国晋、南北朝哲学（公元前221年～公元589年）', '3', '75', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('80', 'B24 隋、唐、宋、元、明、清哲学（589～1840年）', '3', '75', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('81', 'B25 近代哲学（1840～1916年）', '3', '75', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('82', 'B26 现代哲学（1919～ 年）', '3', '75', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('83', 'B27 马克思主义哲学在中国的传播与发展', '3', '75', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('84', 'B3　亚洲哲学', '2', '67', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('85', 'B4　非洲哲学', '2', '67', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('86', 'B5　欧洲哲学', '2', '67', null, 'admin', '2018-03-16 11:47:49', 'admin', '2018-03-16 11:47:49');
INSERT INTO `bms_classes` VALUES ('128', 'C社会科学总论', '1', null, null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('129', 'C0　社会科学理论与方法论', '2', '128', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('130', 'C01 科学研究的方针、政策', '3', '129', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('131', 'C02 科学的哲学思想', '3', '129', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('132', 'C03 科学的方法论', '3', '129', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('133', 'C04 术语规范及交流', '3', '129', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('134', 'C06 学派与学说', '3', '129', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('135', 'C09 社会科学史 ', '3', '129', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('136', 'C1　社会科学现状、概况', '2', '128', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('137', 'C2　机关、团体、会议', '2', '128', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('138', 'C3　社会科学研究方法', '2', '128', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('139', 'C4　社会科学教育与普及', '2', '128', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('140', 'C49 社会科学普及读物', '3', '139', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('141', 'C5　社会科学丛书、文集、连续性出版物', '2', '128', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('142', 'C51 丛书（汇刻书）、文库', '3', '141', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('143', 'C52 全集、选集', '3', '141', null, 'admin', '2018-03-16 11:47:50', 'admin', '2018-03-16 11:47:50');
INSERT INTO `bms_classes` VALUES ('199', 'D政治、法律', '1', null, null, 'admin', '2018-03-16 11:47:51', 'admin', '2018-03-16 11:47:51');
INSERT INTO `bms_classes` VALUES ('200', 'D0　政治理论', '2', '199', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('201', 'D0-0科学社会主义理论（总论）', '3', '200', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('202', 'D01 阶级、阶级斗争理论', '3', '200', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('203', 'D02 革命理论', '3', '200', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('204', 'D03 国家理论', '3', '200', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('205', 'D035国家行政管理', '3', '200', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('206', 'D04 无产阶级革命与无产阶级专政理论', '3', '200', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('213', 'D1 国际共产主义运动', '2', '199', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('214', 'D2 中国共产党', '2', '199', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('215', 'D2-0党的领导人著作', '3', '214', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('216', 'D20 建党理论', '3', '214', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('217', 'D21 党章', '3', '214', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('236', 'D4 工人、农民、青年、妇女运动与组织', '2', '199', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('237', 'D41 工人运动与组织', '3', '236', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('238', 'D42 农民运动与组织', '3', '236', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('239', 'D43 青年、学生运动与组织', '3', '236', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('240', 'D431世界青年学生运动与组织', '3', '236', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('241', 'D432中国青年学生运动与组织', '3', '236', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('242', 'D44 妇女运动与组织', '3', '236', null, 'admin', '2018-03-16 11:47:52', 'admin', '2018-03-16 11:47:52');
INSERT INTO `bms_classes` VALUES ('243', 'D441世界妇女运动与组织', '3', '236', null, 'admin', '2018-03-16 11:47:53', 'admin', '2018-03-16 11:47:53');
INSERT INTO `bms_classes` VALUES ('244', 'D442中国妇女运动与组织', '3', '236', null, 'admin', '2018-03-16 11:47:53', 'admin', '2018-03-16 11:47:53');
INSERT INTO `bms_classes` VALUES ('365', 'E军事', '1', null, null, 'admin', '2018-03-16 11:47:55', 'admin', '2018-03-16 11:47:55');
INSERT INTO `bms_classes` VALUES ('366', 'E0军事理论', '2', '365', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('367', 'E1世界军事', '3', '366', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('368', 'E1-49 世界军事普及读物', '3', '366', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('369', 'E12 军事制度', '3', '366', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('370', 'E13 军事教育与训练', '3', '366', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('371', 'E14 军事后方勤务', '3', '366', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('372', 'E15 各种武装力量（各军、兵种）', '3', '366', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('373', 'E16 军事组织与活动', '3', '366', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('374', 'E19 军事史 ', '3', '366', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('375', 'E2中国军事', '2', '365', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('376', 'E20 建军理论', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('377', 'E21 司令部工作', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('378', 'E22 政治工作', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('379', 'E23 军事后勤', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('380', 'E24 生产建设工作', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('381', 'E25 国防建设与战备', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('382', 'E26 军事制度', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('383', 'E27 各种武装力量（各军、兵种）', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('384', 'E28 民兵', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('385', 'E289 地方军事', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('387', 'E29 军事史（战史、建军史）', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('388', 'E297 中国人民解放军军事史', '3', '375', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('395', 'E3 亚洲军事', '2', '365', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('396', 'E4 非洲军事', '2', '365', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');
INSERT INTO `bms_classes` VALUES ('397', 'E5 欧洲军事', '2', '365', null, 'admin', '2018-03-16 11:47:56', 'admin', '2018-03-16 11:47:56');

-- ----------------------------
-- Table structure for bms_shelf
-- ----------------------------
DROP TABLE IF EXISTS `bms_shelf`;
CREATE TABLE `bms_shelf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '团名称',
  `num` varchar(11) DEFAULT NULL COMMENT '书架号',
  `valid` tinyint(1) DEFAULT '1' COMMENT '是否有效',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bms_shelf
-- ----------------------------
INSERT INTO `bms_shelf` VALUES ('1', '环球游30日团', '1', '0', '环球游30日团。。。', '2017-08-28 16:54:25', '2017-08-28 16:54:25', null, null);
INSERT INTO `bms_shelf` VALUES ('2', '环球游40日团', '1', '1', '环球游40日团', '2017-08-28 16:54:40', '2017-08-28 16:54:40', null, null);
INSERT INTO `bms_shelf` VALUES ('3', '月球游20日团', '3', '1', '月球游20日团。。。', '2017-08-28 16:55:03', '2017-10-10 18:30:44', null, null);

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) DEFAULT NULL COMMENT '资源URL',
  `type` int(11) DEFAULT NULL COMMENT '类型     1：菜单   2：按钮',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `parentId` int(11) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `permission` varchar(500) DEFAULT NULL COMMENT '授权(如：user:create)',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COMMENT='资源管理';

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES ('3', '图书管理', '请求路径', '1', '3', null, null, 'book:list', '2017-07-12 15:15:59', '2018-04-25 22:02:55', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('8', '系统管理', '请求路径', '1', '8', null, null, 'sys:list', '2017-07-12 15:15:59', '2017-07-21 11:16:00', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('11', '图书管理', 'book/listUI.do', '1', '11', null, '3', 'book:book:view', '2017-07-12 15:15:59', '2018-05-04 17:00:53', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('13', '书架管理', 'shelf/listUI.do', '1', '13', null, '3', '', '2017-07-12 15:15:59', '2018-04-27 22:54:25', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('24', '系统配置', '请求路径', '1', '24', null, '8', null, '2017-07-12 15:15:59', '2017-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('25', '日志管理', '请求路径', '1', '25', null, '8', null, '2017-07-12 15:15:59', '2017-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('45', '用户管理', 'user/listUI.do', '1', '45', null, '8', 'sys:user:view', '2017-07-12 15:15:59', '2017-07-21 17:36:01', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('46', '菜单管理', 'menu/listUI.do', '1', '46', null, '8', 'sys:menu:view', '2017-07-12 15:15:59', '2017-07-21 17:36:16', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('47', '角色管理', 'role/listUI.do', '1', '47', null, '8', 'sys:role:view', '2017-07-12 15:15:59', '2017-07-21 17:38:03', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('48', '组织管理', '请求路径', '1', '48', null, '8', 'sys:org:view', '2017-07-12 15:15:59', '2017-07-21 18:37:57', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('115', '查看', '', '2', '1', null, '46', 'sys:menu:view', '2017-07-13 16:33:41', '2017-07-21 11:09:05', null, null);
INSERT INTO `sys_menus` VALUES ('116', '新增', '', '2', '2', null, '46', 'sys:menu:add', '2017-07-13 16:34:02', '2017-07-21 11:09:22', null, null);
INSERT INTO `sys_menus` VALUES ('117', '修改', '', '2', '3', null, '46', 'sys:menu:update', '2017-07-13 16:34:25', '2017-07-21 11:09:45', null, null);
INSERT INTO `sys_menus` VALUES ('118', '删除', '', '2', '4', null, '46', 'sys:menu:delete', '2017-07-13 16:34:46', '2017-07-21 11:10:12', null, null);
INSERT INTO `sys_menus` VALUES ('119', '查看', '', '2', '1', null, '45', 'sys:user:view', '2017-07-13 16:35:05', '2017-07-21 11:12:46', null, null);
INSERT INTO `sys_menus` VALUES ('120', '查看', '', '2', '1', null, '47', 'sys:role:view', '2017-07-13 16:35:26', '2017-07-21 11:13:43', null, null);
INSERT INTO `sys_menus` VALUES ('126', '新增', '', '2', '2', null, '45', 'sys:user:add', '2017-07-21 11:11:34', '2017-07-21 11:11:34', null, null);
INSERT INTO `sys_menus` VALUES ('127', '修改', '', '2', '3', null, '45', 'sys:user:update', '2017-07-21 11:11:56', '2017-07-21 11:11:56', null, null);
INSERT INTO `sys_menus` VALUES ('128', '新增', '', '2', '2', null, '47', 'sys:role:add', '2017-07-21 11:14:24', '2017-07-21 11:14:24', null, null);
INSERT INTO `sys_menus` VALUES ('129', '修改', '', '2', '3', null, '47', 'sys:role:update', '2017-07-21 11:14:48', '2017-07-21 11:14:48', null, null);
INSERT INTO `sys_menus` VALUES ('130', '删除', '', '2', '4', null, '47', 'sys:role:delete', '2017-07-21 11:15:09', '2017-07-21 11:15:09', null, null);
INSERT INTO `sys_menus` VALUES ('135', '查询', '', '2', '1', null, '11', 'book:book:view', '2017-07-21 17:21:40', '2017-07-21 17:21:40', null, null);
INSERT INTO `sys_menus` VALUES ('136', '新增', '', '2', '2', null, '11', 'book:book:add', '2017-07-21 17:22:02', '2017-07-21 17:22:02', null, null);
INSERT INTO `sys_menus` VALUES ('137', '启用', '', '2', '3', null, '11', 'book:book:state', '2017-07-21 17:22:23', '2017-07-21 17:22:23', null, null);
INSERT INTO `sys_menus` VALUES ('138', '禁用', '', '2', '4', null, '11', 'book:book:instate', '2017-07-21 17:22:44', '2017-07-21 17:22:44', null, null);
INSERT INTO `sys_menus` VALUES ('139', '修改', '', '2', '5', null, '11', 'book:book:update', '2017-07-21 17:25:20', '2017-07-21 17:25:20', null, null);
INSERT INTO `sys_menus` VALUES ('140', '分类管理', 'type/listUI.do', '1', '30', null, '3', 'book:type:view', '2017-08-29 14:19:34', '2018-04-25 22:02:00', null, null);
INSERT INTO `sys_menus` VALUES ('141', '新增', '', '2', '1', null, '140', 'book:type:add', '2018-05-04 17:04:27', '2018-05-04 17:04:47', null, null);
INSERT INTO `sys_menus` VALUES ('142', '修改', '', '2', '2', null, '140', 'book:type:update', '2018-05-04 17:05:34', '2018-05-04 17:05:34', null, null);
INSERT INTO `sys_menus` VALUES ('143', '删除', '', '2', '3', null, '140', 'book:type:delete', '2018-05-04 17:06:01', '2018-05-04 17:06:01', null, null);

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES ('1', '系统管理员', '系统管理员', '2017-07-13 17:44:11', '2018-05-04 17:30:02', 'admin', 'admin');
INSERT INTO `sys_roles` VALUES ('2', '图书录入员', '可以编辑图书信息', '2017-07-13 17:44:47', '2017-08-29 14:21:32', 'admin', 'admin');
INSERT INTO `sys_roles` VALUES ('38', '读者', '只能查看图书信息', '2017-07-21 17:09:23', '2018-05-04 17:20:31', null, null);
INSERT INTO `sys_roles` VALUES ('40', '图书审核员', '进行图书信息的审核', '2018-05-04 16:24:58', '2018-05-04 16:24:58', null, null);

-- ----------------------------
-- Table structure for sys_role_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menus`;
CREATE TABLE `sys_role_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `menu_id` int(11) DEFAULT NULL COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1249 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menus
-- ----------------------------
INSERT INTO `sys_role_menus` VALUES ('1122', '2', '3');
INSERT INTO `sys_role_menus` VALUES ('1123', '2', '11');
INSERT INTO `sys_role_menus` VALUES ('1124', '2', '135');
INSERT INTO `sys_role_menus` VALUES ('1125', '2', '136');
INSERT INTO `sys_role_menus` VALUES ('1126', '2', '137');
INSERT INTO `sys_role_menus` VALUES ('1127', '2', '138');
INSERT INTO `sys_role_menus` VALUES ('1128', '2', '139');
INSERT INTO `sys_role_menus` VALUES ('1129', '2', '12');
INSERT INTO `sys_role_menus` VALUES ('1130', '2', '13');
INSERT INTO `sys_role_menus` VALUES ('1131', '2', '140');
INSERT INTO `sys_role_menus` VALUES ('1203', '40', '3');
INSERT INTO `sys_role_menus` VALUES ('1204', '40', '11');
INSERT INTO `sys_role_menus` VALUES ('1205', '40', '135');
INSERT INTO `sys_role_menus` VALUES ('1206', '40', '136');
INSERT INTO `sys_role_menus` VALUES ('1207', '40', '137');
INSERT INTO `sys_role_menus` VALUES ('1208', '40', '138');
INSERT INTO `sys_role_menus` VALUES ('1209', '40', '139');
INSERT INTO `sys_role_menus` VALUES ('1210', '38', '3');
INSERT INTO `sys_role_menus` VALUES ('1211', '38', '11');
INSERT INTO `sys_role_menus` VALUES ('1212', '38', '135');
INSERT INTO `sys_role_menus` VALUES ('1225', '1', '3');
INSERT INTO `sys_role_menus` VALUES ('1226', '1', '11');
INSERT INTO `sys_role_menus` VALUES ('1227', '1', '135');
INSERT INTO `sys_role_menus` VALUES ('1228', '1', '136');
INSERT INTO `sys_role_menus` VALUES ('1229', '1', '137');
INSERT INTO `sys_role_menus` VALUES ('1230', '1', '139');
INSERT INTO `sys_role_menus` VALUES ('1231', '1', '8');
INSERT INTO `sys_role_menus` VALUES ('1232', '1', '24');
INSERT INTO `sys_role_menus` VALUES ('1233', '1', '25');
INSERT INTO `sys_role_menus` VALUES ('1234', '1', '45');
INSERT INTO `sys_role_menus` VALUES ('1235', '1', '119');
INSERT INTO `sys_role_menus` VALUES ('1236', '1', '126');
INSERT INTO `sys_role_menus` VALUES ('1237', '1', '127');
INSERT INTO `sys_role_menus` VALUES ('1238', '1', '46');
INSERT INTO `sys_role_menus` VALUES ('1239', '1', '115');
INSERT INTO `sys_role_menus` VALUES ('1240', '1', '116');
INSERT INTO `sys_role_menus` VALUES ('1241', '1', '117');
INSERT INTO `sys_role_menus` VALUES ('1242', '1', '118');
INSERT INTO `sys_role_menus` VALUES ('1243', '1', '47');
INSERT INTO `sys_role_menus` VALUES ('1244', '1', '120');
INSERT INTO `sys_role_menus` VALUES ('1245', '1', '128');
INSERT INTO `sys_role_menus` VALUES ('1246', '1', '129');
INSERT INTO `sys_role_menus` VALUES ('1247', '1', '130');
INSERT INTO `sys_role_menus` VALUES ('1248', '1', '48');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL COMMENT '盐  密码加密时前缀，使加密后的值不同',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `valid` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常  默认值 ：1',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('1', 'admin', 'e73fe7f7e11514d450b8f7bf8903c818', '67b1b3c0-c5f3-4ef9-91aa-6965aa457c5e', 'admin@bms.cn', '13624356789', '1', null, '2018-05-04 16:59:47', null, null);
INSERT INTO `sys_users` VALUES ('2', 'zhangli', '319b21637b8a1e013c0ef5ff2458370e', '1e1ab28f-70fa-46fe-8084-0a1e6b8cb30e', 'zhangli@bms.cn', '13678909876', '1', '2017-07-18 10:01:51', '2018-04-27 22:57:14', null, null);
INSERT INTO `sys_users` VALUES ('3', 'wangke', '366cb67d04b1ed2285b2d13318a87256', 'ea8ae2c6-daf5-4329-ba5e-135b2e7a08ee', 'wangke@bms.cn', '18678900987', '1', '2017-07-18 11:40:53', '2018-04-27 22:57:25', null, null);
INSERT INTO `sys_users` VALUES ('4', 'zhangql', 'e805510b6ceae8d043ff34883102a618', '71ce09ca-2dc8-4672-b0f3-0820f016d484', 'zhangql@bms.cn', '13678909876', '1', '2017-07-18 12:17:30', '2018-04-27 22:57:40', null, null);
INSERT INTO `sys_users` VALUES ('5', 'fanwei', '7a77933f186da99cfaca21f543427b07', '512f7924-0312-4894-bc10-ffb9f79dfd30', 'fanwei@bms.cn', '13876545678', '1', '2017-07-20 17:03:22', '2018-04-27 22:57:55', null, null);
INSERT INTO `sys_users` VALUES ('6', 'wumei', 'ba415ea0010342d2de802c32f7495226', '23898979-50cb-40cf-9ba9-bd30cf8baa93', 'wumei@bms.cn', '13567898765', '1', '2017-07-21 10:57:40', '2018-04-27 22:58:08', null, null);
INSERT INTO `sys_users` VALUES ('10', 'wang', 'adde1e8280a70e3e879c621ff3f16b78', 'd0b16c63-bf8e-4965-ab47-e93d8e056367', 'wang@bms.com', '18856893345', '1', '2018-04-27 22:56:48', '2018-05-04 17:20:16', null, null);

-- ----------------------------
-- Table structure for sys_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_roles`;
CREATE TABLE `sys_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_roles
-- ----------------------------
INSERT INTO `sys_user_roles` VALUES ('27', '8', '1');
INSERT INTO `sys_user_roles` VALUES ('28', '9', '1');
INSERT INTO `sys_user_roles` VALUES ('31', '2', '38');
INSERT INTO `sys_user_roles` VALUES ('32', '3', '2');
INSERT INTO `sys_user_roles` VALUES ('33', '4', '2');
INSERT INTO `sys_user_roles` VALUES ('34', '5', '1');
INSERT INTO `sys_user_roles` VALUES ('35', '6', '2');
INSERT INTO `sys_user_roles` VALUES ('38', '1', '1');
INSERT INTO `sys_user_roles` VALUES ('39', '10', '38');

-- ----------------------------
-- Table structure for tb_book
-- ----------------------------
DROP TABLE IF EXISTS `tb_book`;
CREATE TABLE `tb_book` (
  `bId` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(50) NOT NULL,
  `bName` varchar(50) NOT NULL,
  `bClass` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `press` varchar(50) DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `bookshelfNum` varchar(50) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_book
-- ----------------------------
INSERT INTO `tb_book` VALUES ('3', '9787508647357', '人类简史1', '历史', '[以色列]尤瓦尔·赫拉利', '中信出版社', '2014-11-08 16:07:35', '68.00', '3', 'A-2-24', '0', '2017-12-08 16:07:15', '2017-12-13 11:44:21', 'admin', null);
INSERT INTO `tb_book` VALUES ('4', '9787508647357', '人类简史2', '历史', '[以色列]尤瓦尔·赫拉利', '中信出版社', '2014-11-08 16:07:35', '68.00', '3', 'A-2-24', '1', '2017-12-08 16:07:15', '2017-12-13 11:44:21', 'admin', null);
INSERT INTO `tb_book` VALUES ('6', '9787535069603', '朝花夕拾', '文学', '[中国]鲁迅', '未知', '2018-03-20 00:00:00', '22.00', '2', 'A-3-2', '1', '2018-03-01 08:56:04', '2018-03-12 15:05:24', null, null);
INSERT INTO `tb_book` VALUES ('9', '9787508647357', '人类简史6', '历史', '[以色列]尤瓦尔·赫拉利', '中信出版社', '2014-11-08 00:00:00', '68.00', '8', 'A-2-24', '1', '2018-02-09 10:33:54', '2018-02-28 18:06:19', 'admin', '');
INSERT INTO `tb_book` VALUES ('10', '9787508647357', '人类简史7', '历史', '[以色列]尤瓦尔·赫拉利', '中信出版社', '2014-11-08 00:00:00', '68.00', '8', 'A-2-24', '0', '2018-02-09 10:33:54', '2018-02-28 18:06:19', 'admin', '');
INSERT INTO `tb_book` VALUES ('11', '9787508647357', '人类简史8', '历史', '[以色列]尤瓦尔·赫拉利', '中信出版社', '2014-11-08 00:00:00', '68.00', '8', 'A-2-24', '0', '2018-02-09 10:33:54', '2018-02-28 18:06:19', 'admin', '');
INSERT INTO `tb_book` VALUES ('13', '9787550297685', '步履不停', 'B哲学', '[日] 是枝裕和 ', '北京联合出版公司', '2017-02-01 00:00:00', '36.80', '54', 'A-3-25', '1', '2018-03-12 15:04:15', '2018-05-04 15:25:48', null, null);
