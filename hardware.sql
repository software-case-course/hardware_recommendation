/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : hardware

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-06-30 00:20:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cpu
-- ----------------------------
DROP TABLE IF EXISTS `cpu`;
CREATE TABLE `cpu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL,
  `gpu` varchar(10) DEFAULT NULL,
  `slot` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=368 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cpu
-- ----------------------------
INSERT INTO `cpu` VALUES ('1', 'Intel Xeon E3-1275 v6 @ 3.80GHz', '374.98', '11512.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('2', 'Intel Xeon E3-1270 v6 @ 3.80GHz', '367.91', '11359.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('3', 'Intel Xeon E5-2620 v4 @ 2.10GHz', '420.0', '11358.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('4', 'Intel Core i7-4790K @ 4.00GHz', '379.99', '11197.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('5', 'Intel Xeon E5-2470 @ 2.30GHz', '1479.99', '11149.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('6', 'Intel Xeon E5-2660 @ 2.20GHz', '85.12', '11144.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('7', 'Intel Core i7-6700K @ 4.00GHz', '339.99', '11109.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('8', 'Intel Xeon E3-1230 v6 @ 3.50GHz', '269.99', '11081.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('9', 'Intel Core i7-5775C @ 3.30GHz', '401.35', '11044.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('10', 'Intel Core i7-7700 @ 3.60GHz', '293.99', '10808.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('11', 'AMD Ryzen 5 1500X', '189.0', '10801.0', 'no', 'AM4');
INSERT INTO `cpu` VALUES ('13', 'Intel Xeon E3-1280 v5 @ 3.70GHz', '654.99', '10644.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('14', 'Intel Xeon E5-2630 v2 @ 2.60GHz', '657.32', '10453.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('15', 'Intel Xeon E5-2667 @ 2.90GHz', '653.57', '10380.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('16', 'Intel Xeon E3-1240 v5 @ 3.50GHz', '322.9', '10352.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('17', 'Intel Xeon E3-1245 v5 @ 3.50GHz', '337.91', '10348.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('18', 'Intel Xeon E3-1275 v5 @ 3.60GHz', '362.67', '10346.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('19', 'AMD FX-9590 Eight-Core', '139.99', '10339.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('20', 'Intel Xeon E5-2637 v3 @ 3.50GHz', '1295.95', '10281.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('21', 'Intel Xeon E3-1276 v3 @ 3.60GHz', '359.99', '10247.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('22', 'Intel Xeon E3-1281 v3 @ 3.70GHz', '914.52', '10234.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('23', 'Intel Xeon E5-1630 v3 @ 3.70GHz', '415.49', '10228.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('24', 'Intel Xeon E5-2650 @ 2.00GHz', '129.96', '10208.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('25', 'Intel Xeon E3-1270 v5 @ 3.60GHz', '349.94', '10194.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('26', 'Intel Xeon E5-2450 @ 2.10GHz', '499.7', '10186.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('27', 'Intel Core i7-4770K @ 3.50GHz', '399.0', '10112.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('29', 'Intel Xeon E3-1271 v3 @ 3.60GHz', '405.0', '10058.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('30', 'Intel Xeon E5-1620 v4 @ 3.50GHz', '318.97', '10055.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('31', 'Intel Xeon E3-1241 v3 @ 3.50GHz', '299.0', '10043.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('32', 'Intel Core i7-6700 @ 3.40GHz', '279.99', '10038.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('33', 'Intel Core i7-4790 @ 3.60GHz', '323.0', '10001.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('34', 'Intel Xeon E3-1246 v3 @ 3.50GHz', '493.58', '9993.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('35', 'Intel Xeon E5-2637 v4 @ 3.50GHz', '1090.37', '9982.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('36', 'Intel Xeon E5-2620 v3 @ 2.40GHz', '400.0', '9977.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('37', 'Intel Xeon E3-1245 v6 @ 3.70GHz', '319.96', '9955.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('38', 'Intel Xeon E5-2640 v2 @ 2.00GHz', '699.95', '9914.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('40', 'Intel Core i7-4771 @ 3.50GHz', '539.89', '9873.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('41', 'Intel Xeon E3-1275 v3 @ 3.50GHz', '500.99', '9863.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('42', 'Intel Xeon E3-1290 V2 @ 3.70GHz', '885.0', '9862.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('43', 'Intel Xeon E3-1270 v3 @ 3.50GHz', '369.99', '9831.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('44', 'Intel Core i7-4770 @ 3.40GHz', '398.89', '9798.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('46', 'Intel Xeon E5-1620 v3 @ 3.50GHz', '349.98', '9756.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('47', 'Intel Xeon E3-1280 V2 @ 3.60GHz', '644.99', '9746.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('48', 'Intel Core i7-4820K @ 3.70GHz', '359.99', '9738.0', 'yes', 'LGA2011');
INSERT INTO `cpu` VALUES ('49', 'Intel Xeon E3-1280 v3 @ 3.60GHz', '800.49', '9720.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('50', 'Intel Xeon E3-1240 v3 @ 3.40GHz', '299.99', '9704.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('52', 'Intel Xeon E3-1230 v5 @ 3.40GHz', '290.17', '9665.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('53', 'Intel Xeon E3-1231 v3 @ 3.40GHz', '297.21', '9637.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('54', 'Intel Xeon E5-2640 @ 2.50GHz', '161.81', '9618.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('55', 'Intel Core i7-4790S @ 3.20GHz', '468.89', '9588.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('56', 'Intel Xeon E3-1245 v3 @ 3.40GHz', '319.99', '9581.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('57', 'Intel Core i7-3770K @ 3.50GHz', '349.99', '9547.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('58', 'AMD FX-9370 Eight-Core', '139.99', '9536.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('60', 'Intel Xeon E5-1620 v2 @ 3.70GHz', '323.11', '9491.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('61', 'Intel Xeon E5-2658 @ 2.10GHz', '1462.0', '9484.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('62', 'Intel Xeon E3-1270 V2 @ 3.50GHz', '253.22', '9476.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('63', 'Intel Xeon E5-2637 v2 @ 3.50GHz', '1089.7', '9452.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('65', 'Intel Xeon E5-2440 v2 @ 1.90GHz', '400.0', '9425.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('67', 'Intel Xeon W3690 @ 3.47GHz', '1885.51', '9411.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('68', 'Intel Core i7-7700T @ 2.90GHz', '299.0', '9399.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('69', 'Intel Xeon E3-1286 v3 @ 3.70GHz', '839.0', '9388.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('70', 'Intel Core i7-4770S @ 3.10GHz', '689.79', '9334.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('71', 'Intel Xeon E3-1275 V2 @ 3.50GHz', '808.11', '9334.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('72', 'Intel Xeon E5-2440 @ 2.40GHz', '295.0', '9319.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('73', 'Intel Xeon E3-1230 v3 @ 3.30GHz', '254.14', '9312.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('74', 'Intel Core i7-3770 @ 3.40GHz', '318.65', '9312.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('76', 'Intel Core i5-7600K @ 3.80GHz', '237.99', '9269.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('77', 'Intel Xeon W3680 @ 3.33GHz', '453.45', '9226.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('79', 'Intel Xeon E3-1240 V2 @ 3.40GHz', '303.87', '9204.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('80', 'Intel Core i7-990X @ 3.47GHz', '1104.02', '9160.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('82', 'Intel Xeon E5-2623 v3 @ 3.00GHz', '566.84', '9097.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('83', 'Intel Xeon E3-1245 V2 @ 3.40GHz', '461.92', '9095.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('84', 'Intel Xeon E5-1620 @ 3.60GHz', '312.99', '9092.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('87', 'Intel Xeon X5690 @ 3.47GHz', '205.0', '9059.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('88', 'Intel Core i7-6700T @ 2.80GHz', '309.0', '9053.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('89', 'Intel Core i7-4790T @ 2.70GHz', '359.0', '9042.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('91', 'AMD FX-8370 Eight-Core', '149.99', '8998.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('92', 'Intel Core i7-3820 @ 3.60GHz', '399.76', '8996.0', 'yes', 'LGA2011');
INSERT INTO `cpu` VALUES ('93', 'AMD FX-8350 Eight-Core', '129.99', '8942.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('94', 'Intel Xeon E5-2630 @ 2.30GHz', '74.0', '8906.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('95', 'Intel Core i5-7600 @ 3.50GHz', '219.89', '8901.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('96', 'Intel Core i7-980X @ 3.33GHz', '1008.95', '8891.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('97', 'Intel Core i7-3770S @ 3.10GHz', '309.99', '8866.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('98', 'Intel Xeon E3-1230 V2 @ 3.30GHz', '359.95', '8847.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('100', 'Intel Core i7-980 @ 3.33GHz', '1108.95', '8797.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('101', 'Intel Core i7-2700K @ 3.50GHz', '309.0', '8766.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('102', 'Intel Xeon X5680 @ 3.33GHz', '170.56', '8748.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('103', 'Intel Xeon E3-1290 @ 3.60GHz', '885.0', '8704.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('104', 'Intel Xeon E5-2620 v2 @ 2.10GHz', '387.14', '8693.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('105', 'Intel Xeon E3-1265L v3 @ 2.50GHz', '367.29', '8691.0', 'no', 'LGA2011v3');
INSERT INTO `cpu` VALUES ('106', 'Intel Core i7-4770T @ 2.50GHz', '609.95', '8664.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('108', 'Intel Xeon E5-2430 v2 @ 2.50GHz', '295.96', '8608.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('109', 'Intel Xeon E5-2420 v2 @ 2.20GHz', '479.9', '8593.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('110', 'Intel Xeon X5675 @ 3.07GHz', '189.98', '8527.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('111', 'AMD Ryzen 5 1400', '159.99', '8515.0', 'no', 'AM4');
INSERT INTO `cpu` VALUES ('114', 'Intel Core i7-2600K @ 3.40GHz', '362.94', '8481.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('115', 'Intel Xeon E5-2643 @ 3.30GHz', '218.05', '8479.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('116', 'Intel Xeon E3-1280 @ 3.50GHz', '1089.13', '8473.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('117', 'Intel Core i5-7600T @ 2.80GHz', '228.99', '8468.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('118', 'Intel Core i7-970 @ 3.20GHz', '672.68', '8448.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('119', 'Intel Xeon E3-1275 @ 3.40GHz', '512.79', '8348.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('121', 'Intel Xeon W3670 @ 3.20GHz', '295.0', '8289.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('122', 'Intel Xeon E3-1270 @ 3.40GHz', '425.0', '8239.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('123', 'Intel Core i7-2600 @ 3.40GHz', '247.25', '8222.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('124', 'Intel Core i7-3770T @ 2.50GHz', '329.99', '8196.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('127', 'Intel Xeon E5-4620 @ 2.20GHz', '399.95', '8127.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('128', 'Intel Core i5-5675C @ 3.10GHz', '296.42', '8126.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('129', 'Intel Xeon E5-2623 v4 @ 2.60GHz', '549.0', '8061.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('130', 'Intel Xeon E3-1245 @ 3.30GHz', '324.37', '8045.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('131', 'Intel Xeon X5670 @ 2.93GHz', '66.98', '8031.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('132', 'AMD FX-8320 Eight-Core', '117.54', '8023.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('133', 'Intel Core i5-6600K @ 3.50GHz', '239.04', '8008.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('134', 'Intel Xeon E3-1240 @ 3.30GHz', '209.0', '8000.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('136', 'Intel Core i5-7500 @ 3.40GHz', '199.99', '7987.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('137', 'Intel Xeon E5-2620 @ 2.00GHz', '141.96', '7967.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('138', 'Intel Xeon E3-1230 @ 3.20GHz', '428.35', '7943.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('139', 'Intel Core i5-6600 @ 3.30GHz', '229.99', '7831.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('141', 'Intel Xeon X5660 @ 2.80GHz', '32.99', '7807.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('142', 'AMD FX-8370E Eight-Core', '158.5', '7793.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('143', 'Intel Core i5-4690K @ 3.50GHz', '299.9', '7762.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('145', 'Intel Xeon E3-1265L V2 @ 2.50GHz', '142.42', '7745.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('146', 'Intel Xeon E3-1225 v5 @ 3.30GHz', '256.56', '7735.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('147', 'Intel Core i5-6402P @ 2.80GHz', '189.99', '7715.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('149', 'Intel Xeon E3-1235 @ 3.20GHz', '287.0', '7685.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('150', 'AMD FX-8300 Eight-Core', '97.94', '7682.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('151', 'Intel Xeon E3-1220 v5 @ 3.00GHz', '224.0', '7654.0', 'no', 'C232&C236');
INSERT INTO `cpu` VALUES ('152', 'AMD FX-8150 Eight-Core', '214.99', '7629.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('153', 'Intel Core i5-4670K @ 3.40GHz', '257.91', '7616.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('154', 'Intel Core i5-4690 @ 3.50GHz', '264.99', '7606.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('156', 'Intel Xeon E3-1226 v3 @ 3.30GHz', '332.29', '7542.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('157', 'Intel Xeon X5650 @ 2.67GHz', '53.48', '7522.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('158', 'AMD FX-8320E Eight-Core', '109.99', '7502.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('160', 'Intel Core i5-7400 @ 3.00GHz', '189.99', '7437.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('161', 'Intel Core i5-4670 @ 3.40GHz', '359.95', '7377.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('162', 'Intel Core i5-4690S @ 3.20GHz', '623.0', '7360.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('164', 'Intel Core i7-4765T @ 2.00GHz', '508.95', '7303.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('165', 'Intel Core i5-6600T @ 2.70GHz', '472.4', '7265.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('166', 'Intel Core i5-4590 @ 3.30GHz', '298.78', '7229.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('167', 'Intel Core i5-6500 @ 3.20GHz', '203.68', '7214.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('169', 'Intel Core i5-3570K @ 3.40GHz', '275.0', '7151.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('170', 'Intel Xeon E5-2420 @ 1.90GHz', '390.0', '7139.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('171', 'Intel Xeon X5687 @ 3.60GHz', '121.0', '7138.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('172', 'Intel Xeon E3-1225 v3 @ 3.20GHz', '383.62', '7122.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('173', 'Intel Core i5-7500T @ 2.70GHz', '224.65', '7096.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('175', 'Intel Core i7-2600S @ 2.80GHz', '200.0', '7060.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('176', 'Intel Core i5-4570 @ 3.20GHz', '221.0', '7056.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('178', 'Intel Xeon E5649 @ 2.53GHz', '139.99', '7051.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('179', 'Intel Xeon E5-2609 v4 @ 1.70GHz', '319.99', '7033.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('180', 'Intel Core i5-3570 @ 3.40GHz', '170.0', '7032.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('181', 'Intel Xeon X5677 @ 3.47GHz', '350.0', '6984.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('182', 'AMD FX-6350 Six-Core', '99.99', '6970.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('183', 'Intel Core i5-4590S @ 3.00GHz', '211.99', '6949.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('185', 'Intel Xeon E3-1220 v3 @ 3.10GHz', '226.0', '6926.0', 'no', 'LGA1150');
INSERT INTO `cpu` VALUES ('186', 'Intel Core i3-7350K @ 4.20GHz', '149.99', '6920.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('187', 'Intel Xeon E5-2430 @ 2.20GHz', '117.83', '6878.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('188', 'Intel Core i5-3550 @ 3.30GHz', '235.0', '6867.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('189', 'Intel Core i5-3550S @ 3.00GHz', '350.0', '6818.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('190', 'Intel Xeon E3-1225 V2 @ 3.20GHz', '339.95', '6807.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('192', 'Intel Core i5-6400 @ 2.70GHz', '184.99', '6725.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('193', 'Intel Core i5-2550K @ 3.40GHz', '189.0', '6695.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('194', 'Intel Core i5-4570S @ 2.90GHz', '209.95', '6687.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('196', 'Intel Core i5-4460 @ 3.20GHz', '183.0', '6660.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('197', 'Intel Core i3-7320 @ 4.10GHz', '149.99', '6660.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('198', 'Intel Core i5-3570S @ 3.10GHz', '285.0', '6641.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('201', 'Intel Core i5-3470 @ 3.20GHz', '155.51', '6619.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('202', 'Intel Xeon E3-1220 V2 @ 3.10GHz', '329.1', '6599.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('203', 'AMD FX-8120 Eight-Core', '179.99', '6585.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('204', 'Intel Xeon E5645 @ 2.40GHz', '88.75', '6545.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('205', 'Intel Xeon E3-1260L @ 2.40GHz', '249.99', '6534.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('206', 'Intel Xeon X5672 @ 3.20GHz', '115.12', '6505.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('207', 'Intel Core i3-7300 @ 4.00GHz', '157.78', '6484.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('208', 'Intel Core i5-3450 @ 3.10GHz', '186.0', '6478.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('209', 'Intel Core i5-7400T @ 2.40GHz', '149.0', '6472.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('210', 'Intel Core i5-2500K @ 3.30GHz', '289.0', '6464.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('211', 'Intel Xeon L5640 @ 2.27GHz', '92.12', '6451.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('212', 'Intel Core i5-4440 @ 3.10GHz', '334.97', '6450.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('213', 'Intel Core i5-3475S @ 2.90GHz', '219.45', '6437.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('216', 'Intel Xeon W3580 @ 3.33GHz', '214.5', '6412.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('218', 'AMD FX-6300 Six-Core', '74.99', '6355.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('219', 'Intel Core i5-2500 @ 3.30GHz', '169.5', '6280.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('220', 'Intel Core i5-4430 @ 3.00GHz', '460.0', '6277.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('221', 'Intel Core i5-4670T @ 2.30GHz', '220.0', '6272.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('222', 'Intel Core i5-3470S @ 2.90GHz', '208.0', '6251.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('223', 'AMD PRO A12-9800', '169.0', '6197.0', 'yes', 'AM4');
INSERT INTO `cpu` VALUES ('224', 'Intel Xeon W5590 @ 3.33GHz', '269.99', '6183.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('225', 'Intel Core i7-975 @ 3.33GHz', '475.87', '6176.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('226', 'Intel Xeon W3570 @ 3.20GHz', '479.95', '6165.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('227', 'Intel Core i5-3450S @ 2.80GHz', '150.0', '6130.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('228', 'Intel Core i5-2450P @ 3.20GHz', '214.99', '6119.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('229', 'Intel Core i5-3350P @ 3.10GHz', '292.01', '6115.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('230', 'AMD FX-6200 Six-Core', '121.59', '6114.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('231', 'Intel Core i5-4440S @ 2.80GHz', '239.0', '6114.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('233', 'AMD FX-8100 Eight-Core', '142.0', '6080.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('234', 'Intel Xeon E3-1220 @ 3.10GHz', '478.69', '6067.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('235', 'Intel Xeon E3-1265L @ 2.40GHz', '918.35', '6054.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('236', 'Intel Xeon E5-1607 v2 @ 3.00GHz', '313.0', '6046.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('237', 'Intel Core i5-3340 @ 3.10GHz', '209.99', '6040.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('238', 'Intel Core i3-6320 @ 3.90GHz', '164.31', '6032.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('239', 'Intel Xeon X5647 @ 2.93GHz', '175.0', '5980.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('241', 'Intel Core i3-6098P @ 3.60GHz', '123.8', '5973.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('242', 'Intel Xeon W3565 @ 3.20GHz', '69.95', '5957.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('243', 'Intel Xeon E3-1225 @ 3.10GHz', '248.79', '5954.0', 'no', 'LGA1155');
INSERT INTO `cpu` VALUES ('244', 'Intel Xeon E5-2609 v3 @ 1.90GHz', '290.0', '5949.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('246', 'Intel Core i3-7100 @ 3.90GHz', '115.09', '5922.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('247', 'Intel Core i5-2400 @ 3.10GHz', '69.9', '5897.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('248', 'Intel Core i5-3330 @ 3.00GHz', '359.95', '5895.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('249', 'Intel Core i7-965 @ 3.20GHz', '1508.95', '5889.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('250', 'Intel Core i7-960 @ 3.20GHz', '316.0', '5874.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('251', 'Intel Xeon W5580 @ 3.20GHz', '101.95', '5836.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('252', 'Intel Core i3-6300 @ 3.80GHz', '155.93', '5825.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('253', 'Intel Xeon E5-1607 @ 3.00GHz', '27.5', '5798.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('254', 'AMD Phenom II X6 1100T', '233.99', '5780.0', 'yes', 'AM3');
INSERT INTO `cpu` VALUES ('256', 'Intel Core i5-3340S @ 2.80GHz', '320.0', '5760.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('257', 'AMD PRO A10-9700', '169.0', '5742.0', 'yes', 'AM4');
INSERT INTO `cpu` VALUES ('258', 'AMD A10-7890K', '149.99', '5742.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('259', 'Intel Xeon W3550 @ 3.07GHz', '235.0', '5731.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('260', 'Intel Core i5-2320 @ 3.00GHz', '175.0', '5729.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('261', 'Intel Core i5-2380P @ 3.10GHz', '180.0', '5693.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('262', 'Intel Core i7-880 @ 3.07GHz', '583.0', '5684.0', 'yes', 'LGA1156');
INSERT INTO `cpu` VALUES ('263', 'Intel Xeon X5570 @ 2.93GHz', '49.0', '5679.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('264', 'Intel Xeon L5638 @ 2.00GHz', '89.9', '5674.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('265', 'Intel Core i5-3330S @ 2.70GHz', '230.88', '5629.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('266', 'AMD Phenom II X6 1090T', '396.08', '5626.0', 'yes', 'AM3');
INSERT INTO `cpu` VALUES ('267', 'Intel Core i7-950 @ 3.07GHz', '289.99', '5598.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('268', 'AMD Athlon X4 880K', '91.85', '5593.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('269', 'Intel Core i3-4370 @ 3.80GHz', '241.78', '5583.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('270', 'Intel Xeon E5-2603 v4 @ 1.70GHz', '210.0', '5571.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('271', 'Intel Core i5-6400T @ 2.20GHz', '166.0', '5560.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('273', 'Intel Core i5-2310 @ 2.90GHz', '175.0', '5504.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('274', 'AMD A10-7850K APU', '138.99', '5500.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('275', 'AMD A10-7870K', '119.23', '5496.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('276', 'Intel Xeon E5-1603 @ 2.80GHz', '164.99', '5493.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('277', 'Intel Core i3-6100 @ 3.70GHz', '118.0', '5481.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('278', 'Intel Xeon W3540 @ 2.93GHz', '698.95', '5479.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('279', 'AMD Athlon X4 860K', '49.99', '5472.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('280', 'Intel Pentium G4600 @ 3.60GHz', '86.99', '5470.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('281', 'Intel Core i7-875K @ 2.93GHz', '338.5', '5463.0', 'yes', 'LGA1156');
INSERT INTO `cpu` VALUES ('282', 'Intel Core i3-4360 @ 3.70GHz', '352.0', '5460.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('283', 'AMD Athlon X4 845', '69.63', '5434.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('284', 'Intel Xeon X5560 @ 2.80GHz', '35.0', '5426.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('285', 'Intel Xeon X5550 @ 2.67GHz', '62.0', '5416.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('286', 'Intel Core i7-940 @ 2.93GHz', '299.0', '5416.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('287', 'AMD FX-6100 Six-Core', '189.99', '5409.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('288', 'Intel Core i7-870 @ 2.93GHz', '225.47', '5405.0', 'yes', 'LGA1156');
INSERT INTO `cpu` VALUES ('289', 'Intel Pentium G4620 @ 3.70GHz', '99.99', '5391.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('290', 'AMD Phenom II X6 1075T', '259.99', '5384.0', 'yes', 'AM3');
INSERT INTO `cpu` VALUES ('291', 'Intel Xeon W3530 @ 2.80GHz', '998.99', '5365.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('292', 'Intel Xeon E5640 @ 2.67GHz', '159.95', '5345.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('293', 'AMD PRO A8-9600', '119.0', '5336.0', 'yes', 'AM4');
INSERT INTO `cpu` VALUES ('294', 'Intel Core i5-2300 @ 2.80GHz', '199.99', '5317.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('295', 'AMD FX-4350 Quad-Core', '75.79', '5301.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('296', 'AMD Athlon X4 870K', '74.01', '5275.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('298', 'Intel Core i5-2500S @ 2.70GHz', '250.0', '5257.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('299', 'Intel Core i3-4340 @ 3.60GHz', '210.0', '5232.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('300', 'Intel Core i3-6300T @ 3.30GHz', '168.24', '5217.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('301', 'Intel Xeon X3470 @ 2.93GHz', '377.0', '5195.0', 'no', 'LGA1156');
INSERT INTO `cpu` VALUES ('302', 'Intel Core i7-930 @ 2.80GHz', '508.95', '5178.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('303', 'Intel Core i3-4170 @ 3.70GHz', '130.93', '5164.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('304', 'Intel Xeon E5630 @ 2.53GHz', '9.95', '5164.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('305', 'AMD A10-7700K APU', '99.66', '5159.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('306', 'AMD A10-7860K', '89.99', '5150.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('307', 'Intel Xeon X3460 @ 2.80GHz', '75.5', '5143.0', 'no', 'LGA1156');
INSERT INTO `cpu` VALUES ('308', 'AMD A8-7600 APU', '64.5', '5134.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('309', 'Intel Pentium G4560 @ 3.50GHz', '153.89', '5123.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('310', 'Intel Xeon E5-2603 v3 @ 1.60GHz', '227.0', '5122.0', 'no', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('311', 'AMD PRO A10-9700E', '139.0', '5083.0', 'yes', 'AM4');
INSERT INTO `cpu` VALUES ('312', 'AMD A8-7670K', '99.99', '5077.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('313', 'Intel Core i3-4330 @ 3.50GHz', '173.99', '5073.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('314', 'Intel Xeon W3520 @ 2.67GHz', '403.9', '5064.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('315', 'AMD A10-7800 APU', '104.99', '5063.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('316', 'Intel Core i7-860 @ 2.80GHz', '309.0', '5054.0', 'yes', 'LGA1156');
INSERT INTO `cpu` VALUES ('317', 'Intel Xeon E5-2609 v2 @ 2.50GHz', '405.01', '5050.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('318', 'Intel Core i5-2405S @ 2.50GHz', '471.59', '5047.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('319', 'Intel Core i3-4160 @ 3.60GHz', '130.7', '5042.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('320', 'AMD Athlon X4 840', '90.66', '5021.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('321', 'Intel Xeon E5-4603 @ 2.00GHz', '712.23', '5014.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('322', 'AMD Phenom II X6 1055T', '185.0', '5008.0', 'yes', 'AM3');
INSERT INTO `cpu` VALUES ('323', 'Intel Core i7-920 @ 2.67GHz', '339.95', '4961.0', 'yes', 'LGA1366');
INSERT INTO `cpu` VALUES ('324', 'AMD A8-7650K', '79.99', '4960.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('326', 'Intel Xeon X3450 @ 2.67GHz', '255.0', '4925.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('327', 'Intel Core i5-2400S @ 2.50GHz', '182.0', '4918.0', 'yes', 'LGA1155');
INSERT INTO `cpu` VALUES ('328', 'Intel Core i3-4150 @ 3.50GHz', '182.73', '4905.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('329', 'AMD A10-6800K APU', '109.99', '4894.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('330', 'Intel Core i3-4350 @ 3.60GHz', '170.4', '4888.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('331', 'Intel Xeon E5620 @ 2.40GHz', '34.74', '4873.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('333', 'Intel Xeon E5540 @ 2.53GHz', '29.6', '4857.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('334', 'Intel Xeon X5492 @ 3.40GHz', '1391.29', '4851.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('335', 'AMD Phenom II X6 1045T', '175.0', '4850.0', 'yes', 'AM3');
INSERT INTO `cpu` VALUES ('336', 'AMD FX-4170 Quad-Core', '143.61', '4840.0', 'no', 'AM3+');
INSERT INTO `cpu` VALUES ('337', 'Intel Core i3-6100T @ 3.20GHz', '108.0', '4836.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('338', 'AMD PRO A12-9800E', '169.0', '4835.0', 'yes', 'AM4');
INSERT INTO `cpu` VALUES ('339', 'Intel Core i5-4570T @ 2.90GHz', '221.5', '4803.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('340', 'Intel Core i3-4130 @ 3.40GHz', '209.95', '4784.0', 'yes', 'LGA1150');
INSERT INTO `cpu` VALUES ('341', 'Intel Core i7-860S @ 2.53GHz', '422.01', '4776.0', 'yes', 'LGA1156');
INSERT INTO `cpu` VALUES ('342', 'Intel Xeon X5667 @ 3.07GHz', '99.9', '4722.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('344', 'AMD Phenom II X6 1035T', '189.0', '4706.0', 'yes', 'AM3');
INSERT INTO `cpu` VALUES ('345', 'Intel Xeon E5-2407 v2 @ 2.40GHz', '476.31', '4677.0', 'no', 'LGA2011');
INSERT INTO `cpu` VALUES ('346', 'Intel Xeon X5470 @ 3.33GHz', '99.95', '4676.0', 'no', 'LGA1366');
INSERT INTO `cpu` VALUES ('348', 'AMD A10-6790K APU', '266.29', '4665.0', 'yes', 'FM2+');
INSERT INTO `cpu` VALUES ('349', 'Intel Core i7-6950X @ 3.00GHz', '1449.99', '20046.0', 'yes', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('350', 'Intel Core i7-6900K @ 3.20GHz', '899.99', '18003.0', 'yes', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('351', 'Intel Core i7-5960X @ 3.00GHz', '1079.99', '15969.0', 'yes', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('352', 'AMD Ryzen 7 1800X', '445.0', '15376.0', 'no', 'AM4');
INSERT INTO `cpu` VALUES ('353', 'AMD Ryzen 7 1700X', '344.95', '14682.0', 'no', 'AM4');
INSERT INTO `cpu` VALUES ('354', 'Intel Core i7-6850K @ 3.60GHz', '475.81', '14387.0', 'yes', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('355', 'Intel Core i7-4960X @ 3.60GHz', '2367.42', '13855.0', 'yes', 'LGA2011');
INSERT INTO `cpu` VALUES ('356', 'AMD Ryzen 7 1700', '296.71', '13787.0', 'no', 'AM4');
INSERT INTO `cpu` VALUES ('357', 'Intel Core i7-5930K @ 3.50GHz', '613.17', '13643.0', 'yes', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('358', 'Intel Core i7-6800K @ 3.40GHz', '362.99', '13620.0', 'yes', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('359', 'AMD Ryzen 5 1600', '209.99', '13372.0', 'no', 'AM4');
INSERT INTO `cpu` VALUES ('360', 'Intel Core i7-4930K @ 3.40GHz', '649.35', '13067.0', 'yes', 'LGA2011');
INSERT INTO `cpu` VALUES ('361', 'AMD Ryzen 5 1600X', '229.55', '13049.0', 'no', 'AM4');
INSERT INTO `cpu` VALUES ('362', 'Intel Core i7-5820K @ 3.30GHz', '388.88', '12995.0', 'yes', 'LGA2011V3');
INSERT INTO `cpu` VALUES ('363', 'Intel Core i7-3960X @ 3.30GHz', '840.75', '12686.0', 'yes', 'LGA2011');
INSERT INTO `cpu` VALUES ('364', 'Intel Core i7-3970X @ 3.50GHz', '578.39', '12643.0', 'yes', 'LGA2011');
INSERT INTO `cpu` VALUES ('365', 'Intel Core i7-7700K @ 4.20GHz', '339.99', '12174.0', 'yes', 'LGA1151');
INSERT INTO `cpu` VALUES ('366', 'Intel Core i7-3930K @ 3.20GHz', '610.75', '12027.0', 'yes', 'LGA2011');
INSERT INTO `cpu` VALUES ('367', 'Intel Pentium G3258 @ 3.20GHz', '89.65', '3922 ', 'yes', 'LGA1150');

-- ----------------------------
-- Table structure for gcard
-- ----------------------------
DROP TABLE IF EXISTS `gcard`;
CREATE TABLE `gcard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gcard
-- ----------------------------
INSERT INTO `gcard` VALUES ('1', 'GeForce GTX 1080', '499.99', '11978.0');
INSERT INTO `gcard` VALUES ('2', 'GeForce GTX 980 Ti', '580.15', '11322.0');
INSERT INTO `gcard` VALUES ('3', 'GeForce GTX 1070', '409.99', '11019.0');
INSERT INTO `gcard` VALUES ('4', 'GeForce GTX 980', '449.99', '9588.0');
INSERT INTO `gcard` VALUES ('5', 'GeForce GTX 1060', '299.99', '8713.0');
INSERT INTO `gcard` VALUES ('6', 'GeForce GTX 970', '326.71', '8567.0');
INSERT INTO `gcard` VALUES ('7', 'Radeon RX 480', '699.99', '8078.0');
INSERT INTO `gcard` VALUES ('8', 'GeForce GTX 780', '219.99', '7983.0');
INSERT INTO `gcard` VALUES ('9', 'Radeon R9 290X / 390X', '599.99', '7322.0');
INSERT INTO `gcard` VALUES ('10', 'Radeon R9 290 / 390', '339.0', '7040.0');
INSERT INTO `gcard` VALUES ('11', 'GeForce GTX 770', '1499.99', '6103.0');
INSERT INTO `gcard` VALUES ('12', 'GeForce GTX 960', '164.99', '5819.0');
INSERT INTO `gcard` VALUES ('13', 'GeForce GTX 680', '474.99', '5693.0');
INSERT INTO `gcard` VALUES ('14', 'GeForce GTX 670', '388.55', '5373.0');
INSERT INTO `gcard` VALUES ('15', 'Radeon HD 7970 / R9 280X', '299.99', '5247.0');
INSERT INTO `gcard` VALUES ('16', 'GeForce GTX 760', '399.99', '4950.0');
INSERT INTO `gcard` VALUES ('17', 'Radeon HD 7950 / R9 280', '199.99', '4764.0');
INSERT INTO `gcard` VALUES ('18', 'GeForce GTX 660 Ti', '329.99', '4687.0');
INSERT INTO `gcard` VALUES ('19', 'Radeon R9 270X', '229.99', '4654.0');
INSERT INTO `gcard` VALUES ('20', 'GeForce GTX 570', '99.99', '4410.0');
INSERT INTO `gcard` VALUES ('21', 'Radeon HD 7870', '548.99', '4337.0');
INSERT INTO `gcard` VALUES ('22', 'Radeon R9 270 / R7 370', '149.6', '4259.0');
INSERT INTO `gcard` VALUES ('23', 'GeForce GTX 660', '149.0', '4120.0');
INSERT INTO `gcard` VALUES ('24', 'Radeon HD 7850', '209.99', '3810.0');
INSERT INTO `gcard` VALUES ('25', 'GeForce GTX 750 Ti', '99.99', '3698.0');
INSERT INTO `gcard` VALUES ('26', 'GeForce GTX 560 Ti', '138.0', '3538.0');
INSERT INTO `gcard` VALUES ('27', 'Radeon HD 6950', '89.99', '3191.0');
INSERT INTO `gcard` VALUES ('28', 'GeForce GTX 560', '353.59', '3128.0');
INSERT INTO `gcard` VALUES ('29', 'GeForce GTX 650 Ti', '98.99', '2658.0');
INSERT INTO `gcard` VALUES ('30', 'GeForce GTX 460', '89.99', '2650.0');
INSERT INTO `gcard` VALUES ('31', 'Radeon HD 6870', '89.99', '2593.0');
INSERT INTO `gcard` VALUES ('32', 'Radeon HD 6850', '99.99', '2260.0');
INSERT INTO `gcard` VALUES ('33', 'Radeon HD 7770', '139.99', '2191.0');
INSERT INTO `gcard` VALUES ('34', 'GeForce GTX 550 Ti', '287.59', '1926.0');
INSERT INTO `gcard` VALUES ('35', 'GeForce GTX 650', '171.02', '1831.0');
INSERT INTO `gcard` VALUES ('36', 'Radeon HD 5770', '115.99', '1695.0');
INSERT INTO `gcard` VALUES ('37', 'Radeon HD 7750', '149.0', '1682.0');
INSERT INTO `gcard` VALUES ('38', 'Radeon HD 6670', '102.99', '1052.0');
INSERT INTO `gcard` VALUES ('39', 'GeForce GT 730', '58.99', '925.0');
INSERT INTO `gcard` VALUES ('40', 'GeForce GT 630', '99.99', '789.0');
INSERT INTO `gcard` VALUES ('45', 'GeForce GTX 1050 ', '103.99', '4456');
INSERT INTO `gcard` VALUES ('43', 'Radeon HD 5450', '29.99', '231.0');
INSERT INTO `gcard` VALUES ('44', 'GeForce 210', '28.99', '177.0');
INSERT INTO `gcard` VALUES ('46', 'GeForce GTX 1050', '103.99', '4450');
INSERT INTO `gcard` VALUES ('47', 'GeForce GTX 1050 Ti', '139.99', '5767');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `uname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `resultjson` text CHARACTER SET utf8,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":6656,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD\",\"mb\":\"??+LGA1150\",\"score1\":6600,\"gcard1\":\"Radeon HD 5770\",\"price1\":2872.6331999999998,\"ram\":\"4GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":4045.4514}', '2018-06-27 23:15:20');
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":6656,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD\",\"mb\":\"??+LGA1150\",\"score1\":6600,\"gcard1\":\"Radeon HD 5770\",\"price1\":2872.6331999999998,\"ram\":\"4GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":4045.4514}', '2018-06-27 23:17:53');
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":6656,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD+1TB HDD\",\"mb\":\"??+LGA1150\",\"score1\":6600,\"gcard1\":\"Radeon HD 5770\",\"price1\":3822.6331999999998,\"ram\":\"16GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":4995.4514}', '2018-06-27 23:28:22');
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":8152,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD+1TB HDD\",\"mb\":\"??+LGA1150\",\"score1\":8096,\"gcard1\":\"Radeon HD 6950\",\"price1\":3645.5732,\"ram\":\"16GB\",\"gcard2\":\"Radeon HD 6950\",\"price2\":4818.3914}', '2018-06-27 23:30:50');
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":6656,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD\",\"mb\":\"??+LGA1150\",\"score1\":6600,\"gcard1\":\"Radeon HD 5770\",\"price1\":2872.6331999999998,\"ram\":\"4GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":4045.4514}', '2018-06-27 23:35:29');
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"Intel Xeon E5-2640 @ 2.50GHz\",\"score2\":11313,\"cpu1\":\"Intel Xeon E3-1270 v3 @ 3.50GHz\",\"tmb\":\"??+LGA2011\",\"lowest\":0,\"rom\":\"128GB SSD\",\"mb\":\"??+LGA1150\",\"score1\":11526,\"gcard1\":\"Radeon HD 5770\",\"price1\":4147.873799999999,\"ram\":\"4GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":3458.8379999999997}', '2018-06-27 23:35:47');
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":6656,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD\",\"mb\":\"??+LGA1150\",\"score1\":6600,\"gcard1\":\"Radeon HD 5770\",\"price1\":2872.6331999999998,\"ram\":\"4GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":4045.4514}', '2018-06-27 23:38:41');
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":6656,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD\",\"mb\":\"??+LGA1150\",\"score1\":6600,\"gcard1\":\"Radeon HD 5770\",\"price1\":2872.6331999999998,\"ram\":\"4GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":4045.4514}', '2018-06-27 23:42:40');
INSERT INTO `history` VALUES ('anonymity', '{\"cpu2\":\"Intel Xeon X5677 @ 3.47GHz\",\"score2\":8679,\"cpu1\":\"Intel Core i5-4590S @ 3.00GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD\",\"mb\":\"??+LGA1150\",\"score1\":8644,\"gcard1\":\"Radeon HD 5770\",\"price1\":3071.8938,\"ram\":\"4GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":4113.8919000000005}', '2018-06-27 23:42:53');
INSERT INTO `history` VALUES ('anonymity', '{\"rom\":\"128GB SSD\",\"cpu2\":\"Intel Core i5-2400 @ 3.10GHz\",\"score2\":9088,\"tmb\":\"??+LGA1155\",\"lowest\":0,\"ram\":\"4GB\",\"gcard2\":\"Radeon HD 6950\",\"price2\":1852.2908999999997}', '2018-06-27 23:47:36');
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"AMD FX-6350 Six-Core\",\"score2\":12789,\"cpu1\":\"Intel Core i5-4590S @ 3.00GHz\",\"tmb\":\"AMD970+AM3+\",\"lowest\":0,\"rom\":\"128GB SSD+1TB HDD\",\"mb\":\"??+LGA1150\",\"score1\":12768,\"gcard1\":\"GeForce GTX 960\",\"price1\":3955.5838,\"ram\":\"8GB\",\"gcard2\":\"GeForce GTX 960\",\"price2\":3438.0238}', '2018-06-27 23:49:37');
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"Intel Xeon X5677 @ 3.47GHz\",\"score2\":12803,\"cpu1\":\"Intel Core i5-4590S @ 3.00GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD+1TB HDD\",\"mb\":\"??+LGA1150\",\"score1\":12768,\"gcard1\":\"GeForce GTX 960\",\"price1\":3955.5838,\"ram\":\"8GB\",\"gcard2\":\"GeForce GTX 960\",\"price2\":4997.581899999999}', '2018-06-27 23:50:10');
INSERT INTO `history` VALUES ('normaluser', '{\"cpu2\":\"Intel Xeon E5-2640 @ 2.50GHz\",\"score2\":12809,\"cpu1\":\"Intel Xeon E3-1231 v3 @ 3.40GHz\",\"tmb\":\"??+LGA2011\",\"lowest\":0,\"rom\":\"128GB SSD+1TB HDD\",\"mb\":\"??+LGA1150\",\"score1\":12828,\"gcard1\":\"Radeon HD 6950\",\"price1\":4425.182,\"ram\":\"16GB\",\"gcard2\":\"Radeon HD 6950\",\"price2\":4231.778}', '2018-06-28 00:40:36');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `uname` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `usertypes` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('love1', 'love1', '1', null, null);
INSERT INTO `log` VALUES ('love2', 'love2', '0', null, null);
INSERT INTO `log` VALUES ('love', 'love', '1', null, null);
INSERT INTO `log` VALUES ('11', '11', '1', null, null);
INSERT INTO `log` VALUES ('love121212', '1234567', '1', null, null);
INSERT INTO `log` VALUES ('normaluser', '1234', '0', null, null);
INSERT INTO `log` VALUES ('newsuser', '1234', '1', null, null);
INSERT INTO `log` VALUES ('normaluser1', '1111', '0', null, null);
INSERT INTO `log` VALUES ('anonymity', '1234', null, null, null);

-- ----------------------------
-- Table structure for mainboard
-- ----------------------------
DROP TABLE IF EXISTS `mainboard`;
CREATE TABLE `mainboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `slot` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `boardid` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `trashtag` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mainboard
-- ----------------------------
INSERT INTO `mainboard` VALUES ('1', '华擎x99太极', '279', 'LGA2011V3', 'X99', '0');
INSERT INTO `mainboard` VALUES ('2', '华硕x99-AII', '411', 'LGA2011V3', 'X99', '0');
INSERT INTO `mainboard` VALUES ('3', '华硕R4E', '205', 'LGA2011', 'X79', '1');
INSERT INTO `mainboard` VALUES ('4', '华擎', '142', 'LGA2011', 'X79', '1');
INSERT INTO `mainboard` VALUES ('5', '华硕', '85', 'LGA1151', 'B250', '0');
INSERT INTO `mainboard` VALUES ('6', '微星', '52', 'LGA1151', 'H110', '0');
INSERT INTO `mainboard` VALUES ('7', '华硕', '214', 'LGA1151', 'z270', '0');
INSERT INTO `mainboard` VALUES ('8', '华硕', '100', 'LGA1150', 'z97', '0');
INSERT INTO `mainboard` VALUES ('9', '华硕', '35', 'LGA1150', 'b85', '0');
INSERT INTO `mainboard` VALUES ('10', '技嘉', '24', 'LGA1155', 'b75', '1');
INSERT INTO `mainboard` VALUES ('11', '主板', '50', 'LGA1366', 'x58', '1');
INSERT INTO `mainboard` VALUES ('12', '主板', '21', 'LGA1156', 'H57', '1');
INSERT INTO `mainboard` VALUES ('13', 'AMD970', '71', 'AM3+', null, '1');
INSERT INTO `mainboard` VALUES ('14', '华硕', '214', 'AM4', 'x370', '0');
INSERT INTO `mainboard` VALUES ('15', '华硕', '50', 'FM2+', null, '1');
INSERT INTO `mainboard` VALUES ('16', '微星', '114', 'AM4', 'b350', '0');
INSERT INTO `mainboard` VALUES ('17', '华擎', '142', 'c232&c236', 'c236', '0');
INSERT INTO `mainboard` VALUES ('18', '华擎', '91', 'c232&c236', 'c232', '0');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('images/12.jpg', '一体式水冷设计 这款显卡拷机温度竟能这么低！', '【PConline 评测】想必大家对七彩虹iGame旗下的冰封骑士系列显卡还记忆犹新，不光是因为它的命名，更因为它的定位“水冷”', 'http://diy.pconline.com.cn/950/9508724.html', '2017-07-08 00:00:00');
INSERT INTO `news` VALUES ('images/2.png', '这回不是马甲了！8代APU集ZEN+VEGA于一体', '【PConline 资讯】Zen架构简直就是AMD的救命稻草，在第一代Zen架构的锐龙到来之前，世人都以为AMD领便当之日不远矣。', 'http://diy.pconline.com.cn/951/9518544.html', '2017-07-08 00:00:00');
INSERT INTO `news` VALUES ('images/9.jpg', 'SSD内存价格疯涨分析：装机的用户纷纷骂娘！', '【PConline 杂谈】6.18电商大促销已过去一段时间了，面对着京东，淘宝，天猫，苏宁等一大波电商的半价促销、秒杀、满减等活动，不知又有多少人为此而剁手了。但是', 'http://diy.pconline.com.cn/946/9460784.html', '2017-07-09 00:00:00');
INSERT INTO `news` VALUES ('images/10.jpg', '显卡的疯涨是人性的缺失还是矿工的疯狂？', '【PConline 杂谈】现在互联网金融行业最热门的一件事是什么，恐怕非“挖矿”莫属了，说起挖矿我们不得不说提到“比特币”。', 'http://diy.pconline.com.cn/942/9422965.html', '2017-07-09 00:00:00');
INSERT INTO `news` VALUES ('images/11.jpg', '工作站专用主板该具备哪些要素', '【PConline 评测】游戏主板我们就评测过很多了，但是工作站专用的主板就相对较少了，今天搞到了一块华硕Z270-WS，WS就是WorkStation（工作站）的缩写，拿到主板的第一感觉', 'http://diy.pconline.com.cn/945/9454946.html', '2017-07-09 00:00:00');
INSERT INTO `news` VALUES ('images/8.jpg', '首款酷睿i9已经开卖 进来教你选主板 秒懂', '【PConline 导购】Intel最新的X系至尊酷睿CPU终于正式上市，现在已经是预售阶段，7月5日将会陆续发货，也许你已经觊觎了顶级的X系CPU许久', 'http://diy.pconline.com.cn/947/9472866.html', '2017-07-09 10:09:18');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `session` varchar(255) NOT NULL,
  `resultjson` text,
  PRIMARY KEY (`session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('-q1rl8blvbWAggfepSFNZKAZHhQTmK4B', '{\"rom\":\"128GB SSD\",\"lowest\":1353.1179,\"ram\":\"4GB\"}');
INSERT INTO `result` VALUES ('8zH2v37gX5hxCWPT0hndNodAwVtR8ZMF', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":10780,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD+1TB HDD\",\"mb\":\"??+LGA1150\",\"score1\":10724,\"gcard1\":\"GeForce GTX 960\",\"price1\":4156.3232,\"ram\":\"16GB\",\"gcard2\":\"GeForce GTX 960\",\"price2\":5329.1414}');
INSERT INTO `result` VALUES ('c53KzbE6VuAE-_cL7oPcrc2hfIqJXG79', '{\"rom\":\"128GB SSD\",\"lowest\":1353.1179,\"ram\":\"4GB\"}');
INSERT INTO `result` VALUES ('n19O-8niD7DEvNvgOOJZ07xiw9U_fd1p', '{\"cpu2\":\"Intel Xeon E5-2640 v2 @ 2.00GHz\",\"score2\":13105,\"cpu1\":\"Intel Xeon E3-1246 v3 @ 3.50GHz\",\"tmb\":\"??R4E+LGA2011\",\"lowest\":0,\"rom\":\"128GB SSD+1TB HDD\",\"mb\":\"??+LGA1150\",\"score1\":13184,\"gcard1\":\"Radeon HD 6950\",\"price1\":5762.461699999999,\"ram\":\"16GB\",\"gcard2\":\"Radeon HD 6950\",\"price2\":8325.5414}');
INSERT INTO `result` VALUES ('qZAP05COVt0-oAmpETmMW81HrPk1DsNV', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":6656,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD\",\"mb\":\"??+LGA1150\",\"score1\":6600,\"gcard1\":\"Radeon HD 5770\",\"price1\":2872.6331999999998,\"ram\":\"4GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":4045.4514}');
INSERT INTO `result` VALUES ('rCilBtVWT91MdpTKclFAfUXxeMSViMf4', '{\"cpu2\":\"AMD A8-7650K\",\"score2\":6655,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+FM2+\",\"lowest\":0,\"rom\":\"128GB SSD+1TB HDD\",\"mb\":\"??+LGA1150\",\"score1\":6600,\"gcard1\":\"Radeon HD 5770\",\"price1\":3822.6331999999998,\"ram\":\"16GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":3225.1238}');
INSERT INTO `result` VALUES ('sbFpxPgP-8KJ2OVwIOPz2aB3wf8mzLAH', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":6656,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD+1TB HDD\",\"mb\":\"??+LGA1150\",\"score1\":6600,\"gcard1\":\"Radeon HD 5770\",\"price1\":3822.6331999999998,\"ram\":\"16GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":4995.4514}');
INSERT INTO `result` VALUES ('z2ZgMpj5vDLVenM0IC4lC-pqCH8qZzTR', '{\"cpu2\":\"Intel Core i7-920 @ 2.67GHz\",\"score2\":6656,\"cpu1\":\"Intel Core i3-4150 @ 3.50GHz\",\"tmb\":\"??+LGA1366\",\"lowest\":0,\"rom\":\"128GB SSD\",\"mb\":\"??+LGA1150\",\"score1\":6600,\"gcard1\":\"Radeon HD 5770\",\"price1\":2872.6331999999998,\"ram\":\"4GB\",\"gcard2\":\"Radeon HD 5770\",\"price2\":4045.4514}');

-- ----------------------------
-- Table structure for sessionidcheck
-- ----------------------------
DROP TABLE IF EXISTS `sessionidcheck`;
CREATE TABLE `sessionidcheck` (
  `uname` varchar(255) NOT NULL,
  `sessionid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessionidcheck
-- ----------------------------
