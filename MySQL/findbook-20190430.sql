/*
 Navicat Premium Data Transfer

 Source Server         : user
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : findbook

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 30/04/2019 11:57:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fb_book_baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `fb_book_baseinfo`;
CREATE TABLE `fb_book_baseinfo`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书名',
  `Author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `Price` decimal(10, 2) NULL DEFAULT NULL COMMENT '定价',
  `ISBN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索书号',
  `Start` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评星',
  `Score` decimal(10, 0) NULL DEFAULT NULL COMMENT '评分',
  `People` decimal(10, 0) NULL DEFAULT NULL COMMENT '评论人数',
  `Press` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `PublicationData` datetime(0) NULL DEFAULT NULL COMMENT '出版日期',
  `BookContent` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容简介',
  `AuthorContent` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者简介',
  `Directory` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录',
  `BackUp1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_book_baseinfo
-- ----------------------------
INSERT INTO `fb_book_baseinfo` VALUES (1, '《xx》', 'xx', 10.00, '1234561112', '4.5', 9, 25640, 'xx出版社', '2019-04-30 11:40:12', 'xxxxx', '三生三世是 是是是是s', '发范德萨范德萨', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fb_book_comment
-- ----------------------------
DROP TABLE IF EXISTS `fb_book_comment`;
CREATE TABLE `fb_book_comment`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Book_No` int(11) NOT NULL,
  `Content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '短评内容',
  `CreatePerson` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `UpdatePerson` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UpdateDate` datetime(0) NULL DEFAULT NULL,
  `BackUp1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_book_comment
-- ----------------------------
INSERT INTO `fb_book_comment` VALUES (1, 1, '短评内容', 'admin', '2019-04-30 11:41:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fb_book_pricehistory
-- ----------------------------
DROP TABLE IF EXISTS `fb_book_pricehistory`;
CREATE TABLE `fb_book_pricehistory`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Book_No` int(11) NOT NULL,
  `Price` decimal(10, 2) NULL DEFAULT NULL COMMENT '售价',
  `DisCount` decimal(10, 0) NULL DEFAULT NULL COMMENT '折扣',
  `CreateDate` datetime(0) NULL DEFAULT NULL COMMENT '爬取时间',
  `Code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型编号',
  `BackUp1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_book_pricehistory
-- ----------------------------
INSERT INTO `fb_book_pricehistory` VALUES (1, 1, 25.00, 1, '2019-04-17 11:42:14', '1001', '', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fb_book_url
-- ----------------------------
DROP TABLE IF EXISTS `fb_book_url`;
CREATE TABLE `fb_book_url`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Book_No` int(11) NOT NULL,
  `URL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址类型代码',
  `BackUp1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_book_url
-- ----------------------------
INSERT INTO `fb_book_url` VALUES (1, 1, 'www.xxx.com', '1006', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fb_system_area
-- ----------------------------
DROP TABLE IF EXISTS `fb_system_area`;
CREATE TABLE `fb_system_area`  (
  `AreaCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域编码',
  `AreaName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域名',
  `AreaLevel` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域级别',
  `ParentAreaCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级编码',
  PRIMARY KEY (`AreaCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_system_area
-- ----------------------------
INSERT INTO `fb_system_area` VALUES ('100000', '华北地区', '0', NULL);
INSERT INTO `fb_system_area` VALUES ('110000', '北京市', '1', '100000');
INSERT INTO `fb_system_area` VALUES ('110101', '东城区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110102', '西城区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110103', '崇文区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110104', '宣武区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110105', '朝阳区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110106', '丰台区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110107', '石景山区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110108', '海淀区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110109', '门头沟区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110111', '房山区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110112', '通州区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110113', '顺义区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110114', '昌平区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110115', '大兴区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110116', '怀柔区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110117', '平谷区', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110228', '密云县', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('110229', '延庆县', '2', '110000');
INSERT INTO `fb_system_area` VALUES ('120000', '天津市', '1', '100000');
INSERT INTO `fb_system_area` VALUES ('120101', '和平区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120102', '河东区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120103', '河西区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120104', '南开区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120105', '河北区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120106', '红桥区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120107', '塘沽区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120108', '汉沽区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120109', '大港区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120110', '东丽区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120111', '西青区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120112', '津南区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120113', '北辰区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120114', '武清区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120115', '宝坻区', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120221', '宁河县', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120223', '静海县', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('120225', '蓟　县', '2', '120000');
INSERT INTO `fb_system_area` VALUES ('130000', '河北省', '1', '100000');
INSERT INTO `fb_system_area` VALUES ('130100', '石家庄市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('130200', '唐山市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('130300', '秦皇岛市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('130400', '邯郸市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('130500', '邢台市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('130600', '保定市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('130700', '张家口市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('130800', '承德市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('130900', '沧州市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('131000', '廊坊市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('131100', '衡水市', '2', '130000');
INSERT INTO `fb_system_area` VALUES ('140000', '山西省', '1', '100000');
INSERT INTO `fb_system_area` VALUES ('140100', '太原市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('140200', '大同市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('140300', '阳泉市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('140400', '长治市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('140500', '晋城市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('140600', '朔州市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('140700', '晋中市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('140800', '运城市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('140900', '忻州市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('141000', '临汾市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('141100', '吕梁市', '2', '140000');
INSERT INTO `fb_system_area` VALUES ('150000', '内蒙古自治区', '1', '100000');
INSERT INTO `fb_system_area` VALUES ('150100', '呼和浩特市', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('150200', '包头市', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('150300', '乌海市', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('150400', '赤峰市', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('150500', '通辽市', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('150600', '鄂尔多斯市', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('150700', '呼伦贝尔市', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('150800', '巴彦淖尔市', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('150900', '乌兰察布市', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('152200', '兴安盟', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('152500', '锡林郭勒盟', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('152900', '阿拉善盟', '2', '150000');
INSERT INTO `fb_system_area` VALUES ('200000', '东北地区', '0', NULL);
INSERT INTO `fb_system_area` VALUES ('210000', '辽宁省', '1', '200000');
INSERT INTO `fb_system_area` VALUES ('210100', '沈阳市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('210200', '大连市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('210300', '鞍山市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('210400', '抚顺市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('210500', '本溪市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('210600', '丹东市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('210700', '锦州市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('210800', '营口市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('210900', '阜新市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('211000', '辽阳市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('211100', '盘锦市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('211200', '铁岭市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('211300', '朝阳市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('211400', '葫芦岛市', '2', '210000');
INSERT INTO `fb_system_area` VALUES ('220000', '吉林省', '1', '200000');
INSERT INTO `fb_system_area` VALUES ('220100', '长春市', '2', '220000');
INSERT INTO `fb_system_area` VALUES ('220200', '吉林市', '2', '220000');
INSERT INTO `fb_system_area` VALUES ('220300', '四平市', '2', '220000');
INSERT INTO `fb_system_area` VALUES ('220400', '辽源市', '2', '220000');
INSERT INTO `fb_system_area` VALUES ('220500', '通化市', '2', '220000');
INSERT INTO `fb_system_area` VALUES ('220600', '白山市', '2', '220000');
INSERT INTO `fb_system_area` VALUES ('220700', '松原市', '2', '220000');
INSERT INTO `fb_system_area` VALUES ('220800', '白城市', '2', '220000');
INSERT INTO `fb_system_area` VALUES ('222400', '延边朝鲜族自治州', '2', '220000');
INSERT INTO `fb_system_area` VALUES ('230000', '黑龙江省', '1', '200000');
INSERT INTO `fb_system_area` VALUES ('230100', '哈尔滨市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('230200', '齐齐哈尔市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('230300', '鸡西市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('230400', '鹤岗市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('230500', '双鸭山市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('230600', '大庆市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('230700', '伊春市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('230800', '佳木斯市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('230900', '七台河市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('231000', '牡丹江市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('231100', '黑河市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('231200', '绥化市', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('232700', '大兴安岭地区', '2', '230000');
INSERT INTO `fb_system_area` VALUES ('300000', '华东地区', '0', NULL);
INSERT INTO `fb_system_area` VALUES ('310000', '上海市', '1', '300000');
INSERT INTO `fb_system_area` VALUES ('310101', '黄浦区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310103', '卢湾区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310104', '徐汇区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310105', '长宁区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310106', '静安区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310107', '普陀区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310108', '闸北区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310109', '虹口区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310110', '杨浦区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310112', '闵行区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310113', '宝山区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310114', '嘉定区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310115', '浦东新区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310116', '金山区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310117', '松江区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310118', '青浦区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310119', '南汇区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310120', '奉贤区', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('310230', '崇明县', '2', '310000');
INSERT INTO `fb_system_area` VALUES ('320000', '江苏省', '1', '300000');
INSERT INTO `fb_system_area` VALUES ('320100', '南京市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('320200', '无锡市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('320300', '徐州市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('320400', '常州市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('320500', '苏州市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('320600', '南通市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('320700', '连云港市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('320800', '淮安市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('320900', '盐城市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('321000', '扬州市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('321100', '镇江市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('321200', '泰州市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('321300', '宿迁市', '2', '320000');
INSERT INTO `fb_system_area` VALUES ('330000', '浙江省', '1', '300000');
INSERT INTO `fb_system_area` VALUES ('330100', '杭州市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('330200', '宁波市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('330300', '温州市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('330400', '嘉兴市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('330500', '湖州市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('330600', '绍兴市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('330700', '金华市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('330800', '衢州市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('330900', '舟山市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('331000', '台州市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('331100', '丽水市', '2', '330000');
INSERT INTO `fb_system_area` VALUES ('340000', '安徽省', '1', '300000');
INSERT INTO `fb_system_area` VALUES ('340100', '合肥市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('340200', '芜湖市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('340300', '蚌埠市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('340400', '淮南市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('340500', '马鞍山市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('340600', '淮北市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('340700', '铜陵市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('340800', '安庆市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('341000', '黄山市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('341100', '滁州市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('341200', '阜阳市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('341300', '宿州市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('341400', '巢湖市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('341500', '六安市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('341600', '亳州市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('341700', '池州市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('341800', '宣城市', '2', '340000');
INSERT INTO `fb_system_area` VALUES ('350000', '福建省', '1', '300000');
INSERT INTO `fb_system_area` VALUES ('350100', '福州市', '2', '350000');
INSERT INTO `fb_system_area` VALUES ('350200', '厦门市', '2', '350000');
INSERT INTO `fb_system_area` VALUES ('350300', '莆田市', '2', '350000');
INSERT INTO `fb_system_area` VALUES ('350400', '三明市', '2', '350000');
INSERT INTO `fb_system_area` VALUES ('350500', '泉州市', '2', '350000');
INSERT INTO `fb_system_area` VALUES ('350600', '漳州市', '2', '350000');
INSERT INTO `fb_system_area` VALUES ('350700', '南平市', '2', '350000');
INSERT INTO `fb_system_area` VALUES ('350800', '龙岩市', '2', '350000');
INSERT INTO `fb_system_area` VALUES ('350900', '宁德市', '2', '350000');
INSERT INTO `fb_system_area` VALUES ('360000', '江西省', '1', '300000');
INSERT INTO `fb_system_area` VALUES ('360100', '南昌市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('360200', '景德镇市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('360300', '萍乡市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('360400', '九江市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('360500', '新余市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('360600', '鹰潭市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('360700', '赣州市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('360800', '吉安市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('360900', '宜春市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('361000', '抚州市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('361100', '上饶市', '2', '360000');
INSERT INTO `fb_system_area` VALUES ('370000', '山东省', '1', '300000');
INSERT INTO `fb_system_area` VALUES ('370100', '济南市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('370200', '青岛市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('370300', '淄博市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('370400', '枣庄市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('370500', '东营市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('370600', '烟台市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('370700', '潍坊市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('370800', '济宁市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('370900', '泰安市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('371000', '威海市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('371100', '日照市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('371200', '莱芜市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('371300', '临沂市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('371400', '德州市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('371500', '聊城市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('371600', '滨州市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('371700', '荷泽市', '2', '370000');
INSERT INTO `fb_system_area` VALUES ('380000', '台湾省', '1', '300000');
INSERT INTO `fb_system_area` VALUES ('400000', '华中地区', '0', NULL);
INSERT INTO `fb_system_area` VALUES ('410000', '河南省', '1', '400000');
INSERT INTO `fb_system_area` VALUES ('410100', '郑州市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('410200', '开封市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('410300', '洛阳市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('410400', '平顶山市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('410500', '安阳市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('410600', '鹤壁市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('410700', '新乡市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('410800', '焦作市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('410900', '濮阳市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('411000', '许昌市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('411100', '漯河市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('411200', '三门峡市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('411300', '南阳市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('411400', '商丘市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('411500', '信阳市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('411600', '周口市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('411700', '驻马店市', '2', '410000');
INSERT INTO `fb_system_area` VALUES ('420000', '湖北省', '1', '400000');
INSERT INTO `fb_system_area` VALUES ('420100', '武汉市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('420200', '黄石市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('420300', '十堰市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('420500', '宜昌市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('420600', '襄樊市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('420700', '鄂州市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('420800', '荆门市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('420900', '孝感市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('421000', '荆州市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('421100', '黄冈市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('421200', '咸宁市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('421300', '随州市', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('422800', '恩施土家族苗族自治州', '2', '420000');
INSERT INTO `fb_system_area` VALUES ('430000', '湖南省', '1', '400000');
INSERT INTO `fb_system_area` VALUES ('430100', '长沙市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('430200', '株洲市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('430300', '湘潭市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('430400', '衡阳市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('430500', '邵阳市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('430600', '岳阳市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('430700', '常德市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('430800', '张家界市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('430900', '益阳市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('431000', '郴州市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('431100', '永州市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('431200', '怀化市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('431300', '娄底市', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('433100', '湘西土家族苗族自治州', '2', '430000');
INSERT INTO `fb_system_area` VALUES ('500000', '华南地区', '0', NULL);
INSERT INTO `fb_system_area` VALUES ('510000', '广东省', '1', '500000');
INSERT INTO `fb_system_area` VALUES ('510100', '广州市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('510200', '韶关市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('510300', '深圳市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('510400', '珠海市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('510500', '汕头市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('510600', '佛山市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('510700', '江门市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('510800', '湛江市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('510900', '茂名市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('511200', '肇庆市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('511300', '惠州市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('511400', '梅州市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('511500', '汕尾市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('511600', '河源市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('511700', '阳江市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('511800', '清远市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('511900', '东莞市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('512000', '中山市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('515100', '潮州市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('515200', '揭阳市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('515300', '云浮市', '2', '510000');
INSERT INTO `fb_system_area` VALUES ('520000', '广西壮族自治区', '1', '500000');
INSERT INTO `fb_system_area` VALUES ('520100', '南宁市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('520200', '柳州市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('520300', '桂林市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('520400', '梧州市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('520500', '北海市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('520600', '防城港市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('520700', '钦州市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('520800', '贵港市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('520900', '玉林市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('521000', '百色市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('521100', '贺州市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('521200', '河池市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('521300', '来宾市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('521400', '崇左市', '2', '520000');
INSERT INTO `fb_system_area` VALUES ('530000', '海南省', '1', '500000');
INSERT INTO `fb_system_area` VALUES ('530100', '海口市', '2', '530000');
INSERT INTO `fb_system_area` VALUES ('530200', '三亚市', '2', '530000');
INSERT INTO `fb_system_area` VALUES ('540000', '香港特别行政区', '1', '500000');
INSERT INTO `fb_system_area` VALUES ('550000', '澳门特别行政区', '1', '500000');
INSERT INTO `fb_system_area` VALUES ('600000', '西南地区', '0', NULL);
INSERT INTO `fb_system_area` VALUES ('610000', '重庆市', '1', '600000');
INSERT INTO `fb_system_area` VALUES ('610101', '万州区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610102', '涪陵区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610103', '渝中区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610104', '大渡口区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610105', '江北区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610106', '沙坪坝区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610107', '九龙坡区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610108', '南岸区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610109', '北碚区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610110', '万盛区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610111', '双桥区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610112', '渝北区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610113', '巴南区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610114', '黔江区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610115', '长寿区', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610222', '綦江县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610223', '潼南县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610224', '铜梁县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610225', '大足县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610226', '荣昌县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610227', '璧山县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610228', '梁平县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610229', '城口县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610230', '丰都县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610231', '垫江县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610232', '武隆县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610233', '忠　县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610234', '开　县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610235', '云阳县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610236', '奉节县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610237', '巫山县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610238', '巫溪县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610240', '石柱土家族自治县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610241', '秀山土家族苗族自治县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610242', '酉阳土家族苗族自治县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610243', '彭水苗族土家族自治县', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610381', '江津市', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610382', '合川市', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610383', '永川市', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('610384', '南川市', '2', '610000');
INSERT INTO `fb_system_area` VALUES ('620000', '四川省', '1', '600000');
INSERT INTO `fb_system_area` VALUES ('620100', '成都市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('620300', '自贡市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('620400', '攀枝花市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('620500', '泸州市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('620600', '德阳市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('620700', '绵阳市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('620800', '广元市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('620900', '遂宁市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('621000', '内江市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('621100', '乐山市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('621300', '南充市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('621400', '眉山市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('621500', '宜宾市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('621600', '广安市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('621700', '达州市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('621800', '雅安市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('621900', '巴中市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('622000', '资阳市', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('623200', '阿坝藏族羌族自治州', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('623300', '甘孜藏族自治州', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('623400', '凉山彝族自治州', '2', '620000');
INSERT INTO `fb_system_area` VALUES ('630000', '贵州省', '1', '600000');
INSERT INTO `fb_system_area` VALUES ('630100', '贵阳市', '2', '630000');
INSERT INTO `fb_system_area` VALUES ('630200', '六盘水市', '2', '630000');
INSERT INTO `fb_system_area` VALUES ('630300', '遵义市', '2', '630000');
INSERT INTO `fb_system_area` VALUES ('630400', '安顺市', '2', '630000');
INSERT INTO `fb_system_area` VALUES ('632200', '铜仁地区', '2', '630000');
INSERT INTO `fb_system_area` VALUES ('632300', '黔西南布依族苗族自治州', '2', '630000');
INSERT INTO `fb_system_area` VALUES ('632400', '毕节地区', '2', '630000');
INSERT INTO `fb_system_area` VALUES ('632600', '黔东南苗族侗族自治州', '2', '630000');
INSERT INTO `fb_system_area` VALUES ('632700', '黔南布依族苗族自治州', '2', '630000');
INSERT INTO `fb_system_area` VALUES ('640000', '云南省', '1', '600000');
INSERT INTO `fb_system_area` VALUES ('640100', '昆明市', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('640300', '曲靖市', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('640400', '玉溪市', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('640500', '保山市', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('640600', '昭通市', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('640700', '丽江市', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('640800', '思茅市', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('640900', '临沧市', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('642300', '楚雄彝族自治州', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('642500', '红河哈尼族彝族自治州', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('642600', '文山壮族苗族自治州', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('642800', '西双版纳傣族自治州', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('642900', '大理白族自治州', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('643100', '德宏傣族景颇族自治州', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('643300', '怒江傈僳族自治州', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('643400', '迪庆藏族自治州', '2', '640000');
INSERT INTO `fb_system_area` VALUES ('650000', '西藏自治区', '1', '600000');
INSERT INTO `fb_system_area` VALUES ('650100', '拉萨市', '2', '650000');
INSERT INTO `fb_system_area` VALUES ('652100', '昌都地区', '2', '650000');
INSERT INTO `fb_system_area` VALUES ('652200', '山南地区', '2', '650000');
INSERT INTO `fb_system_area` VALUES ('652300', '日喀则地区', '2', '650000');
INSERT INTO `fb_system_area` VALUES ('652400', '那曲地区', '2', '650000');
INSERT INTO `fb_system_area` VALUES ('652500', '阿里地区', '2', '650000');
INSERT INTO `fb_system_area` VALUES ('652600', '林芝地区', '2', '650000');
INSERT INTO `fb_system_area` VALUES ('700000', '西北地区', '0', NULL);
INSERT INTO `fb_system_area` VALUES ('710000', '陕西省', '1', '700000');
INSERT INTO `fb_system_area` VALUES ('710100', '西安市', '2', '710000');
INSERT INTO `fb_system_area` VALUES ('710200', '铜川市', '2', '710000');
INSERT INTO `fb_system_area` VALUES ('710300', '宝鸡市', '2', '710000');
INSERT INTO `fb_system_area` VALUES ('710400', '咸阳市', '2', '710000');
INSERT INTO `fb_system_area` VALUES ('710500', '渭南市', '2', '710000');
INSERT INTO `fb_system_area` VALUES ('710600', '延安市', '2', '710000');
INSERT INTO `fb_system_area` VALUES ('710700', '汉中市', '2', '710000');
INSERT INTO `fb_system_area` VALUES ('710800', '榆林市', '2', '710000');
INSERT INTO `fb_system_area` VALUES ('710900', '安康市', '2', '710000');
INSERT INTO `fb_system_area` VALUES ('711000', '商洛市', '2', '710000');
INSERT INTO `fb_system_area` VALUES ('720000', '甘肃省', '1', '700000');
INSERT INTO `fb_system_area` VALUES ('720100', '兰州市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('720200', '嘉峪关市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('720300', '金昌市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('720400', '白银市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('720500', '天水市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('720600', '武威市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('720700', '张掖市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('720800', '平凉市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('720900', '酒泉市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('721000', '庆阳市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('721100', '定西市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('721200', '陇南市', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('722900', '临夏回族自治州', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('723000', '甘南藏族自治州', '2', '720000');
INSERT INTO `fb_system_area` VALUES ('730000', '青海省', '1', '700000');
INSERT INTO `fb_system_area` VALUES ('730100', '西宁市', '2', '730000');
INSERT INTO `fb_system_area` VALUES ('732100', '海东地区', '2', '730000');
INSERT INTO `fb_system_area` VALUES ('732200', '海北藏族自治州', '2', '730000');
INSERT INTO `fb_system_area` VALUES ('732300', '黄南藏族自治州', '2', '730000');
INSERT INTO `fb_system_area` VALUES ('732500', '海南藏族自治州', '2', '730000');
INSERT INTO `fb_system_area` VALUES ('732600', '果洛藏族自治州', '2', '730000');
INSERT INTO `fb_system_area` VALUES ('732700', '玉树藏族自治州', '2', '730000');
INSERT INTO `fb_system_area` VALUES ('732800', '海西蒙古族藏族自治州', '2', '730000');
INSERT INTO `fb_system_area` VALUES ('740000', '宁夏回族自治区', '1', '700000');
INSERT INTO `fb_system_area` VALUES ('740100', '银川市', '2', '740000');
INSERT INTO `fb_system_area` VALUES ('740200', '石嘴山市', '2', '740000');
INSERT INTO `fb_system_area` VALUES ('740300', '吴忠市', '2', '740000');
INSERT INTO `fb_system_area` VALUES ('740400', '固原市', '2', '740000');
INSERT INTO `fb_system_area` VALUES ('740500', '中卫市', '2', '740000');
INSERT INTO `fb_system_area` VALUES ('750000', '新疆维吾尔自治区', '1', '700000');
INSERT INTO `fb_system_area` VALUES ('750100', '乌鲁木齐市', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('750200', '克拉玛依市', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('752100', '吐鲁番地区', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('752200', '哈密地区', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('752300', '昌吉回族自治州', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('752700', '博尔塔拉蒙古自治州', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('752800', '巴音郭楞蒙古自治州', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('752900', '阿克苏地区', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('753000', '克孜勒苏柯尔克孜自治州', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('753100', '喀什地区', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('753200', '和田地区', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('754000', '伊犁哈萨克自治州', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('754200', '塔城地区', '2', '750000');
INSERT INTO `fb_system_area` VALUES ('754300', '阿勒泰地区', '2', '750000');

-- ----------------------------
-- Table structure for fb_system_code
-- ----------------------------
DROP TABLE IF EXISTS `fb_system_code`;
CREATE TABLE `fb_system_code`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `CodeType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码类型',
  `CodeTypeName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码类型名称',
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `CodeName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码名称',
  `CreatePerson` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `UpdatePerson` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UpdateDate` datetime(0) NULL DEFAULT NULL,
  `BackUp1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_system_code
-- ----------------------------
INSERT INTO `fb_system_code` VALUES (1, 'BookURL', 'URL类型', '0001', '豆瓣搜索结果链接', 'admin', '2019-04-30 11:45:00', '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fb_system_code` VALUES (2, '网站', '网站类型', '1001', '豆瓣网', 'admin', '2019-04-30 11:45:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fb_system_icon
-- ----------------------------
DROP TABLE IF EXISTS `fb_system_icon`;
CREATE TABLE `fb_system_icon`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IconCss` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2051 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_system_icon
-- ----------------------------
INSERT INTO `fb_system_icon` VALUES (1221, 'fab fa-500px', 2);
INSERT INTO `fb_system_icon` VALUES (1222, 'fab fa-accessible-icon', 3);
INSERT INTO `fb_system_icon` VALUES (1223, 'fab fa-accusoft', 4);
INSERT INTO `fb_system_icon` VALUES (1224, 'far fa-address-book', 5);
INSERT INTO `fb_system_icon` VALUES (1225, 'far fa-address-card', 6);
INSERT INTO `fb_system_icon` VALUES (1226, 'fas fa-adjust', 7);
INSERT INTO `fb_system_icon` VALUES (1227, 'fab fa-adn', 8);
INSERT INTO `fb_system_icon` VALUES (1228, 'fab fa-adversal', 9);
INSERT INTO `fb_system_icon` VALUES (1229, 'fab fa-affiliatetheme', 10);
INSERT INTO `fb_system_icon` VALUES (1230, 'fab fa-al;lia', 11);
INSERT INTO `fb_system_icon` VALUES (1231, 'fas fa-align-center', 12);
INSERT INTO `fb_system_icon` VALUES (1232, 'fas fa-align-justify', 13);
INSERT INTO `fb_system_icon` VALUES (1233, 'fas fa-align-left', 14);
INSERT INTO `fb_system_icon` VALUES (1234, 'fas fa-align-right', 15);
INSERT INTO `fb_system_icon` VALUES (1235, 'fab fa-amazon', 16);
INSERT INTO `fb_system_icon` VALUES (1236, 'fab fa-amazon-pay', 17);
INSERT INTO `fb_system_icon` VALUES (1237, 'fas fa-ambulance', 18);
INSERT INTO `fb_system_icon` VALUES (1238, 'fas fa-american-sign-language-interpreting', 19);
INSERT INTO `fb_system_icon` VALUES (1239, 'fab fa-amilia', 20);
INSERT INTO `fb_system_icon` VALUES (1240, 'fas fa-anchor', 21);
INSERT INTO `fb_system_icon` VALUES (1241, 'fab fa-android', 22);
INSERT INTO `fb_system_icon` VALUES (1242, 'fab fa-angellist', 23);
INSERT INTO `fb_system_icon` VALUES (1243, 'fas fa-angle-double-down', 24);
INSERT INTO `fb_system_icon` VALUES (1244, 'fas fa-angle-double-left', 25);
INSERT INTO `fb_system_icon` VALUES (1245, 'fas fa-angle-double-right', 26);
INSERT INTO `fb_system_icon` VALUES (1246, 'fas fa-angle-double-up', 27);
INSERT INTO `fb_system_icon` VALUES (1247, 'fas fa-angle-down', 28);
INSERT INTO `fb_system_icon` VALUES (1248, 'fas fa-angle-left', 29);
INSERT INTO `fb_system_icon` VALUES (1249, 'fas fa-angle-right', 30);
INSERT INTO `fb_system_icon` VALUES (1250, 'fas fa-angle-up', 31);
INSERT INTO `fb_system_icon` VALUES (1251, 'fab fa-angrycreative', 32);
INSERT INTO `fb_system_icon` VALUES (1252, 'fab fa-angular', 33);
INSERT INTO `fb_system_icon` VALUES (1253, 'fab fa-app-store', 34);
INSERT INTO `fb_system_icon` VALUES (1254, 'fab fa-app-store-ios', 35);
INSERT INTO `fb_system_icon` VALUES (1255, 'fab fa-apper', 36);
INSERT INTO `fb_system_icon` VALUES (1256, 'fab fa-apple', 37);
INSERT INTO `fb_system_icon` VALUES (1257, 'fab fa-apple-pay', 38);
INSERT INTO `fb_system_icon` VALUES (1258, 'fas fa-archive', 39);
INSERT INTO `fb_system_icon` VALUES (1259, 'far fa-arrow-alt-circle-down', 40);
INSERT INTO `fb_system_icon` VALUES (1260, 'far fa-arrow-alt-circle-left', 41);
INSERT INTO `fb_system_icon` VALUES (1261, 'far fa-arrow-alt-circle-right', 42);
INSERT INTO `fb_system_icon` VALUES (1262, 'far fa-arrow-alt-circle-up', 43);
INSERT INTO `fb_system_icon` VALUES (1263, 'fas fa-arrow-circle-down', 44);
INSERT INTO `fb_system_icon` VALUES (1264, 'fas fa-arrow-circle-left', 45);
INSERT INTO `fb_system_icon` VALUES (1265, 'fas fa-arrow-circle-right', 46);
INSERT INTO `fb_system_icon` VALUES (1266, 'fas fa-arrow-circle-up', 47);
INSERT INTO `fb_system_icon` VALUES (1267, 'fas fa-arrow-down', 48);
INSERT INTO `fb_system_icon` VALUES (1268, 'fas fa-arrow-left', 49);
INSERT INTO `fb_system_icon` VALUES (1269, 'fas fa-arrow-right', 50);
INSERT INTO `fb_system_icon` VALUES (1270, 'fas fa-arrow-up', 51);
INSERT INTO `fb_system_icon` VALUES (1271, 'fas fa-arrows-alt', 52);
INSERT INTO `fb_system_icon` VALUES (1272, 'fas fa-arrows-alt-h', 53);
INSERT INTO `fb_system_icon` VALUES (1273, 'fas fa-arrows-alt-v', 54);
INSERT INTO `fb_system_icon` VALUES (1274, 'fas fa-assistive-listening-systems', 55);
INSERT INTO `fb_system_icon` VALUES (1275, 'fas fa-asterisk', 56);
INSERT INTO `fb_system_icon` VALUES (1276, 'fab fa-asymmetrik', 57);
INSERT INTO `fb_system_icon` VALUES (1277, 'fas fa-at', 58);
INSERT INTO `fb_system_icon` VALUES (1278, 'fab fa-audible', 59);
INSERT INTO `fb_system_icon` VALUES (1279, 'fas fa-audio-description', 60);
INSERT INTO `fb_system_icon` VALUES (1280, 'fab fa-autoprefixer', 61);
INSERT INTO `fb_system_icon` VALUES (1281, 'fab fa-avianex', 62);
INSERT INTO `fb_system_icon` VALUES (1282, 'fab fa-aviato', 63);
INSERT INTO `fb_system_icon` VALUES (1283, 'fab fa-aws', 64);
INSERT INTO `fb_system_icon` VALUES (1284, 'fas fa-backward', 65);
INSERT INTO `fb_system_icon` VALUES (1285, 'fas fa-balance-scale', 66);
INSERT INTO `fb_system_icon` VALUES (1286, 'fas fa-ban', 67);
INSERT INTO `fb_system_icon` VALUES (1287, 'fas fa-band-aid', 68);
INSERT INTO `fb_system_icon` VALUES (1288, 'fab fa-bandcamp', 69);
INSERT INTO `fb_system_icon` VALUES (1289, 'fas fa-barcode', 70);
INSERT INTO `fb_system_icon` VALUES (1290, 'fas fa-bars', 71);
INSERT INTO `fb_system_icon` VALUES (1291, 'fas fa-baseball-ball', 72);
INSERT INTO `fb_system_icon` VALUES (1292, 'fas fa-basketball-ball', 73);
INSERT INTO `fb_system_icon` VALUES (1293, 'fas fa-bath', 74);
INSERT INTO `fb_system_icon` VALUES (1294, 'fas fa-battery-empty', 75);
INSERT INTO `fb_system_icon` VALUES (1295, 'fas fa-battery-full', 76);
INSERT INTO `fb_system_icon` VALUES (1296, 'fas fa-battery-half', 77);
INSERT INTO `fb_system_icon` VALUES (1297, 'fas fa-battery-quarter', 78);
INSERT INTO `fb_system_icon` VALUES (1298, 'fas fa-battery-three-quarters', 79);
INSERT INTO `fb_system_icon` VALUES (1299, 'fas fa-bed', 80);
INSERT INTO `fb_system_icon` VALUES (1300, 'fas fa-beer', 81);
INSERT INTO `fb_system_icon` VALUES (1301, 'fab fa-behance', 82);
INSERT INTO `fb_system_icon` VALUES (1302, 'fab fa-behance-square', 83);
INSERT INTO `fb_system_icon` VALUES (1303, 'far fa-bell', 84);
INSERT INTO `fb_system_icon` VALUES (1304, 'far fa-bell-slash', 85);
INSERT INTO `fb_system_icon` VALUES (1305, 'fas fa-bicycle', 86);
INSERT INTO `fb_system_icon` VALUES (1306, 'fab fa-bimobject', 87);
INSERT INTO `fb_system_icon` VALUES (1307, 'fas fa-binoculars', 88);
INSERT INTO `fb_system_icon` VALUES (1308, 'fas fa-birthday-cake', 89);
INSERT INTO `fb_system_icon` VALUES (1309, 'fab fa-bitbucket', 90);
INSERT INTO `fb_system_icon` VALUES (1310, 'fab fa-bitcoin', 91);
INSERT INTO `fb_system_icon` VALUES (1311, 'fab fa-bity', 92);
INSERT INTO `fb_system_icon` VALUES (1312, 'fab fa-black-tie', 93);
INSERT INTO `fb_system_icon` VALUES (1313, 'fab fa-blackberry', 94);
INSERT INTO `fb_system_icon` VALUES (1314, 'fas fa-blind', 95);
INSERT INTO `fb_system_icon` VALUES (1315, 'fab fa-blogger', 96);
INSERT INTO `fb_system_icon` VALUES (1316, 'fab fa-blogger-b', 97);
INSERT INTO `fb_system_icon` VALUES (1317, 'fab fa-bluetooth', 98);
INSERT INTO `fb_system_icon` VALUES (1318, 'fab fa-bluetooth-b', 99);
INSERT INTO `fb_system_icon` VALUES (1319, 'fas fa-bold', 100);
INSERT INTO `fb_system_icon` VALUES (1320, 'fas fa-bolt', 101);
INSERT INTO `fb_system_icon` VALUES (1321, 'fas fa-bomb', 102);
INSERT INTO `fb_system_icon` VALUES (1322, 'fas fa-book', 103);
INSERT INTO `fb_system_icon` VALUES (1323, 'far fa-bookmark', 104);
INSERT INTO `fb_system_icon` VALUES (1324, 'fas fa-bowling-ball', 105);
INSERT INTO `fb_system_icon` VALUES (1325, 'fas fa-box', 106);
INSERT INTO `fb_system_icon` VALUES (1326, 'fas fa-boxes', 107);
INSERT INTO `fb_system_icon` VALUES (1327, 'fas fa-braille', 108);
INSERT INTO `fb_system_icon` VALUES (1328, 'fas fa-briefcase', 109);
INSERT INTO `fb_system_icon` VALUES (1329, 'fab fa-btc', 110);
INSERT INTO `fb_system_icon` VALUES (1330, 'fas fa-bug', 111);
INSERT INTO `fb_system_icon` VALUES (1331, 'far fa-building', 112);
INSERT INTO `fb_system_icon` VALUES (1332, 'fas fa-bullhorn', 113);
INSERT INTO `fb_system_icon` VALUES (1333, 'fas fa-bullseye', 114);
INSERT INTO `fb_system_icon` VALUES (1334, 'fab fa-buromobelexperte', 115);
INSERT INTO `fb_system_icon` VALUES (1335, 'fas fa-bus', 116);
INSERT INTO `fb_system_icon` VALUES (1336, 'fab fa-buysellads', 117);
INSERT INTO `fb_system_icon` VALUES (1337, 'fas fa-calculator', 118);
INSERT INTO `fb_system_icon` VALUES (1338, 'far fa-calendar', 119);
INSERT INTO `fb_system_icon` VALUES (1339, 'fas fa-calendar-alt', 120);
INSERT INTO `fb_system_icon` VALUES (1340, 'far fa-calendar-check', 121);
INSERT INTO `fb_system_icon` VALUES (1341, 'far fa-calendar-minus', 122);
INSERT INTO `fb_system_icon` VALUES (1342, 'far fa-calendar-plus', 123);
INSERT INTO `fb_system_icon` VALUES (1343, 'far fa-calendar-times', 124);
INSERT INTO `fb_system_icon` VALUES (1344, 'fas fa-camera', 125);
INSERT INTO `fb_system_icon` VALUES (1345, 'fas fa-camera-retro', 126);
INSERT INTO `fb_system_icon` VALUES (1346, 'fas fa-car', 127);
INSERT INTO `fb_system_icon` VALUES (1347, 'fas fa-caret-down', 128);
INSERT INTO `fb_system_icon` VALUES (1348, 'fas fa-caret-left', 129);
INSERT INTO `fb_system_icon` VALUES (1349, 'fas fa-caret-right', 130);
INSERT INTO `fb_system_icon` VALUES (1350, 'far fa-caret-square-down', 131);
INSERT INTO `fb_system_icon` VALUES (1351, 'far fa-caret-square-left', 132);
INSERT INTO `fb_system_icon` VALUES (1352, 'far fa-caret-square-right', 133);
INSERT INTO `fb_system_icon` VALUES (1353, 'far fa-caret-square-up', 134);
INSERT INTO `fb_system_icon` VALUES (1354, 'fas fa-caret-up', 135);
INSERT INTO `fb_system_icon` VALUES (1355, 'fas fa-cart-arrow-down', 136);
INSERT INTO `fb_system_icon` VALUES (1356, 'fas fa-cart-plus', 137);
INSERT INTO `fb_system_icon` VALUES (1357, 'fab fa-cc-amazon-pay', 138);
INSERT INTO `fb_system_icon` VALUES (1358, 'fab fa-cc-amex', 139);
INSERT INTO `fb_system_icon` VALUES (1359, 'fab fa-cc-apple-pay', 140);
INSERT INTO `fb_system_icon` VALUES (1360, 'fab fa-cc-diners-club', 141);
INSERT INTO `fb_system_icon` VALUES (1361, 'fab fa-cc-discover', 142);
INSERT INTO `fb_system_icon` VALUES (1362, 'fab fa-cc-jcb', 143);
INSERT INTO `fb_system_icon` VALUES (1363, 'fab fa-cc-mastercard', 144);
INSERT INTO `fb_system_icon` VALUES (1364, 'fab fa-cc-paypal', 145);
INSERT INTO `fb_system_icon` VALUES (1365, 'fab fa-cc-stripe', 146);
INSERT INTO `fb_system_icon` VALUES (1366, 'fab fa-cc-visa', 147);
INSERT INTO `fb_system_icon` VALUES (1367, 'fab fa-centercode', 148);
INSERT INTO `fb_system_icon` VALUES (1368, 'fas fa-certificate', 149);
INSERT INTO `fb_system_icon` VALUES (1369, 'fas fa-chart-area', 150);
INSERT INTO `fb_system_icon` VALUES (1370, 'far fa-chart-bar', 151);
INSERT INTO `fb_system_icon` VALUES (1371, 'fas fa-chart-line', 152);
INSERT INTO `fb_system_icon` VALUES (1372, 'fas fa-chart-pie', 153);
INSERT INTO `fb_system_icon` VALUES (1373, 'fas fa-check', 154);
INSERT INTO `fb_system_icon` VALUES (1374, 'far fa-check-circle', 155);
INSERT INTO `fb_system_icon` VALUES (1375, 'far fa-check-square', 156);
INSERT INTO `fb_system_icon` VALUES (1376, 'fas fa-chess', 157);
INSERT INTO `fb_system_icon` VALUES (1377, 'fas fa-chess-bishop', 158);
INSERT INTO `fb_system_icon` VALUES (1378, 'fas fa-chess-board', 159);
INSERT INTO `fb_system_icon` VALUES (1379, 'fas fa-chess-king', 160);
INSERT INTO `fb_system_icon` VALUES (1380, 'fas fa-chess-knight', 161);
INSERT INTO `fb_system_icon` VALUES (1381, 'fas fa-chess-pawn', 162);
INSERT INTO `fb_system_icon` VALUES (1382, 'fas fa-chess-queen', 163);
INSERT INTO `fb_system_icon` VALUES (1383, 'fas fa-chess-rook', 164);
INSERT INTO `fb_system_icon` VALUES (1384, 'fas fa-chevron-circle-down', 165);
INSERT INTO `fb_system_icon` VALUES (1385, 'fas fa-chevron-circle-left', 166);
INSERT INTO `fb_system_icon` VALUES (1386, 'fas fa-chevron-circle-right', 167);
INSERT INTO `fb_system_icon` VALUES (1387, 'fas fa-chevron-circle-up', 168);
INSERT INTO `fb_system_icon` VALUES (1388, 'fas fa-chevron-down', 169);
INSERT INTO `fb_system_icon` VALUES (1389, 'fas fa-chevron-left', 170);
INSERT INTO `fb_system_icon` VALUES (1390, 'fas fa-chevron-right', 171);
INSERT INTO `fb_system_icon` VALUES (1391, 'fas fa-chevron-up', 172);
INSERT INTO `fb_system_icon` VALUES (1392, 'fas fa-child', 173);
INSERT INTO `fb_system_icon` VALUES (1393, 'fab fa-chrome', 174);
INSERT INTO `fb_system_icon` VALUES (1394, 'far fa-circle', 175);
INSERT INTO `fb_system_icon` VALUES (1395, 'fas fa-circle-notch', 176);
INSERT INTO `fb_system_icon` VALUES (1396, 'far fa-clipboard', 177);
INSERT INTO `fb_system_icon` VALUES (1397, 'fas fa-clipboard-check', 178);
INSERT INTO `fb_system_icon` VALUES (1398, 'fas fa-clipboard-list', 179);
INSERT INTO `fb_system_icon` VALUES (1399, 'far fa-clock', 180);
INSERT INTO `fb_system_icon` VALUES (1400, 'fas fa-clone', 181);
INSERT INTO `fb_system_icon` VALUES (1401, 'far fa-closed-captioning', 182);
INSERT INTO `fb_system_icon` VALUES (1402, 'fas fa-cloud', 183);
INSERT INTO `fb_system_icon` VALUES (1403, 'fas fa-cloud-download-alt', 184);
INSERT INTO `fb_system_icon` VALUES (1404, 'fas fa-cloud-upload-alt', 185);
INSERT INTO `fb_system_icon` VALUES (1405, 'fab fa-cloudscale', 186);
INSERT INTO `fb_system_icon` VALUES (1406, 'fab fa-cloudsmith', 187);
INSERT INTO `fb_system_icon` VALUES (1407, 'fab fa-cloudversify', 188);
INSERT INTO `fb_system_icon` VALUES (1408, 'fas fa-code', 189);
INSERT INTO `fb_system_icon` VALUES (1409, 'fas fa-code-branch', 190);
INSERT INTO `fb_system_icon` VALUES (1410, 'fab fa-codepen', 191);
INSERT INTO `fb_system_icon` VALUES (1411, 'fab fa-codiepie', 192);
INSERT INTO `fb_system_icon` VALUES (1412, 'fas fa-coffee', 193);
INSERT INTO `fb_system_icon` VALUES (1413, 'fas fa-cog', 194);
INSERT INTO `fb_system_icon` VALUES (1414, 'fas fa-cogs', 195);
INSERT INTO `fb_system_icon` VALUES (1415, 'fas fa-columns', 196);
INSERT INTO `fb_system_icon` VALUES (1416, 'far fa-comment', 197);
INSERT INTO `fb_system_icon` VALUES (1417, 'far fa-comment-alt', 198);
INSERT INTO `fb_system_icon` VALUES (1418, 'far fa-comments', 199);
INSERT INTO `fb_system_icon` VALUES (1419, 'fas fa-compass', 200);
INSERT INTO `fb_system_icon` VALUES (1420, 'fas fa-compress', 201);
INSERT INTO `fb_system_icon` VALUES (1421, 'fab fa-connectdevelop', 202);
INSERT INTO `fb_system_icon` VALUES (1422, 'fab fa-contao', 203);
INSERT INTO `fb_system_icon` VALUES (1423, 'far fa-copy', 204);
INSERT INTO `fb_system_icon` VALUES (1424, 'fas fa-copyright', 205);
INSERT INTO `fb_system_icon` VALUES (1425, 'fab fa-cpanel', 206);
INSERT INTO `fb_system_icon` VALUES (1426, 'fab fa-creative-commons', 207);
INSERT INTO `fb_system_icon` VALUES (1427, 'fas fa-credit-card', 208);
INSERT INTO `fb_system_icon` VALUES (1428, 'fas fa-crop', 209);
INSERT INTO `fb_system_icon` VALUES (1429, 'fas fa-crosshairs', 210);
INSERT INTO `fb_system_icon` VALUES (1430, 'fab fa-css3', 211);
INSERT INTO `fb_system_icon` VALUES (1431, 'fab fa-css3-alt', 212);
INSERT INTO `fb_system_icon` VALUES (1432, 'fas fa-cube', 213);
INSERT INTO `fb_system_icon` VALUES (1433, 'fas fa-cubes', 214);
INSERT INTO `fb_system_icon` VALUES (1434, 'fas fa-cut', 215);
INSERT INTO `fb_system_icon` VALUES (1435, 'fab fa-cuttlefish', 216);
INSERT INTO `fb_system_icon` VALUES (1436, 'fab fa-d-and-d', 217);
INSERT INTO `fb_system_icon` VALUES (1437, 'fab fa-dashcube', 218);
INSERT INTO `fb_system_icon` VALUES (1438, 'fas fa-database', 219);
INSERT INTO `fb_system_icon` VALUES (1439, 'fas fa-deaf', 220);
INSERT INTO `fb_system_icon` VALUES (1440, 'fab fa-delicious', 221);
INSERT INTO `fb_system_icon` VALUES (1441, 'fab fa-deploydog', 222);
INSERT INTO `fb_system_icon` VALUES (1442, 'fab fa-deskpro', 223);
INSERT INTO `fb_system_icon` VALUES (1443, 'fas fa-desktop', 224);
INSERT INTO `fb_system_icon` VALUES (1444, 'fab fa-deviantart', 225);
INSERT INTO `fb_system_icon` VALUES (1445, 'fab fa-digg', 226);
INSERT INTO `fb_system_icon` VALUES (1446, 'fab fa-digital-ocean', 227);
INSERT INTO `fb_system_icon` VALUES (1447, 'fab fa-discord', 228);
INSERT INTO `fb_system_icon` VALUES (1448, 'fab fa-discourse', 229);
INSERT INTO `fb_system_icon` VALUES (1449, 'fas fa-dna', 230);
INSERT INTO `fb_system_icon` VALUES (1450, 'fab fa-dochub', 231);
INSERT INTO `fb_system_icon` VALUES (1451, 'fab fa-docker', 232);
INSERT INTO `fb_system_icon` VALUES (1452, 'fas fa-dollar-sign', 233);
INSERT INTO `fb_system_icon` VALUES (1453, 'fas fa-dolly', 234);
INSERT INTO `fb_system_icon` VALUES (1454, 'fas fa-dolly-flatbed', 235);
INSERT INTO `fb_system_icon` VALUES (1455, 'far fa-dot-circle', 236);
INSERT INTO `fb_system_icon` VALUES (1456, 'fas fa-download', 237);
INSERT INTO `fb_system_icon` VALUES (1457, 'fab fa-draft2digital', 238);
INSERT INTO `fb_system_icon` VALUES (1458, 'fab fa-dribbble', 239);
INSERT INTO `fb_system_icon` VALUES (1459, 'fab fa-dribbble-square', 240);
INSERT INTO `fb_system_icon` VALUES (1460, 'fab fa-dropbox', 241);
INSERT INTO `fb_system_icon` VALUES (1461, 'fab fa-drupal', 242);
INSERT INTO `fb_system_icon` VALUES (1462, 'fab fa-dyalog', 243);
INSERT INTO `fb_system_icon` VALUES (1463, 'fab fa-earlybirds', 244);
INSERT INTO `fb_system_icon` VALUES (1464, 'fab fa-edge', 245);
INSERT INTO `fb_system_icon` VALUES (1465, 'far fa-edit', 246);
INSERT INTO `fb_system_icon` VALUES (1466, 'fas fa-eject', 247);
INSERT INTO `fb_system_icon` VALUES (1467, 'fab fa-elementor', 248);
INSERT INTO `fb_system_icon` VALUES (1468, 'fas fa-ellipsis-h', 249);
INSERT INTO `fb_system_icon` VALUES (1469, 'fas fa-ellipsis-v', 250);
INSERT INTO `fb_system_icon` VALUES (1470, 'fab fa-ember', 251);
INSERT INTO `fb_system_icon` VALUES (1471, 'fab fa-empire', 252);
INSERT INTO `fb_system_icon` VALUES (1472, 'far fa-envelope', 253);
INSERT INTO `fb_system_icon` VALUES (1473, 'far fa-envelope-open', 254);
INSERT INTO `fb_system_icon` VALUES (1474, 'fas fa-envelope-square', 255);
INSERT INTO `fb_system_icon` VALUES (1475, 'fab fa-envira', 256);
INSERT INTO `fb_system_icon` VALUES (1476, 'fas fa-eraser', 257);
INSERT INTO `fb_system_icon` VALUES (1477, 'fab fa-erlang', 258);
INSERT INTO `fb_system_icon` VALUES (1478, 'fab fa-ethereum', 259);
INSERT INTO `fb_system_icon` VALUES (1479, 'fab fa-etsy', 260);
INSERT INTO `fb_system_icon` VALUES (1480, 'fas fa-euro-sign', 261);
INSERT INTO `fb_system_icon` VALUES (1481, 'fas fa-exchange-alt', 262);
INSERT INTO `fb_system_icon` VALUES (1482, 'fas fa-exclamation', 263);
INSERT INTO `fb_system_icon` VALUES (1483, 'fas fa-exclamation-circle', 264);
INSERT INTO `fb_system_icon` VALUES (1484, 'fas fa-exclamation-triangle', 265);
INSERT INTO `fb_system_icon` VALUES (1485, 'fas fa-expand', 266);
INSERT INTO `fb_system_icon` VALUES (1486, 'fas fa-expand-arrows-alt', 267);
INSERT INTO `fb_system_icon` VALUES (1487, 'fab fa-expeditedssl', 268);
INSERT INTO `fb_system_icon` VALUES (1488, 'fas fa-external-link-alt', 269);
INSERT INTO `fb_system_icon` VALUES (1489, 'fas fa-external-link-square-alt', 270);
INSERT INTO `fb_system_icon` VALUES (1490, 'fas fa-eye', 271);
INSERT INTO `fb_system_icon` VALUES (1491, 'fas fa-eye-dropper', 272);
INSERT INTO `fb_system_icon` VALUES (1492, 'fas fa-eye-slash', 273);
INSERT INTO `fb_system_icon` VALUES (1493, 'fab fa-facebook', 274);
INSERT INTO `fb_system_icon` VALUES (1494, 'fab fa-facebook-f', 275);
INSERT INTO `fb_system_icon` VALUES (1495, 'fab fa-facebook-messenger', 276);
INSERT INTO `fb_system_icon` VALUES (1496, 'fab fa-facebook-square', 277);
INSERT INTO `fb_system_icon` VALUES (1497, 'fas fa-fast-backward', 278);
INSERT INTO `fb_system_icon` VALUES (1498, 'fas fa-fast-forward', 279);
INSERT INTO `fb_system_icon` VALUES (1499, 'fas fa-fax', 280);
INSERT INTO `fb_system_icon` VALUES (1500, 'fas fa-female', 281);
INSERT INTO `fb_system_icon` VALUES (1501, 'fas fa-fighter-jet', 282);
INSERT INTO `fb_system_icon` VALUES (1502, 'far fa-file', 283);
INSERT INTO `fb_system_icon` VALUES (1503, 'far fa-file-alt', 284);
INSERT INTO `fb_system_icon` VALUES (1504, 'far fa-file-archive', 285);
INSERT INTO `fb_system_icon` VALUES (1505, 'far fa-file-audio', 286);
INSERT INTO `fb_system_icon` VALUES (1506, 'far fa-file-code', 287);
INSERT INTO `fb_system_icon` VALUES (1507, 'far fa-file-excel', 288);
INSERT INTO `fb_system_icon` VALUES (1508, 'far fa-file-image', 289);
INSERT INTO `fb_system_icon` VALUES (1509, 'far fa-file-pdf', 290);
INSERT INTO `fb_system_icon` VALUES (1510, 'far fa-file-powerpoint', 291);
INSERT INTO `fb_system_icon` VALUES (1511, 'far fa-file-video', 292);
INSERT INTO `fb_system_icon` VALUES (1512, 'far fa-file-word', 293);
INSERT INTO `fb_system_icon` VALUES (1513, 'fas fa-film', 294);
INSERT INTO `fb_system_icon` VALUES (1514, 'fas fa-filter', 295);
INSERT INTO `fb_system_icon` VALUES (1515, 'fas fa-fire', 296);
INSERT INTO `fb_system_icon` VALUES (1516, 'fas fa-fire-extinguisher', 297);
INSERT INTO `fb_system_icon` VALUES (1517, 'fab fa-firefox', 298);
INSERT INTO `fb_system_icon` VALUES (1518, 'fas fa-first-aid', 299);
INSERT INTO `fb_system_icon` VALUES (1519, 'fab fa-first-order', 300);
INSERT INTO `fb_system_icon` VALUES (1520, 'fab fa-firstdraft', 301);
INSERT INTO `fb_system_icon` VALUES (1521, 'far fa-flag', 302);
INSERT INTO `fb_system_icon` VALUES (1522, 'fas fa-flag-checkered', 303);
INSERT INTO `fb_system_icon` VALUES (1523, 'fas fa-flask', 304);
INSERT INTO `fb_system_icon` VALUES (1524, 'fab fa-flickr', 305);
INSERT INTO `fb_system_icon` VALUES (1525, 'fab fa-flipboard', 306);
INSERT INTO `fb_system_icon` VALUES (1526, 'fab fa-fly', 307);
INSERT INTO `fb_system_icon` VALUES (1527, 'far fa-folder', 308);
INSERT INTO `fb_system_icon` VALUES (1528, 'far fa-folder-open', 309);
INSERT INTO `fb_system_icon` VALUES (1529, 'fas fa-font', 310);
INSERT INTO `fb_system_icon` VALUES (1530, 'fab fa-font-awesome', 311);
INSERT INTO `fb_system_icon` VALUES (1531, 'fab fa-font-awesome-alt', 312);
INSERT INTO `fb_system_icon` VALUES (1532, 'fab fa-font-awesome-flag', 313);
INSERT INTO `fb_system_icon` VALUES (1533, 'fab fa-fonticons', 314);
INSERT INTO `fb_system_icon` VALUES (1534, 'fab fa-fonticons-fi', 315);
INSERT INTO `fb_system_icon` VALUES (1535, 'fas fa-football-ball', 316);
INSERT INTO `fb_system_icon` VALUES (1536, 'fab fa-fort-awesome', 317);
INSERT INTO `fb_system_icon` VALUES (1537, 'fab fa-fort-awesome-alt', 318);
INSERT INTO `fb_system_icon` VALUES (1538, 'fab fa-forumbee', 319);
INSERT INTO `fb_system_icon` VALUES (1539, 'fas fa-forward', 320);
INSERT INTO `fb_system_icon` VALUES (1540, 'fab fa-foursquare', 321);
INSERT INTO `fb_system_icon` VALUES (1541, 'fab fa-free-code-camp', 322);
INSERT INTO `fb_system_icon` VALUES (1542, 'fab fa-freebsd', 323);
INSERT INTO `fb_system_icon` VALUES (1543, 'far fa-frown', 324);
INSERT INTO `fb_system_icon` VALUES (1544, 'far fa-futbol', 325);
INSERT INTO `fb_system_icon` VALUES (1545, 'fas fa-gamepad', 326);
INSERT INTO `fb_system_icon` VALUES (1546, 'fas fa-gavel', 327);
INSERT INTO `fb_system_icon` VALUES (1547, 'far fa-gem', 328);
INSERT INTO `fb_system_icon` VALUES (1548, 'fas fa-genderless', 329);
INSERT INTO `fb_system_icon` VALUES (1549, 'fab fa-get-pocket', 330);
INSERT INTO `fb_system_icon` VALUES (1550, 'fab fa-gg', 331);
INSERT INTO `fb_system_icon` VALUES (1551, 'fab fa-gg-circle', 332);
INSERT INTO `fb_system_icon` VALUES (1552, 'fas fa-gift', 333);
INSERT INTO `fb_system_icon` VALUES (1553, 'fab fa-git', 334);
INSERT INTO `fb_system_icon` VALUES (1554, 'fab fa-git-square', 335);
INSERT INTO `fb_system_icon` VALUES (1555, 'fab fa-github', 336);
INSERT INTO `fb_system_icon` VALUES (1556, 'fab fa-github-alt', 337);
INSERT INTO `fb_system_icon` VALUES (1557, 'fab fa-github-square', 338);
INSERT INTO `fb_system_icon` VALUES (1558, 'fab fa-gitkraken', 339);
INSERT INTO `fb_system_icon` VALUES (1559, 'fab fa-gitlab', 340);
INSERT INTO `fb_system_icon` VALUES (1560, 'fab fa-gitter', 341);
INSERT INTO `fb_system_icon` VALUES (1561, 'fas fa-glass-martini', 342);
INSERT INTO `fb_system_icon` VALUES (1562, 'fab fa-glide', 343);
INSERT INTO `fb_system_icon` VALUES (1563, 'fab fa-glide-g', 344);
INSERT INTO `fb_system_icon` VALUES (1564, 'fas fa-globe', 345);
INSERT INTO `fb_system_icon` VALUES (1565, 'fab fa-;fore', 346);
INSERT INTO `fb_system_icon` VALUES (1566, 'fas fa-;lf-ball', 347);
INSERT INTO `fb_system_icon` VALUES (1567, 'fab fa-;odreads', 348);
INSERT INTO `fb_system_icon` VALUES (1568, 'fab fa-;odreads-g', 349);
INSERT INTO `fb_system_icon` VALUES (1569, 'fab fa-;ogle', 350);
INSERT INTO `fb_system_icon` VALUES (1570, 'fab fa-;ogle-drive', 351);
INSERT INTO `fb_system_icon` VALUES (1571, 'fab fa-;ogle-play', 352);
INSERT INTO `fb_system_icon` VALUES (1572, 'fab fa-;ogle-plus', 353);
INSERT INTO `fb_system_icon` VALUES (1573, 'fab fa-;ogle-plus-g', 354);
INSERT INTO `fb_system_icon` VALUES (1574, 'fab fa-;ogle-plus-square', 355);
INSERT INTO `fb_system_icon` VALUES (1575, 'fab fa-;ogle-wallet', 356);
INSERT INTO `fb_system_icon` VALUES (1576, 'fas fa-graduation-cap', 357);
INSERT INTO `fb_system_icon` VALUES (1577, 'fab fa-gratipay', 358);
INSERT INTO `fb_system_icon` VALUES (1578, 'fab fa-grav', 359);
INSERT INTO `fb_system_icon` VALUES (1579, 'fab fa-gripfire', 360);
INSERT INTO `fb_system_icon` VALUES (1580, 'fab fa-grunt', 361);
INSERT INTO `fb_system_icon` VALUES (1581, 'fab fa-gulp', 362);
INSERT INTO `fb_system_icon` VALUES (1582, 'fas fa-h-square', 363);
INSERT INTO `fb_system_icon` VALUES (1583, 'fab fa-hacker-news', 364);
INSERT INTO `fb_system_icon` VALUES (1584, 'fab fa-hacker-news-square', 365);
INSERT INTO `fb_system_icon` VALUES (1585, 'far fa-hand-lizard', 366);
INSERT INTO `fb_system_icon` VALUES (1586, 'far fa-hand-paper', 367);
INSERT INTO `fb_system_icon` VALUES (1587, 'far fa-hand-peace', 368);
INSERT INTO `fb_system_icon` VALUES (1588, 'far fa-hand-point-down', 369);
INSERT INTO `fb_system_icon` VALUES (1589, 'far fa-hand-point-left', 370);
INSERT INTO `fb_system_icon` VALUES (1590, 'far fa-hand-point-right', 371);
INSERT INTO `fb_system_icon` VALUES (1591, 'far fa-hand-point-up', 372);
INSERT INTO `fb_system_icon` VALUES (1592, 'far fa-hand-pointer', 373);
INSERT INTO `fb_system_icon` VALUES (1593, 'far fa-hand-rock', 374);
INSERT INTO `fb_system_icon` VALUES (1594, 'far fa-hand-scissors', 375);
INSERT INTO `fb_system_icon` VALUES (1595, 'far fa-hand-spock', 376);
INSERT INTO `fb_system_icon` VALUES (1596, 'far fa-handshake', 377);
INSERT INTO `fb_system_icon` VALUES (1597, 'fas fa-hashtag', 378);
INSERT INTO `fb_system_icon` VALUES (1598, 'far fa-hdd', 379);
INSERT INTO `fb_system_icon` VALUES (1599, 'fas fa-heading', 380);
INSERT INTO `fb_system_icon` VALUES (1600, 'fas fa-headphones', 381);
INSERT INTO `fb_system_icon` VALUES (1601, 'far fa-heart', 382);
INSERT INTO `fb_system_icon` VALUES (1602, 'fas fa-heartbeat', 383);
INSERT INTO `fb_system_icon` VALUES (1603, 'fab fa-hips', 384);
INSERT INTO `fb_system_icon` VALUES (1604, 'fab fa-hire-a-helper', 385);
INSERT INTO `fb_system_icon` VALUES (1605, 'fas fa-history', 386);
INSERT INTO `fb_system_icon` VALUES (1606, 'fas fa-hockey-puck', 387);
INSERT INTO `fb_system_icon` VALUES (1607, 'fas fa-home', 388);
INSERT INTO `fb_system_icon` VALUES (1608, 'fab fa-hooli', 389);
INSERT INTO `fb_system_icon` VALUES (1609, 'far fa-hospital', 390);
INSERT INTO `fb_system_icon` VALUES (1610, 'fas fa-hospital-symbol', 391);
INSERT INTO `fb_system_icon` VALUES (1611, 'fab fa-hotjar', 392);
INSERT INTO `fb_system_icon` VALUES (1612, 'far fa-hourglass', 393);
INSERT INTO `fb_system_icon` VALUES (1613, 'fas fa-hourglass-end', 394);
INSERT INTO `fb_system_icon` VALUES (1614, 'fas fa-hourglass-half', 395);
INSERT INTO `fb_system_icon` VALUES (1615, 'fas fa-hourglass-start', 396);
INSERT INTO `fb_system_icon` VALUES (1616, 'fab fa-houzz', 397);
INSERT INTO `fb_system_icon` VALUES (1617, 'fab fa-html5', 398);
INSERT INTO `fb_system_icon` VALUES (1618, 'fab fa-hubspot', 399);
INSERT INTO `fb_system_icon` VALUES (1619, 'fas fa-i-cursor', 400);
INSERT INTO `fb_system_icon` VALUES (1620, 'fas fa-id-badge', 401);
INSERT INTO `fb_system_icon` VALUES (1621, 'far fa-id-card', 402);
INSERT INTO `fb_system_icon` VALUES (1622, 'far fa-image', 403);
INSERT INTO `fb_system_icon` VALUES (1623, 'fas fa-images', 404);
INSERT INTO `fb_system_icon` VALUES (1624, 'fab fa-imdb', 405);
INSERT INTO `fb_system_icon` VALUES (1625, 'fas fa-inbox', 406);
INSERT INTO `fb_system_icon` VALUES (1626, 'fas fa-indent', 407);
INSERT INTO `fb_system_icon` VALUES (1627, 'fas fa-industry', 408);
INSERT INTO `fb_system_icon` VALUES (1628, 'fas fa-info', 409);
INSERT INTO `fb_system_icon` VALUES (1629, 'fas fa-info-circle', 410);
INSERT INTO `fb_system_icon` VALUES (1630, 'fab fa-instagram', 411);
INSERT INTO `fb_system_icon` VALUES (1631, 'fab fa-internet-explorer', 412);
INSERT INTO `fb_system_icon` VALUES (1632, 'fab fa-ioxhost', 413);
INSERT INTO `fb_system_icon` VALUES (1633, 'fas fa-italic', 414);
INSERT INTO `fb_system_icon` VALUES (1634, 'fab fa-itunes', 415);
INSERT INTO `fb_system_icon` VALUES (1635, 'fab fa-itunes-note', 416);
INSERT INTO `fb_system_icon` VALUES (1636, 'fab fa-jenkins', 417);
INSERT INTO `fb_system_icon` VALUES (1637, 'fab fa-joget', 418);
INSERT INTO `fb_system_icon` VALUES (1638, 'fab fa-joomla', 419);
INSERT INTO `fb_system_icon` VALUES (1639, 'fab fa-js', 420);
INSERT INTO `fb_system_icon` VALUES (1640, 'fab fa-js-square', 421);
INSERT INTO `fb_system_icon` VALUES (1641, 'fab fa-jsfiddle', 422);
INSERT INTO `fb_system_icon` VALUES (1642, 'fas fa-key', 423);
INSERT INTO `fb_system_icon` VALUES (1643, 'far fa-keyboard', 424);
INSERT INTO `fb_system_icon` VALUES (1644, 'fab fa-keycdn', 425);
INSERT INTO `fb_system_icon` VALUES (1645, 'fab fa-kickstarter', 426);
INSERT INTO `fb_system_icon` VALUES (1646, 'fab fa-kickstarter-k', 427);
INSERT INTO `fb_system_icon` VALUES (1647, 'fab fa-korvue', 428);
INSERT INTO `fb_system_icon` VALUES (1648, 'fas fa-language', 429);
INSERT INTO `fb_system_icon` VALUES (1649, 'fas fa-laptop', 430);
INSERT INTO `fb_system_icon` VALUES (1650, 'fab fa-laravel', 431);
INSERT INTO `fb_system_icon` VALUES (1651, 'fab fa-lastfm', 432);
INSERT INTO `fb_system_icon` VALUES (1652, 'fab fa-lastfm-square', 433);
INSERT INTO `fb_system_icon` VALUES (1653, 'fas fa-leaf', 434);
INSERT INTO `fb_system_icon` VALUES (1654, 'fab fa-leanpub', 435);
INSERT INTO `fb_system_icon` VALUES (1655, 'far fa-lemon', 436);
INSERT INTO `fb_system_icon` VALUES (1656, 'fab fa-less', 437);
INSERT INTO `fb_system_icon` VALUES (1657, 'fas fa-level-down-alt', 438);
INSERT INTO `fb_system_icon` VALUES (1658, 'fas fa-level-up-alt', 439);
INSERT INTO `fb_system_icon` VALUES (1659, 'far fa-life-ring', 440);
INSERT INTO `fb_system_icon` VALUES (1660, 'far fa-lightbulb', 441);
INSERT INTO `fb_system_icon` VALUES (1661, 'fab fa-line', 442);
INSERT INTO `fb_system_icon` VALUES (1662, 'fas fa-link', 443);
INSERT INTO `fb_system_icon` VALUES (1663, 'fab fa-linkedin', 444);
INSERT INTO `fb_system_icon` VALUES (1664, 'fab fa-linkedin-in', 445);
INSERT INTO `fb_system_icon` VALUES (1665, 'fab fa-linode', 446);
INSERT INTO `fb_system_icon` VALUES (1666, 'fab fa-linux', 447);
INSERT INTO `fb_system_icon` VALUES (1667, 'fas fa-lira-sign', 448);
INSERT INTO `fb_system_icon` VALUES (1668, 'fas fa-list', 449);
INSERT INTO `fb_system_icon` VALUES (1669, 'fas fa-list-alt', 450);
INSERT INTO `fb_system_icon` VALUES (1670, 'fas fa-list-ol', 451);
INSERT INTO `fb_system_icon` VALUES (1671, 'fas fa-list-ul', 452);
INSERT INTO `fb_system_icon` VALUES (1672, 'fas fa-location-arrow', 453);
INSERT INTO `fb_system_icon` VALUES (1673, 'fas fa-lock', 454);
INSERT INTO `fb_system_icon` VALUES (1674, 'fas fa-lock-open', 455);
INSERT INTO `fb_system_icon` VALUES (1675, 'fas fa-long-arrow-alt-down', 456);
INSERT INTO `fb_system_icon` VALUES (1676, 'fas fa-long-arrow-alt-left', 457);
INSERT INTO `fb_system_icon` VALUES (1677, 'fas fa-long-arrow-alt-right', 458);
INSERT INTO `fb_system_icon` VALUES (1678, 'fas fa-long-arrow-alt-up', 459);
INSERT INTO `fb_system_icon` VALUES (1679, 'fas fa-low-vision', 460);
INSERT INTO `fb_system_icon` VALUES (1680, 'fab fa-lyft', 461);
INSERT INTO `fb_system_icon` VALUES (1681, 'fab fa-magento', 462);
INSERT INTO `fb_system_icon` VALUES (1682, 'fas fa-magic', 463);
INSERT INTO `fb_system_icon` VALUES (1683, 'fas fa-magnet', 464);
INSERT INTO `fb_system_icon` VALUES (1684, 'fas fa-male', 465);
INSERT INTO `fb_system_icon` VALUES (1685, 'far fa-map', 466);
INSERT INTO `fb_system_icon` VALUES (1686, 'fas fa-map-marker', 467);
INSERT INTO `fb_system_icon` VALUES (1687, 'fas fa-map-marker-alt', 468);
INSERT INTO `fb_system_icon` VALUES (1688, 'fas fa-map-pin', 469);
INSERT INTO `fb_system_icon` VALUES (1689, 'fas fa-map-signs', 470);
INSERT INTO `fb_system_icon` VALUES (1690, 'fas fa-mars', 471);
INSERT INTO `fb_system_icon` VALUES (1691, 'fas fa-mars-double', 472);
INSERT INTO `fb_system_icon` VALUES (1692, 'fas fa-mars-stroke', 473);
INSERT INTO `fb_system_icon` VALUES (1693, 'fas fa-mars-stroke-h', 474);
INSERT INTO `fb_system_icon` VALUES (1694, 'fas fa-mars-stroke-v', 475);
INSERT INTO `fb_system_icon` VALUES (1695, 'fab fa-maxcdn', 476);
INSERT INTO `fb_system_icon` VALUES (1696, 'fab fa-medapps', 477);
INSERT INTO `fb_system_icon` VALUES (1697, 'fab fa-medium', 478);
INSERT INTO `fb_system_icon` VALUES (1698, 'fab fa-medium-m', 479);
INSERT INTO `fb_system_icon` VALUES (1699, 'fas fa-medkit', 480);
INSERT INTO `fb_system_icon` VALUES (1700, 'fab fa-medrt', 481);
INSERT INTO `fb_system_icon` VALUES (1701, 'fab fa-meetup', 482);
INSERT INTO `fb_system_icon` VALUES (1702, 'far fa-meh', 483);
INSERT INTO `fb_system_icon` VALUES (1703, 'fas fa-mercury', 484);
INSERT INTO `fb_system_icon` VALUES (1704, 'fas fa-microchip', 485);
INSERT INTO `fb_system_icon` VALUES (1705, 'fas fa-microphone', 486);
INSERT INTO `fb_system_icon` VALUES (1706, 'fas fa-microphone-slash', 487);
INSERT INTO `fb_system_icon` VALUES (1707, 'fab fa-microsoft', 488);
INSERT INTO `fb_system_icon` VALUES (1708, 'fas fa-minus', 489);
INSERT INTO `fb_system_icon` VALUES (1709, 'fas fa-minus-circle', 490);
INSERT INTO `fb_system_icon` VALUES (1710, 'far fa-minus-square', 491);
INSERT INTO `fb_system_icon` VALUES (1711, 'fab fa-mix', 492);
INSERT INTO `fb_system_icon` VALUES (1712, 'fab fa-mixcloud', 493);
INSERT INTO `fb_system_icon` VALUES (1713, 'fab fa-mizuni', 494);
INSERT INTO `fb_system_icon` VALUES (1714, 'fas fa-mobile', 495);
INSERT INTO `fb_system_icon` VALUES (1715, 'fas fa-mobile-alt', 496);
INSERT INTO `fb_system_icon` VALUES (1716, 'fab fa-modx', 497);
INSERT INTO `fb_system_icon` VALUES (1717, 'fab fa-monero', 498);
INSERT INTO `fb_system_icon` VALUES (1718, 'far fa-money-bill-alt', 499);
INSERT INTO `fb_system_icon` VALUES (1719, 'far fa-moon', 500);
INSERT INTO `fb_system_icon` VALUES (1720, 'fas fa-motorcycle', 501);
INSERT INTO `fb_system_icon` VALUES (1721, 'fas fa-mouse-pointer', 502);
INSERT INTO `fb_system_icon` VALUES (1722, 'fas fa-music', 503);
INSERT INTO `fb_system_icon` VALUES (1723, 'fab fa-napster', 504);
INSERT INTO `fb_system_icon` VALUES (1724, 'fas fa-neuter', 505);
INSERT INTO `fb_system_icon` VALUES (1725, 'far fa-newspaper', 506);
INSERT INTO `fb_system_icon` VALUES (1726, 'fab fa-nintendo-switch', 507);
INSERT INTO `fb_system_icon` VALUES (1727, 'fab fa-node', 508);
INSERT INTO `fb_system_icon` VALUES (1728, 'fab fa-node-js', 509);
INSERT INTO `fb_system_icon` VALUES (1729, 'fab fa-npm', 510);
INSERT INTO `fb_system_icon` VALUES (1730, 'fab fa-ns8', 511);
INSERT INTO `fb_system_icon` VALUES (1731, 'fab fa-nutritionix', 512);
INSERT INTO `fb_system_icon` VALUES (1732, 'fas fa-object-group', 513);
INSERT INTO `fb_system_icon` VALUES (1733, 'fas fa-object-ungroup', 514);
INSERT INTO `fb_system_icon` VALUES (1734, 'fab fa-odnoklassniki', 515);
INSERT INTO `fb_system_icon` VALUES (1735, 'fab fa-odnoklassniki-square', 516);
INSERT INTO `fb_system_icon` VALUES (1736, 'fab fa-opencart', 517);
INSERT INTO `fb_system_icon` VALUES (1737, 'fab fa-openid', 518);
INSERT INTO `fb_system_icon` VALUES (1738, 'fab fa-opera', 519);
INSERT INTO `fb_system_icon` VALUES (1739, 'fab fa-optin-monster', 520);
INSERT INTO `fb_system_icon` VALUES (1740, 'fab fa-osi', 521);
INSERT INTO `fb_system_icon` VALUES (1741, 'fas fa-outdent', 522);
INSERT INTO `fb_system_icon` VALUES (1742, 'fab fa-page4', 523);
INSERT INTO `fb_system_icon` VALUES (1743, 'fab fa-pagelines', 524);
INSERT INTO `fb_system_icon` VALUES (1744, 'fas fa-paint-brush', 525);
INSERT INTO `fb_system_icon` VALUES (1745, 'fab fa-palfed', 526);
INSERT INTO `fb_system_icon` VALUES (1746, 'fas fa-pallet', 527);
INSERT INTO `fb_system_icon` VALUES (1747, 'far fa-paper-plane', 528);
INSERT INTO `fb_system_icon` VALUES (1748, 'fas fa-paperclip', 529);
INSERT INTO `fb_system_icon` VALUES (1749, 'fas fa-paragraph', 530);
INSERT INTO `fb_system_icon` VALUES (1750, 'fas fa-paste', 531);
INSERT INTO `fb_system_icon` VALUES (1751, 'fab fa-patreon', 532);
INSERT INTO `fb_system_icon` VALUES (1752, 'fas fa-pause', 533);
INSERT INTO `fb_system_icon` VALUES (1753, 'far fa-pause-circle', 534);
INSERT INTO `fb_system_icon` VALUES (1754, 'fas fa-paw', 535);
INSERT INTO `fb_system_icon` VALUES (1755, 'fab fa-paypal', 536);
INSERT INTO `fb_system_icon` VALUES (1756, 'fas fa-pen-square', 537);
INSERT INTO `fb_system_icon` VALUES (1757, 'fas fa-pencil-alt', 538);
INSERT INTO `fb_system_icon` VALUES (1758, 'fas fa-percent', 539);
INSERT INTO `fb_system_icon` VALUES (1759, 'fab fa-periscope', 540);
INSERT INTO `fb_system_icon` VALUES (1760, 'fab fa-phabricator', 541);
INSERT INTO `fb_system_icon` VALUES (1761, 'fab fa-phoenix-framework', 542);
INSERT INTO `fb_system_icon` VALUES (1762, 'fas fa-phone', 543);
INSERT INTO `fb_system_icon` VALUES (1763, 'fas fa-phone-square', 544);
INSERT INTO `fb_system_icon` VALUES (1764, 'fas fa-phone-volume', 545);
INSERT INTO `fb_system_icon` VALUES (1765, 'fab fa-php', 546);
INSERT INTO `fb_system_icon` VALUES (1766, 'fab fa-pied-piper', 547);
INSERT INTO `fb_system_icon` VALUES (1767, 'fab fa-pied-piper-alt', 548);
INSERT INTO `fb_system_icon` VALUES (1768, 'fab fa-pied-piper-pp', 549);
INSERT INTO `fb_system_icon` VALUES (1769, 'fas fa-pills', 550);
INSERT INTO `fb_system_icon` VALUES (1770, 'fab fa-pinterest', 551);
INSERT INTO `fb_system_icon` VALUES (1771, 'fab fa-pinterest-p', 552);
INSERT INTO `fb_system_icon` VALUES (1772, 'fab fa-pinterest-square', 553);
INSERT INTO `fb_system_icon` VALUES (1773, 'fas fa-plane', 554);
INSERT INTO `fb_system_icon` VALUES (1774, 'fas fa-play', 555);
INSERT INTO `fb_system_icon` VALUES (1775, 'far fa-play-circle', 556);
INSERT INTO `fb_system_icon` VALUES (1776, 'fab fa-playstation', 557);
INSERT INTO `fb_system_icon` VALUES (1777, 'fas fa-plug', 558);
INSERT INTO `fb_system_icon` VALUES (1778, 'fas fa-plus', 559);
INSERT INTO `fb_system_icon` VALUES (1779, 'fas fa-plus-circle', 560);
INSERT INTO `fb_system_icon` VALUES (1780, 'far fa-plus-square', 561);
INSERT INTO `fb_system_icon` VALUES (1781, 'fas fa-podcast', 562);
INSERT INTO `fb_system_icon` VALUES (1782, 'fas fa-pound-sign', 563);
INSERT INTO `fb_system_icon` VALUES (1783, 'fas fa-power-off', 564);
INSERT INTO `fb_system_icon` VALUES (1784, 'fas fa-print', 565);
INSERT INTO `fb_system_icon` VALUES (1785, 'fab fa-product-hunt', 566);
INSERT INTO `fb_system_icon` VALUES (1786, 'fab fa-pushed', 567);
INSERT INTO `fb_system_icon` VALUES (1787, 'fas fa-puzzle-piece', 568);
INSERT INTO `fb_system_icon` VALUES (1788, 'fab fa-python', 569);
INSERT INTO `fb_system_icon` VALUES (1789, 'fab fa-qq', 570);
INSERT INTO `fb_system_icon` VALUES (1790, 'fas fa-qrcode', 571);
INSERT INTO `fb_system_icon` VALUES (1791, 'fas fa-question', 572);
INSERT INTO `fb_system_icon` VALUES (1792, 'far fa-question-circle', 573);
INSERT INTO `fb_system_icon` VALUES (1793, 'fas fa-quidditch', 574);
INSERT INTO `fb_system_icon` VALUES (1794, 'fab fa-quinscape', 575);
INSERT INTO `fb_system_icon` VALUES (1795, 'fab fa-quora', 576);
INSERT INTO `fb_system_icon` VALUES (1796, 'fas fa-quote-left', 577);
INSERT INTO `fb_system_icon` VALUES (1797, 'fas fa-quote-right', 578);
INSERT INTO `fb_system_icon` VALUES (1798, 'fas fa-random', 579);
INSERT INTO `fb_system_icon` VALUES (1799, 'fab fa-ravelry', 580);
INSERT INTO `fb_system_icon` VALUES (1800, 'fab fa-react', 581);
INSERT INTO `fb_system_icon` VALUES (1801, 'fab fa-rebel', 582);
INSERT INTO `fb_system_icon` VALUES (1802, 'fas fa-recycle', 583);
INSERT INTO `fb_system_icon` VALUES (1803, 'fab fa-red-river', 584);
INSERT INTO `fb_system_icon` VALUES (1804, 'fab fa-reddit', 585);
INSERT INTO `fb_system_icon` VALUES (1805, 'fab fa-reddit-alien', 586);
INSERT INTO `fb_system_icon` VALUES (1806, 'fab fa-reddit-square', 587);
INSERT INTO `fb_system_icon` VALUES (1807, 'fas fa-redo', 588);
INSERT INTO `fb_system_icon` VALUES (1808, 'fas fa-redo-alt', 589);
INSERT INTO `fb_system_icon` VALUES (1809, 'fas fa-registered', 590);
INSERT INTO `fb_system_icon` VALUES (1810, 'fab fa-rendact', 591);
INSERT INTO `fb_system_icon` VALUES (1811, 'fab fa-renren', 592);
INSERT INTO `fb_system_icon` VALUES (1812, 'fas fa-reply', 593);
INSERT INTO `fb_system_icon` VALUES (1813, 'fas fa-reply-all', 594);
INSERT INTO `fb_system_icon` VALUES (1814, 'fab fa-replyd', 595);
INSERT INTO `fb_system_icon` VALUES (1815, 'fab fa-resolving', 596);
INSERT INTO `fb_system_icon` VALUES (1816, 'fas fa-retweet', 597);
INSERT INTO `fb_system_icon` VALUES (1817, 'fas fa-road', 598);
INSERT INTO `fb_system_icon` VALUES (1818, 'fas fa-rocket', 599);
INSERT INTO `fb_system_icon` VALUES (1819, 'fab fa-rocketchat', 600);
INSERT INTO `fb_system_icon` VALUES (1820, 'fab fa-rockrms', 601);
INSERT INTO `fb_system_icon` VALUES (1821, 'fas fa-rss', 602);
INSERT INTO `fb_system_icon` VALUES (1822, 'fas fa-rss-square', 603);
INSERT INTO `fb_system_icon` VALUES (1823, 'fas fa-ruble-sign', 604);
INSERT INTO `fb_system_icon` VALUES (1824, 'fas fa-rupee-sign', 605);
INSERT INTO `fb_system_icon` VALUES (1825, 'fab fa-safari', 606);
INSERT INTO `fb_system_icon` VALUES (1826, 'fab fa-sass', 607);
INSERT INTO `fb_system_icon` VALUES (1827, 'far fa-save', 608);
INSERT INTO `fb_system_icon` VALUES (1828, 'fab fa-schlix', 609);
INSERT INTO `fb_system_icon` VALUES (1829, 'fab fa-scribd', 610);
INSERT INTO `fb_system_icon` VALUES (1830, 'fas fa-search', 611);
INSERT INTO `fb_system_icon` VALUES (1831, 'fas fa-search-minus', 612);
INSERT INTO `fb_system_icon` VALUES (1832, 'fas fa-search-plus', 613);
INSERT INTO `fb_system_icon` VALUES (1833, 'fab fa-searchengin', 614);
INSERT INTO `fb_system_icon` VALUES (1834, 'fab fa-sellcast', 615);
INSERT INTO `fb_system_icon` VALUES (1835, 'fab fa-sellsy', 616);
INSERT INTO `fb_system_icon` VALUES (1836, 'fas fa-server', 617);
INSERT INTO `fb_system_icon` VALUES (1837, 'fab fa-servicestack', 618);
INSERT INTO `fb_system_icon` VALUES (1838, 'fas fa-share', 619);
INSERT INTO `fb_system_icon` VALUES (1839, 'fas fa-share-alt', 620);
INSERT INTO `fb_system_icon` VALUES (1840, 'fas fa-share-alt-square', 621);
INSERT INTO `fb_system_icon` VALUES (1841, 'far fa-share-square', 622);
INSERT INTO `fb_system_icon` VALUES (1842, 'fas fa-shekel-sign', 623);
INSERT INTO `fb_system_icon` VALUES (1843, 'fas fa-shield-alt', 624);
INSERT INTO `fb_system_icon` VALUES (1844, 'fas fa-ship', 625);
INSERT INTO `fb_system_icon` VALUES (1845, 'fas fa-shipping-fast', 626);
INSERT INTO `fb_system_icon` VALUES (1846, 'fab fa-shirtsinbulk', 627);
INSERT INTO `fb_system_icon` VALUES (1847, 'fas fa-shopping-bag', 628);
INSERT INTO `fb_system_icon` VALUES (1848, 'fas fa-shopping-basket', 629);
INSERT INTO `fb_system_icon` VALUES (1849, 'fas fa-shopping-cart', 630);
INSERT INTO `fb_system_icon` VALUES (1850, 'fas fa-shower', 631);
INSERT INTO `fb_system_icon` VALUES (1851, 'fas fa-sign-in-alt', 632);
INSERT INTO `fb_system_icon` VALUES (1852, 'fas fa-sign-language', 633);
INSERT INTO `fb_system_icon` VALUES (1853, 'fas fa-sign-out-alt', 634);
INSERT INTO `fb_system_icon` VALUES (1854, 'fas fa-signal', 635);
INSERT INTO `fb_system_icon` VALUES (1855, 'fab fa-simplybuilt', 636);
INSERT INTO `fb_system_icon` VALUES (1856, 'fab fa-sistrix', 637);
INSERT INTO `fb_system_icon` VALUES (1857, 'fas fa-sitemap', 638);
INSERT INTO `fb_system_icon` VALUES (1858, 'fab fa-skyatlas', 639);
INSERT INTO `fb_system_icon` VALUES (1859, 'fab fa-skype', 640);
INSERT INTO `fb_system_icon` VALUES (1860, 'fab fa-slack', 641);
INSERT INTO `fb_system_icon` VALUES (1861, 'fab fa-slack-hash', 642);
INSERT INTO `fb_system_icon` VALUES (1862, 'fas fa-sliders-h', 643);
INSERT INTO `fb_system_icon` VALUES (1863, 'fab fa-slideshare', 644);
INSERT INTO `fb_system_icon` VALUES (1864, 'far fa-smile', 645);
INSERT INTO `fb_system_icon` VALUES (1865, 'fab fa-snapchat', 646);
INSERT INTO `fb_system_icon` VALUES (1866, 'fab fa-snapchat-ghost', 647);
INSERT INTO `fb_system_icon` VALUES (1867, 'fab fa-snapchat-square', 648);
INSERT INTO `fb_system_icon` VALUES (1868, 'far fa-snowflake', 649);
INSERT INTO `fb_system_icon` VALUES (1869, 'fas fa-sort', 650);
INSERT INTO `fb_system_icon` VALUES (1870, 'fas fa-sort-alpha-down', 651);
INSERT INTO `fb_system_icon` VALUES (1871, 'fas fa-sort-alpha-up', 652);
INSERT INTO `fb_system_icon` VALUES (1872, 'fas fa-sort-amount-down', 653);
INSERT INTO `fb_system_icon` VALUES (1873, 'fas fa-sort-amount-up', 654);
INSERT INTO `fb_system_icon` VALUES (1874, 'fas fa-sort-down', 655);
INSERT INTO `fb_system_icon` VALUES (1875, 'fas fa-sort-numeric-down', 656);
INSERT INTO `fb_system_icon` VALUES (1876, 'fas fa-sort-numeric-up', 657);
INSERT INTO `fb_system_icon` VALUES (1877, 'fas fa-sort-up', 658);
INSERT INTO `fb_system_icon` VALUES (1878, 'fab fa-soundcloud', 659);
INSERT INTO `fb_system_icon` VALUES (1879, 'fas fa-space-shuttle', 660);
INSERT INTO `fb_system_icon` VALUES (1880, 'fab fa-speakap', 661);
INSERT INTO `fb_system_icon` VALUES (1881, 'fas fa-spinner', 662);
INSERT INTO `fb_system_icon` VALUES (1882, 'fab fa-spotify', 663);
INSERT INTO `fb_system_icon` VALUES (1883, 'far fa-square', 664);
INSERT INTO `fb_system_icon` VALUES (1884, 'fas fa-square-full', 665);
INSERT INTO `fb_system_icon` VALUES (1885, 'fab fa-stack-exchange', 666);
INSERT INTO `fb_system_icon` VALUES (1886, 'fab fa-stack-overflow', 667);
INSERT INTO `fb_system_icon` VALUES (1887, 'far fa-star', 668);
INSERT INTO `fb_system_icon` VALUES (1888, 'far fa-star-half', 669);
INSERT INTO `fb_system_icon` VALUES (1889, 'fab fa-staylinked', 670);
INSERT INTO `fb_system_icon` VALUES (1890, 'fab fa-steam', 671);
INSERT INTO `fb_system_icon` VALUES (1891, 'fab fa-steam-square', 672);
INSERT INTO `fb_system_icon` VALUES (1892, 'fab fa-steam-symbol', 673);
INSERT INTO `fb_system_icon` VALUES (1893, 'fas fa-step-backward', 674);
INSERT INTO `fb_system_icon` VALUES (1894, 'fas fa-step-forward', 675);
INSERT INTO `fb_system_icon` VALUES (1895, 'fas fa-stethoscope', 676);
INSERT INTO `fb_system_icon` VALUES (1896, 'fab fa-sticker-mule', 677);
INSERT INTO `fb_system_icon` VALUES (1897, 'far fa-sticky-note', 678);
INSERT INTO `fb_system_icon` VALUES (1898, 'fas fa-stop', 679);
INSERT INTO `fb_system_icon` VALUES (1899, 'far fa-stop-circle', 680);
INSERT INTO `fb_system_icon` VALUES (1900, 'fas fa-stopwatch', 681);
INSERT INTO `fb_system_icon` VALUES (1901, 'fab fa-strava', 682);
INSERT INTO `fb_system_icon` VALUES (1902, 'fas fa-street-view', 683);
INSERT INTO `fb_system_icon` VALUES (1903, 'fas fa-strikethrough', 684);
INSERT INTO `fb_system_icon` VALUES (1904, 'fab fa-stripe', 685);
INSERT INTO `fb_system_icon` VALUES (1905, 'fab fa-stripe-s', 686);
INSERT INTO `fb_system_icon` VALUES (1906, 'fab fa-studiovinari', 687);
INSERT INTO `fb_system_icon` VALUES (1907, 'fab fa-stumbleupon', 688);
INSERT INTO `fb_system_icon` VALUES (1908, 'fab fa-stumbleupon-circle', 689);
INSERT INTO `fb_system_icon` VALUES (1909, 'fas fa-subscript', 690);
INSERT INTO `fb_system_icon` VALUES (1910, 'fas fa-subway', 691);
INSERT INTO `fb_system_icon` VALUES (1911, 'fas fa-suitcase', 692);
INSERT INTO `fb_system_icon` VALUES (1912, 'far fa-sun', 693);
INSERT INTO `fb_system_icon` VALUES (1913, 'fab fa-superpowers', 694);
INSERT INTO `fb_system_icon` VALUES (1914, 'fas fa-superscript', 695);
INSERT INTO `fb_system_icon` VALUES (1915, 'fab fa-supple', 696);
INSERT INTO `fb_system_icon` VALUES (1916, 'fas fa-sync', 697);
INSERT INTO `fb_system_icon` VALUES (1917, 'fas fa-sync-alt', 698);
INSERT INTO `fb_system_icon` VALUES (1918, 'fas fa-syringe', 699);
INSERT INTO `fb_system_icon` VALUES (1919, 'fas fa-table', 700);
INSERT INTO `fb_system_icon` VALUES (1920, 'fas fa-table-tennis', 701);
INSERT INTO `fb_system_icon` VALUES (1921, 'fas fa-tablet', 702);
INSERT INTO `fb_system_icon` VALUES (1922, 'fas fa-tablet-alt', 703);
INSERT INTO `fb_system_icon` VALUES (1923, 'fas fa-tachometer-alt', 704);
INSERT INTO `fb_system_icon` VALUES (1924, 'fas fa-tag', 705);
INSERT INTO `fb_system_icon` VALUES (1925, 'fas fa-tags', 706);
INSERT INTO `fb_system_icon` VALUES (1926, 'fas fa-tasks', 707);
INSERT INTO `fb_system_icon` VALUES (1927, 'fas fa-taxi', 708);
INSERT INTO `fb_system_icon` VALUES (1928, 'fab fa-telegram', 709);
INSERT INTO `fb_system_icon` VALUES (1929, 'fab fa-telegram-plane', 710);
INSERT INTO `fb_system_icon` VALUES (1930, 'fab fa-tencent-weibo', 711);
INSERT INTO `fb_system_icon` VALUES (1931, 'fas fa-terminal', 712);
INSERT INTO `fb_system_icon` VALUES (1932, 'fas fa-text-height', 713);
INSERT INTO `fb_system_icon` VALUES (1933, 'fas fa-text-width', 714);
INSERT INTO `fb_system_icon` VALUES (1934, 'fas fa-th', 715);
INSERT INTO `fb_system_icon` VALUES (1935, 'fas fa-th-large', 716);
INSERT INTO `fb_system_icon` VALUES (1936, 'fas fa-th-list', 717);
INSERT INTO `fb_system_icon` VALUES (1937, 'fab fa-themeisle', 718);
INSERT INTO `fb_system_icon` VALUES (1938, 'fas fa-thermometer', 719);
INSERT INTO `fb_system_icon` VALUES (1939, 'fas fa-thermometer-empty', 720);
INSERT INTO `fb_system_icon` VALUES (1940, 'fas fa-thermometer-full', 721);
INSERT INTO `fb_system_icon` VALUES (1941, 'fas fa-thermometer-half', 722);
INSERT INTO `fb_system_icon` VALUES (1942, 'fas fa-thermometer-quarter', 723);
INSERT INTO `fb_system_icon` VALUES (1943, 'fas fa-thermometer-three-quarters', 724);
INSERT INTO `fb_system_icon` VALUES (1944, 'far fa-thumbs-down', 725);
INSERT INTO `fb_system_icon` VALUES (1945, 'far fa-thumbs-up', 726);
INSERT INTO `fb_system_icon` VALUES (1946, 'fas fa-thumbtack', 727);
INSERT INTO `fb_system_icon` VALUES (1947, 'fas fa-ticket-alt', 728);
INSERT INTO `fb_system_icon` VALUES (1948, 'fas fa-times', 729);
INSERT INTO `fb_system_icon` VALUES (1949, 'far fa-times-circle', 730);
INSERT INTO `fb_system_icon` VALUES (1950, 'fas fa-tint', 731);
INSERT INTO `fb_system_icon` VALUES (1951, 'fas fa-toggle-off', 732);
INSERT INTO `fb_system_icon` VALUES (1952, 'fas fa-toggle-on', 733);
INSERT INTO `fb_system_icon` VALUES (1953, 'fas fa-trademark', 734);
INSERT INTO `fb_system_icon` VALUES (1954, 'fas fa-train', 735);
INSERT INTO `fb_system_icon` VALUES (1955, 'fas fa-transgender', 736);
INSERT INTO `fb_system_icon` VALUES (1956, 'fas fa-transgender-alt', 737);
INSERT INTO `fb_system_icon` VALUES (1957, 'fas fa-trash', 738);
INSERT INTO `fb_system_icon` VALUES (1958, 'far fa-trash-alt', 739);
INSERT INTO `fb_system_icon` VALUES (1959, 'fas fa-tree', 740);
INSERT INTO `fb_system_icon` VALUES (1960, 'fab fa-trello', 741);
INSERT INTO `fb_system_icon` VALUES (1961, 'fab fa-tripadvisor', 742);
INSERT INTO `fb_system_icon` VALUES (1962, 'fas fa-trophy', 743);
INSERT INTO `fb_system_icon` VALUES (1963, 'fas fa-truck', 744);
INSERT INTO `fb_system_icon` VALUES (1964, 'fas fa-tty', 745);
INSERT INTO `fb_system_icon` VALUES (1965, 'fab fa-tumblr', 746);
INSERT INTO `fb_system_icon` VALUES (1966, 'fab fa-tumblr-square', 747);
INSERT INTO `fb_system_icon` VALUES (1967, 'fas fa-tv', 748);
INSERT INTO `fb_system_icon` VALUES (1968, 'fab fa-twitch', 749);
INSERT INTO `fb_system_icon` VALUES (1969, 'fab fa-twitter', 750);
INSERT INTO `fb_system_icon` VALUES (1970, 'fab fa-twitter-square', 751);
INSERT INTO `fb_system_icon` VALUES (1971, 'fab fa-typo3', 752);
INSERT INTO `fb_system_icon` VALUES (1972, 'fab fa-uber', 753);
INSERT INTO `fb_system_icon` VALUES (1973, 'fab fa-uikit', 754);
INSERT INTO `fb_system_icon` VALUES (1974, 'fas fa-umbrella', 755);
INSERT INTO `fb_system_icon` VALUES (1975, 'fas fa-underline', 756);
INSERT INTO `fb_system_icon` VALUES (1976, 'fas fa-undo', 757);
INSERT INTO `fb_system_icon` VALUES (1977, 'fas fa-undo-alt', 758);
INSERT INTO `fb_system_icon` VALUES (1978, 'fab fa-uniregistry', 759);
INSERT INTO `fb_system_icon` VALUES (1979, 'fas fa-universal-access', 760);
INSERT INTO `fb_system_icon` VALUES (1980, 'fas fa-university', 761);
INSERT INTO `fb_system_icon` VALUES (1981, 'fas fa-unlink', 762);
INSERT INTO `fb_system_icon` VALUES (1982, 'fas fa-unlock', 763);
INSERT INTO `fb_system_icon` VALUES (1983, 'fas fa-unlock-alt', 764);
INSERT INTO `fb_system_icon` VALUES (1984, 'fab fa-untappd', 765);
INSERT INTO `fb_system_icon` VALUES (1985, 'fas fa-upload', 766);
INSERT INTO `fb_system_icon` VALUES (1986, 'fab fa-usb', 767);
INSERT INTO `fb_system_icon` VALUES (1987, 'far fa-user', 768);
INSERT INTO `fb_system_icon` VALUES (1988, 'far fa-user-circle', 769);
INSERT INTO `fb_system_icon` VALUES (1989, 'fas fa-user-md', 770);
INSERT INTO `fb_system_icon` VALUES (1990, 'fas fa-user-plus', 771);
INSERT INTO `fb_system_icon` VALUES (1991, 'fas fa-user-secret', 772);
INSERT INTO `fb_system_icon` VALUES (1992, 'fas fa-user-times', 773);
INSERT INTO `fb_system_icon` VALUES (1993, 'fas fa-users', 774);
INSERT INTO `fb_system_icon` VALUES (1994, 'fab fa-ussunnah', 775);
INSERT INTO `fb_system_icon` VALUES (1995, 'fas fa-utensil-spoon', 776);
INSERT INTO `fb_system_icon` VALUES (1996, 'fas fa-utensils', 777);
INSERT INTO `fb_system_icon` VALUES (1997, 'fab fa-vaadin', 778);
INSERT INTO `fb_system_icon` VALUES (1998, 'fas fa-venus', 779);
INSERT INTO `fb_system_icon` VALUES (1999, 'fas fa-venus-double', 780);
INSERT INTO `fb_system_icon` VALUES (2000, 'fas fa-venus-mars', 781);
INSERT INTO `fb_system_icon` VALUES (2001, 'fab fa-viacoin', 782);
INSERT INTO `fb_system_icon` VALUES (2002, 'fab fa-viadeo', 783);
INSERT INTO `fb_system_icon` VALUES (2003, 'fab fa-viadeo-square', 784);
INSERT INTO `fb_system_icon` VALUES (2004, 'fab fa-viber', 785);
INSERT INTO `fb_system_icon` VALUES (2005, 'fas fa-video', 786);
INSERT INTO `fb_system_icon` VALUES (2006, 'fab fa-vimeo', 787);
INSERT INTO `fb_system_icon` VALUES (2007, 'fab fa-vimeo-square', 788);
INSERT INTO `fb_system_icon` VALUES (2008, 'fab fa-vimeo-v', 789);
INSERT INTO `fb_system_icon` VALUES (2009, 'fab fa-vine', 790);
INSERT INTO `fb_system_icon` VALUES (2010, 'fab fa-vk', 791);
INSERT INTO `fb_system_icon` VALUES (2011, 'fab fa-vnv', 792);
INSERT INTO `fb_system_icon` VALUES (2012, 'fas fa-volleyball-ball', 793);
INSERT INTO `fb_system_icon` VALUES (2013, 'fas fa-volume-down', 794);
INSERT INTO `fb_system_icon` VALUES (2014, 'fas fa-volume-off', 795);
INSERT INTO `fb_system_icon` VALUES (2015, 'fas fa-volume-up', 796);
INSERT INTO `fb_system_icon` VALUES (2016, 'fab fa-vuejs', 797);
INSERT INTO `fb_system_icon` VALUES (2017, 'fas fa-warehouse', 798);
INSERT INTO `fb_system_icon` VALUES (2018, 'fab fa-weibo', 799);
INSERT INTO `fb_system_icon` VALUES (2019, 'fas fa-weight', 800);
INSERT INTO `fb_system_icon` VALUES (2020, 'fab fa-weixin', 801);
INSERT INTO `fb_system_icon` VALUES (2021, 'fab fa-whatsapp', 802);
INSERT INTO `fb_system_icon` VALUES (2022, 'fab fa-whatsapp-square', 803);
INSERT INTO `fb_system_icon` VALUES (2023, 'fas fa-wheelchair', 804);
INSERT INTO `fb_system_icon` VALUES (2024, 'fab fa-whmcs', 805);
INSERT INTO `fb_system_icon` VALUES (2025, 'fas fa-wifi', 806);
INSERT INTO `fb_system_icon` VALUES (2026, 'fab fa-wikipedia-w', 807);
INSERT INTO `fb_system_icon` VALUES (2027, 'far fa-window-close', 808);
INSERT INTO `fb_system_icon` VALUES (2028, 'fas fa-window-maximize', 809);
INSERT INTO `fb_system_icon` VALUES (2029, 'fas fa-window-minimize', 810);
INSERT INTO `fb_system_icon` VALUES (2030, 'fas fa-window-restore', 811);
INSERT INTO `fb_system_icon` VALUES (2031, 'fab fa-windows', 812);
INSERT INTO `fb_system_icon` VALUES (2032, 'fas fa-won-sign', 813);
INSERT INTO `fb_system_icon` VALUES (2033, 'fab fa-wordpress', 814);
INSERT INTO `fb_system_icon` VALUES (2034, 'fab fa-wordpress-simple', 815);
INSERT INTO `fb_system_icon` VALUES (2035, 'fab fa-wpbeginner', 816);
INSERT INTO `fb_system_icon` VALUES (2036, 'fab fa-wpexplorer', 817);
INSERT INTO `fb_system_icon` VALUES (2037, 'fab fa-wpforms', 818);
INSERT INTO `fb_system_icon` VALUES (2038, 'fas fa-wrench', 819);
INSERT INTO `fb_system_icon` VALUES (2039, 'fab fa-xbox', 820);
INSERT INTO `fb_system_icon` VALUES (2040, 'fab fa-xing', 821);
INSERT INTO `fb_system_icon` VALUES (2041, 'fab fa-xing-square', 822);
INSERT INTO `fb_system_icon` VALUES (2042, 'fab fa-y-combinator', 823);
INSERT INTO `fb_system_icon` VALUES (2043, 'fab fa-yahoo', 824);
INSERT INTO `fb_system_icon` VALUES (2044, 'fab fa-yandex', 825);
INSERT INTO `fb_system_icon` VALUES (2045, 'fab fa-yandex-international', 826);
INSERT INTO `fb_system_icon` VALUES (2046, 'fab fa-yelp', 827);
INSERT INTO `fb_system_icon` VALUES (2047, 'fas fa-yen-sign', 828);
INSERT INTO `fb_system_icon` VALUES (2048, 'fab fa-yoast', 829);
INSERT INTO `fb_system_icon` VALUES (2049, 'fab fa-youtube', 830);
INSERT INTO `fb_system_icon` VALUES (2050, 'fab fa-youtube-square', 831);

-- ----------------------------
-- Table structure for fb_system_menu
-- ----------------------------
DROP TABLE IF EXISTS `fb_system_menu`;
CREATE TABLE `fb_system_menu`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ParentCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MenuName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IconClass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IconURL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MenuSeq` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单排序',
  `Description` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isVisible` tinyint(1) NULL DEFAULT NULL COMMENT '是否显示',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否启用',
  `CreatePerson` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `UpdatePerson` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UpdateDate` datetime(0) NULL DEFAULT NULL,
  `BackUp1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_system_menu
-- ----------------------------
INSERT INTO `fb_system_menu` VALUES (1, NULL, '系统管理', '/xx/xx', 'xx', 'xx', '1', 'xxxxxxx', 1, 1, 'admin', '2019-04-30 11:51:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fb_system_menu` VALUES (2, '1', '菜单管理', 'xx', 'xx', 'xx', '1', 'xxxxx', 1, 1, 'admin', '2019-04-30 11:51:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fb_user_baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `fb_user_baseinfo`;
CREATE TABLE `fb_user_baseinfo`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `UserName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `Level` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户权限等级',
  `RealName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真名',
  `Description` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人描述',
  `LoginCount` int(11) NULL DEFAULT NULL COMMENT '登录次数',
  `LastLoginDate` datetime(0) NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `CreatePersonIP` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建IP',
  `CreateDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UpdatePersonIP` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新IP',
  `UpdateDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `Delflag` tinyint(1) NULL DEFAULT NULL COMMENT '注销标志 (true / false)',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_user_baseinfo
-- ----------------------------
INSERT INTO `fb_user_baseinfo` VALUES (1, 'admin', 'admin', '超级管理员', '0', 'Jarvis', '贾维斯', 1, '2019-04-30 11:54:00', '127.0.0.1', '2019-04-30 11:54:12', NULL, NULL, 0);
INSERT INTO `fb_user_baseinfo` VALUES (2, 'test', 'test', '测试用户', '1', 'test', '测试用户', 1, '2019-04-30 11:55:18', '127.0.0.1', '2019-04-30 11:54:12', NULL, NULL, 0);

-- ----------------------------
-- Table structure for fb_user_message
-- ----------------------------
DROP TABLE IF EXISTS `fb_user_message`;
CREATE TABLE `fb_user_message`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `User_No` int(11) NOT NULL,
  `Content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `like` int(11) NULL DEFAULT NULL COMMENT '赞',
  `dislike` int(11) NULL DEFAULT NULL COMMENT '踩',
  `tower` int(11) NULL DEFAULT NULL COMMENT '几楼',
  `floor` int(11) NULL DEFAULT NULL COMMENT '几层',
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `BackUp1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_user_message
-- ----------------------------
INSERT INTO `fb_user_message` VALUES (1, 2, '休息休息 留言内容', 100, 0, 1, 1, '2019-04-30 11:55:56', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fb_user_mycollect
-- ----------------------------
DROP TABLE IF EXISTS `fb_user_mycollect`;
CREATE TABLE `fb_user_mycollect`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Book_No` int(11) NOT NULL,
  `User_No` int(11) NOT NULL,
  `ColloectDate` datetime(0) NULL DEFAULT NULL COMMENT '收藏日期',
  `BackUp1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackUp5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fb_user_mycollect
-- ----------------------------
INSERT INTO `fb_user_mycollect` VALUES (1, 1, 2, '2019-04-30 11:56:43', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `testNo` int(11) NOT NULL,
  `testName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`testNo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
