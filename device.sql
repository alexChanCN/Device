/*
Navicat MySQL Data Transfer

Source Server         : cs
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-04-09 19:38:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `data2device`
-- ----------------------------
DROP TABLE IF EXISTS `data2device`;
CREATE TABLE `data2device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataId` int(11) NOT NULL,
  `dataName` varchar(255) DEFAULT NULL,
  `deviceId` int(11) NOT NULL,
  `deviceName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data2device
-- ----------------------------
INSERT INTO `data2device` VALUES ('1', '1', 'storageLiquidLevel1', '1', 'StorageLiquid');
INSERT INTO `data2device` VALUES ('2', '2', 'storageLiquidLevel2', '2', 'CarLiquid');
INSERT INTO `data2device` VALUES ('3', '3', 'storagePressure1', '3', 'StoragePressure');
INSERT INTO `data2device` VALUES ('4', '4', 'storagePressure2', '4', 'CarPressure');
INSERT INTO `data2device` VALUES ('5', '5', 'gasifyPressure', '5', 'GasifyPressure');
INSERT INTO `data2device` VALUES ('6', '6', 'gasifyTemperature', '6', 'GasifyTemperature');
INSERT INTO `data2device` VALUES ('7', '14', 'totalFlow', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('8', '15', 'instantFlow', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('9', '16', 'temperature1', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('10', '17', 'pressure', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('11', '18', 'temperature2', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('12', '19', 'temperature3', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('13', '20', 'fireDetector', '7', null);
INSERT INTO `data2device` VALUES ('14', '21', 'combustibleGasDetector', '7', null);
INSERT INTO `data2device` VALUES ('15', '22', 'longitude', '9', 'GPS');
INSERT INTO `data2device` VALUES ('16', '23', 'latitude', '9', 'GPS');
INSERT INTO `data2device` VALUES ('17', '24', 'massFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('18', '25', 'volumeFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('19', '26', 'gaugedVolumeFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('20', '27', 'density', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('21', '28', 'referenceDensity', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('22', '29', 'temperature', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('23', '30', 'pressure2', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('24', '31', 'totalMassFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('25', '32', 'totalVolumeFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('26', '33', 'totalGaugedVolumeFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('27', '7', 'outValve1', '7', null);
INSERT INTO `data2device` VALUES ('28', '8', 'outValve2', '7', null);
INSERT INTO `data2device` VALUES ('29', '9', 'inValve1', '7', null);
INSERT INTO `data2device` VALUES ('30', '10', 'inValve2', '7', null);
INSERT INTO `data2device` VALUES ('31', '11', 'storageValve1', '7', null);
INSERT INTO `data2device` VALUES ('32', '12', 'storageValve2', '7', null);
INSERT INTO `data2device` VALUES ('33', '13', 'flowCutValve', '7', null);
INSERT INTO `data2device` VALUES ('34', '34', null, '11', 'ZBOX');

-- ----------------------------
-- Table structure for `data2device_copy`
-- ----------------------------
DROP TABLE IF EXISTS `data2device_copy`;
CREATE TABLE `data2device_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataId` int(11) NOT NULL,
  `dataName` varchar(255) DEFAULT NULL,
  `deviceId` int(11) NOT NULL,
  `deviceName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data2device_copy
-- ----------------------------
INSERT INTO `data2device_copy` VALUES ('1', '1', 'storageLiquidLevel1', '1', 'StorageLiquid');
INSERT INTO `data2device_copy` VALUES ('2', '2', 'storageLiquidLevel2', '2', 'CarLiquid');
INSERT INTO `data2device_copy` VALUES ('3', '3', 'storagePressure1', '3', 'StoragePressure');
INSERT INTO `data2device_copy` VALUES ('4', '4', 'storagePressure2', '4', 'CarPressure');
INSERT INTO `data2device_copy` VALUES ('5', '5', 'gasifyPressure', '5', 'GasifyPressure');
INSERT INTO `data2device_copy` VALUES ('6', '6', 'gasifyTemperature', '6', 'GasifyTemperature');
INSERT INTO `data2device_copy` VALUES ('7', '14', 'totalFlow', '8', 'GasFlow1');
INSERT INTO `data2device_copy` VALUES ('8', '15', 'instantFlow', '8', 'GasFlow1');
INSERT INTO `data2device_copy` VALUES ('9', '16', 'temperature1', '8', 'GasFlow1');
INSERT INTO `data2device_copy` VALUES ('10', '17', 'pressure', '8', 'GasFlow1');
INSERT INTO `data2device_copy` VALUES ('11', '18', 'temperature2', '8', 'GasFlow1');
INSERT INTO `data2device_copy` VALUES ('12', '19', 'temperature3', '8', 'GasFlow1');
INSERT INTO `data2device_copy` VALUES ('13', '20', 'fireDetector', '7', null);
INSERT INTO `data2device_copy` VALUES ('14', '21', 'combustibleGasDetector', '7', null);
INSERT INTO `data2device_copy` VALUES ('15', '22', 'longitude', '9', 'GPS');
INSERT INTO `data2device_copy` VALUES ('16', '23', 'latitude', '9', 'GPS');
INSERT INTO `data2device_copy` VALUES ('17', '24', 'massFlow', '10', 'MassFlow');
INSERT INTO `data2device_copy` VALUES ('18', '25', 'volumeFlow', '10', 'MassFlow');
INSERT INTO `data2device_copy` VALUES ('19', '26', 'gaugedVolumeFlow', '10', 'MassFlow');
INSERT INTO `data2device_copy` VALUES ('20', '27', 'density', '10', 'MassFlow');
INSERT INTO `data2device_copy` VALUES ('21', '28', 'referenceDensity', '10', 'MassFlow');
INSERT INTO `data2device_copy` VALUES ('22', '29', 'temperature', '10', 'MassFlow');
INSERT INTO `data2device_copy` VALUES ('23', '30', 'pressure2', '10', 'MassFlow');
INSERT INTO `data2device_copy` VALUES ('24', '31', 'totalMassFlow', '10', 'MassFlow');
INSERT INTO `data2device_copy` VALUES ('25', '32', 'totalVolumeFlow', '10', 'MassFlow');
INSERT INTO `data2device_copy` VALUES ('26', '33', 'totalGaugedVolumeFlow', '10', 'MassFlow');
INSERT INTO `data2device_copy` VALUES ('27', '7', 'outValve1', '7', null);
INSERT INTO `data2device_copy` VALUES ('28', '8', 'outValve2', '7', null);
INSERT INTO `data2device_copy` VALUES ('29', '9', 'inValve1', '7', null);
INSERT INTO `data2device_copy` VALUES ('30', '10', 'inValve2', '7', null);
INSERT INTO `data2device_copy` VALUES ('31', '11', 'storageValve1', '7', null);
INSERT INTO `data2device_copy` VALUES ('32', '12', 'storageValve2', '7', null);
INSERT INTO `data2device_copy` VALUES ('33', '13', 'flowCutValve', '7', null);
INSERT INTO `data2device_copy` VALUES ('34', '34', null, '11', 'ZBOX');

-- ----------------------------
-- Table structure for `devicefaultinfo`
-- ----------------------------
DROP TABLE IF EXISTS `devicefaultinfo`;
CREATE TABLE `devicefaultinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `beginTime` datetime DEFAULT NULL,
  `dataId` int(11) NOT NULL,
  `faultTybe` int(11) NOT NULL,
  `overTime` datetime DEFAULT NULL,
  `productId` int(11) NOT NULL,
  `updateMan` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devicefaultinfo
-- ----------------------------
INSERT INTO `devicefaultinfo` VALUES ('1', '2017-03-06 19:39:26', '1', '1', '2017-04-06 19:39:26', '1', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('2', '2017-03-06 19:39:26', '2', '1', '2017-04-06 19:39:26', '1', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('3', '2017-03-06 19:39:26', '3', '1', '2017-04-06 19:39:26', '1', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('4', '2017-04-06 19:39:26', '4', '1', '2017-04-06 19:39:26', '1', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('5', '2017-04-06 19:39:26', '5', '1', '2017-04-06 19:39:26', '1', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('6', '2017-04-06 19:39:26', '6', '1', '2017-04-06 19:39:26', '1', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('7', '2017-04-06 19:39:26', '7', '1', '2017-04-06 19:39:26', '1', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('8', '2017-04-06 19:39:26', '8', '1', '2017-04-06 19:39:26', '1', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('9', '2017-04-06 19:39:26', '9', '1', '2017-04-06 19:39:26', '1', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('10', '2017-04-06 19:39:26', '10', '1', '2017-04-06 19:39:26', '1', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('11', '2017-04-06 19:39:26', '1', '1', '2017-04-06 19:39:26', '2', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('12', '2017-04-06 19:39:26', '2', '1', '2017-04-06 19:39:26', '2', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('13', '2017-04-06 19:39:26', '3', '1', '2017-04-06 19:39:26', '2', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('14', '2017-04-06 19:39:26', '4', '1', '2017-04-06 19:39:26', '2', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('15', '2017-04-06 19:39:26', '5', '1', '2017-04-06 19:39:26', '2', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('16', '2017-04-06 19:39:26', '6', '1', '2017-04-06 19:39:26', '2', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('17', '2017-04-06 19:39:26', '7', '1', '2017-04-06 19:39:26', '2', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('18', '2017-04-06 19:39:26', '8', '1', '2017-04-06 19:39:26', '2', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('19', '2017-04-06 19:39:26', '9', '1', '2017-04-06 19:39:26', '2', 'cs', null);
INSERT INTO `devicefaultinfo` VALUES ('20', '2017-04-06 19:39:26', '10', '1', '2017-04-06 19:39:26', '2', 'cs', null);

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `imei` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `data` tinyblob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r3ggxoxe8qjvi5l36txymerjn` (`imei`),
  KEY `FK_lsiewmc9thirhkpqxmkj7wmr1` (`account_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'fsfd', null, '1078341206', null, null, null, null, null, '1', null);
INSERT INTO `product` VALUES ('2', '浙江华港染', '15立方韩中', '152513241', '旧款', '浙江省绍兴市绍兴县', '浙江省绍兴市柯桥区马鞍镇新二路', '120.651089', '30.186135', '2', null);

-- ----------------------------
-- Table structure for `sensordata`
-- ----------------------------
DROP TABLE IF EXISTS `sensordata`;
CREATE TABLE `sensordata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `storageLiquidLevel1` float DEFAULT NULL,
  `storageLiquidLevel2` float DEFAULT NULL,
  `storagePressure1` float DEFAULT NULL,
  `storagePressure2` float DEFAULT NULL,
  `gasifyPressure` float DEFAULT NULL,
  `gasifyTemperature` float DEFAULT NULL,
  `outValve1` varchar(255) DEFAULT NULL,
  `outValve2` varchar(255) DEFAULT NULL,
  `inValve1` varchar(255) DEFAULT NULL,
  `inValve2` varchar(255) DEFAULT NULL,
  `storageValve1` varchar(255) DEFAULT NULL,
  `storageValve2` varchar(255) DEFAULT NULL,
  `flowCutValve` varchar(255) DEFAULT NULL,
  `totalFlow` float DEFAULT NULL,
  `instantFlow` float DEFAULT NULL,
  `temperature1` float DEFAULT NULL,
  `pressure` float DEFAULT NULL,
  `temperature2` float DEFAULT NULL,
  `temperature3` float DEFAULT NULL,
  `fireDetector` varchar(255) DEFAULT NULL,
  `combustibleGasDetector` varchar(255) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `massFlow` float DEFAULT NULL,
  `volumeFlow` float DEFAULT NULL,
  `gaugedVolumeFlow` float DEFAULT NULL,
  `density` float DEFAULT NULL,
  `referenceDensity` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `pressure2` float DEFAULT NULL,
  `totalMassFlow` float DEFAULT NULL,
  `totalVolumeFlow` float DEFAULT NULL,
  `totalGaugedVolumeFlow` float DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `productId` int(11) NOT NULL,
  `rechargeTime` float DEFAULT NULL,
  `surplusFlow` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_date_index` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensordata
-- ----------------------------
INSERT INTO `sensordata` VALUES ('302', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:38', '1', null, null);
INSERT INTO `sensordata` VALUES ('303', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:38', '1', null, null);
INSERT INTO `sensordata` VALUES ('304', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:38', '1', null, null);
INSERT INTO `sensordata` VALUES ('305', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('306', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('307', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('308', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('309', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('310', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('311', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('312', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('313', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('314', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('315', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('316', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('317', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('318', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('319', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('320', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:39', '1', null, null);
INSERT INTO `sensordata` VALUES ('321', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('322', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('323', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('324', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('325', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('326', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('327', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('328', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('329', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('330', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('331', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('332', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('333', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('334', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('335', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('336', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('337', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('338', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('339', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('340', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('341', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('342', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:40', '1', null, null);
INSERT INTO `sensordata` VALUES ('343', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('344', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('345', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('346', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('347', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('348', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('349', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('350', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('351', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('352', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('353', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('354', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('355', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('356', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('357', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('358', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('359', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('360', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('361', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('362', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('363', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('364', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('365', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('366', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('367', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:41', '1', null, null);
INSERT INTO `sensordata` VALUES ('368', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('369', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('370', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('371', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('372', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('373', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('374', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('375', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('376', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('377', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('378', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('379', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('380', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('381', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('382', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('383', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('384', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('385', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('386', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('387', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('388', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:42', '1', null, null);
INSERT INTO `sensordata` VALUES ('389', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('390', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('391', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('392', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('393', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('394', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('395', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('396', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('397', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('398', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('399', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
INSERT INTO `sensordata` VALUES ('400', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:28:43', '1', null, null);
