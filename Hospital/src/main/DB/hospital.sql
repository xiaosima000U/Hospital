/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2017-09-20 22:16:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ssm_advice
-- ----------------------------
DROP TABLE IF EXISTS `ssm_advice`;
CREATE TABLE `ssm_advice` (
  `adviceid` int(8) NOT NULL AUTO_INCREMENT,
  `patientid` int(8) NOT NULL,
  `doctorid` int(8) NOT NULL,
  `subjectid` int(8) NOT NULL,
  `advicecontent` varchar(500) NOT NULL,
  `advicedate` varchar(12) NOT NULL,
  `adviceanswer` varchar(500) DEFAULT NULL,
  `adviceanswerdate` varchar(12) DEFAULT NULL,
  `isanswer` varchar(2) NOT NULL,
  PRIMARY KEY (`adviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_advice
-- ----------------------------
INSERT INTO `ssm_advice` VALUES ('1', '5', '4', '2', '头疼', '2017-05-13', null, null, 'N');
INSERT INTO `ssm_advice` VALUES ('2', '5', '3', '1', '肠胃不好，吃什么有用？', '2017-05-13', null, null, 'N');
INSERT INTO `ssm_advice` VALUES ('3', '5', '5', '1', '心情不好', '2017-05-13', null, null, 'N');
INSERT INTO `ssm_advice` VALUES ('4', '5', '7', '1', '你看看', '2017-05-13', 'hade', '2017-05-13', 'Y');
INSERT INTO `ssm_advice` VALUES ('5', '6', '5', '3', 'asdasdasdasd', '2017-05-13', null, null, 'N');
INSERT INTO `ssm_advice` VALUES ('6', '6', '7', '1', 'asdasdasd', '2017-05-13', '123133123123', '2017-05-13', 'Y');
INSERT INTO `ssm_advice` VALUES ('7', '9', '9', '1', '嗓子疼', '2017-05-13', '多喝水', '2017-05-13', 'Y');

-- ----------------------------
-- Table structure for ssm_adviceflow
-- ----------------------------
DROP TABLE IF EXISTS `ssm_adviceflow`;
CREATE TABLE `ssm_adviceflow` (
  `adviceflowid` int(8) NOT NULL AUTO_INCREMENT,
  `adviceid` int(8) NOT NULL,
  `userid` int(8) NOT NULL,
  `advicedate` int(12) NOT NULL,
  `advicecontent` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`adviceflowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_adviceflow
-- ----------------------------

-- ----------------------------
-- Table structure for ssm_business
-- ----------------------------
DROP TABLE IF EXISTS `ssm_business`;
CREATE TABLE `ssm_business` (
  `id` int(8) NOT NULL,
  `menucode` varchar(8) NOT NULL,
  `businesscode` varchar(8) NOT NULL,
  `businessname` varchar(64) NOT NULL,
  `businessnamekey` varchar(128) DEFAULT NULL,
  `url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_business
-- ----------------------------
INSERT INTO `ssm_business` VALUES ('1', 'HOS0001', 'U0001', '密码设置', null, '/user/userPatientPasswordSet');
INSERT INTO `ssm_business` VALUES ('2', 'HOS0002', 'U0002', '个人资料修改', null, '/user/userPatientInfoSet');
INSERT INTO `ssm_business` VALUES ('3', 'HOS0003', 'U0003', '预约管理', null, '/user/userOrder');
INSERT INTO `ssm_business` VALUES ('4', 'HOS0004', 'U0004', '病例查询', null, '/user/userCaseQuery');
INSERT INTO `ssm_business` VALUES ('5', 'HOS0005', 'U0005', '医生咨询', null, '/user/userDoctorAdvice');
INSERT INTO `ssm_business` VALUES ('6', 'HOS0006', 'U0006', '医生评价', null, '/user/userDoctorEvaluate');
INSERT INTO `ssm_business` VALUES ('7', 'HOS0007', 'D0001', '预约处理', null, '/doctor/doctorOrderManager');
INSERT INTO `ssm_business` VALUES ('8', 'HOS0008', 'D0002', '病人信息查询', null, '/doctor/doctorPatientQuery');
INSERT INTO `ssm_business` VALUES ('9', 'HOS0009', 'D0003', '病例管理', null, '/doctor/doctorCaseManager');
INSERT INTO `ssm_business` VALUES ('10', 'HOS0010', 'D0004', '咨询信息回复', null, '/doctor/doctorAdviceManager');
INSERT INTO `ssm_business` VALUES ('11', 'HOS0011', 'M0001', '病人管理', null, '/manager/managerPatient');
INSERT INTO `ssm_business` VALUES ('12', 'HOS0012', 'M0002', '医生查删改', null, '/manager/managerDocotr');
INSERT INTO `ssm_business` VALUES ('13', 'HOS0012', 'M0003', '医生新增', null, '/manager/managerDocotrAdd');

-- ----------------------------
-- Table structure for ssm_case
-- ----------------------------
DROP TABLE IF EXISTS `ssm_case`;
CREATE TABLE `ssm_case` (
  `caseid` int(8) NOT NULL AUTO_INCREMENT,
  `orderid` int(8) DEFAULT NULL,
  `adivceid` int(8) DEFAULT NULL,
  `patientid` int(8) NOT NULL,
  `doctorid` int(8) NOT NULL,
  `isfirst` int(1) NOT NULL,
  `subjectid` int(8) NOT NULL,
  `visitdate` varchar(12) NOT NULL,
  `diagnosis` varchar(500) DEFAULT NULL,
  `treat` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`caseid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_case
-- ----------------------------
INSERT INTO `ssm_case` VALUES ('1', null, null, '5', '3', '0', '1', '2017-05-11', '3333', 'qqqq');
INSERT INTO `ssm_case` VALUES ('2', null, null, '5', '3', '1', '1', '2017-05-13', 'adfasdfadf', 'sdfasdfasdfadsfadfa');
INSERT INTO `ssm_case` VALUES ('3', null, null, '5', '3', '0', '1', '2017-05-13', '又感冒了', '继续挂水');
INSERT INTO `ssm_case` VALUES ('5', null, null, '5', '7', '1', '1', '2017-05-13', '心情不好看看', '找个男朋友');
INSERT INTO `ssm_case` VALUES ('6', null, null, '6', '7', '1', '1', '2017-05-13', '发烧', '挂水 在挂水');
INSERT INTO `ssm_case` VALUES ('7', null, null, '9', '9', '1', '1', '2017-05-13', '阑尾炎', '挂水，开到');

-- ----------------------------
-- Table structure for ssm_doctor
-- ----------------------------
DROP TABLE IF EXISTS `ssm_doctor`;
CREATE TABLE `ssm_doctor` (
  `doctorid` int(8) NOT NULL AUTO_INCREMENT,
  `userid` int(8) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `brith` varchar(12) DEFAULT NULL,
  `subjectid` int(8) DEFAULT NULL,
  `professionid` int(8) DEFAULT NULL,
  `phonenum` varchar(56) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `isphoneIdentify` varchar(2) DEFAULT NULL,
  `isemailIdentify` varchar(2) DEFAULT NULL,
  `goodat` varchar(128) DEFAULT NULL,
  `summary` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`doctorid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_doctor
-- ----------------------------
INSERT INTO `ssm_doctor` VALUES ('3', '13', '张三', 'male', '1988-05-22', '1', '1', null, null, null, null, '内科手术', '从医1000年，都成精了。');
INSERT INTO `ssm_doctor` VALUES ('4', '14', '李四', 'famale', '2003-05-13', '2', '2', null, null, null, null, '外科', '有资历，有学历');
INSERT INTO `ssm_doctor` VALUES ('5', '15', '王五', null, '2017-05-19', '3', '1', null, null, null, null, 'wqeqwe', 'qweew');
INSERT INTO `ssm_doctor` VALUES ('7', '17', '黄药师', 'male', '2012-05-03', '1', '1', null, null, null, null, '其二', '去玩儿');
INSERT INTO `ssm_doctor` VALUES ('8', '18', '龙武', 'male', '2017-05-10', '1', '1', null, null, null, null, '去玩儿群二无', '去玩儿群');
INSERT INTO `ssm_doctor` VALUES ('9', '19', '好医生', 'male', '1983-05-10', '1', '2', null, null, null, null, '各种手术', '无所不饿');

-- ----------------------------
-- Table structure for ssm_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `ssm_evaluate`;
CREATE TABLE `ssm_evaluate` (
  `evaluateid` int(8) NOT NULL AUTO_INCREMENT,
  `doctorid` int(8) NOT NULL,
  `patientid` int(8) NOT NULL,
  `evaluatelevel` varchar(2) NOT NULL,
  `evaluatecontent` varchar(128) DEFAULT NULL,
  `evaluatedate` varchar(12) NOT NULL,
  PRIMARY KEY (`evaluateid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_evaluate
-- ----------------------------
INSERT INTO `ssm_evaluate` VALUES ('1', '3', '5', '5', '123123', '2017-05-13');
INSERT INTO `ssm_evaluate` VALUES ('2', '7', '5', '5', '飞车满意', '2017-05-13');
INSERT INTO `ssm_evaluate` VALUES ('3', '7', '6', '5', 'feichnagban', '2017-05-13');
INSERT INTO `ssm_evaluate` VALUES ('4', '9', '9', '5', 'asdf', '2017-05-13');

-- ----------------------------
-- Table structure for ssm_fee
-- ----------------------------
DROP TABLE IF EXISTS `ssm_fee`;
CREATE TABLE `ssm_fee` (
  `feeid` int(8) NOT NULL AUTO_INCREMENT,
  `caseid` int(8) NOT NULL,
  `feecategory` varchar(20) NOT NULL,
  `medicinalid` int(8) NOT NULL,
  `medicinalnum` int(8) NOT NULL,
  PRIMARY KEY (`feeid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_fee
-- ----------------------------
INSERT INTO `ssm_fee` VALUES ('15', '3', '1', '2', '2');
INSERT INTO `ssm_fee` VALUES ('16', '3', '1', '3', '3');
INSERT INTO `ssm_fee` VALUES ('17', '3', '1', '1', '1');
INSERT INTO `ssm_fee` VALUES ('20', '2', '1', '1', '2');
INSERT INTO `ssm_fee` VALUES ('21', '2', '2', '5', '1');
INSERT INTO `ssm_fee` VALUES ('23', '2', '1', '3', '1');
INSERT INTO `ssm_fee` VALUES ('24', '1', '1', '1', '1');
INSERT INTO `ssm_fee` VALUES ('25', '5', '2', '5', '1');
INSERT INTO `ssm_fee` VALUES ('26', '5', '3', '4', '1');
INSERT INTO `ssm_fee` VALUES ('27', '5', '1', '1', '1');
INSERT INTO `ssm_fee` VALUES ('28', '7', '2', '5', '1');
INSERT INTO `ssm_fee` VALUES ('29', '7', '3', '4', '1');
INSERT INTO `ssm_fee` VALUES ('30', '7', '1', '1', '1');
INSERT INTO `ssm_fee` VALUES ('31', '7', '1', '1', '2');

-- ----------------------------
-- Table structure for ssm_manager
-- ----------------------------
DROP TABLE IF EXISTS `ssm_manager`;
CREATE TABLE `ssm_manager` (
  `managerid` int(8) NOT NULL AUTO_INCREMENT,
  `userid` int(8) NOT NULL,
  `managerrealname` varchar(20) DEFAULT NULL,
  `usertype` varchar(2) NOT NULL,
  `phonenum` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `isemailIdentify` varchar(1) DEFAULT NULL,
  `isphoneIdentify` varchar(1) DEFAULT NULL,
  `managersex` varchar(2) DEFAULT NULL,
  `managerbrith` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`managerid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_manager
-- ----------------------------
INSERT INTO `ssm_manager` VALUES ('1', '15', 'admin', '', null, null, null, null, '男', '19950225');

-- ----------------------------
-- Table structure for ssm_medicinal
-- ----------------------------
DROP TABLE IF EXISTS `ssm_medicinal`;
CREATE TABLE `ssm_medicinal` (
  `medicinalid` int(8) NOT NULL AUTO_INCREMENT,
  `medicinalname` varchar(128) NOT NULL,
  `medicinalprice` int(8) NOT NULL,
  PRIMARY KEY (`medicinalid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_medicinal
-- ----------------------------
INSERT INTO `ssm_medicinal` VALUES ('1', '阿莫西林', '8');
INSERT INTO `ssm_medicinal` VALUES ('2', '感冒灵', '16');
INSERT INTO `ssm_medicinal` VALUES ('3', '凡士林', '12');
INSERT INTO `ssm_medicinal` VALUES ('4', '门诊费', '10');
INSERT INTO `ssm_medicinal` VALUES ('5', '挂号费', '2');

-- ----------------------------
-- Table structure for ssm_menu
-- ----------------------------
DROP TABLE IF EXISTS `ssm_menu`;
CREATE TABLE `ssm_menu` (
  `id` int(8) NOT NULL,
  `menucode` varchar(8) NOT NULL,
  `menuname` varchar(56) NOT NULL,
  `menunamekey` varchar(128) DEFAULT NULL,
  `sortnum` int(8) NOT NULL,
  `ownertype` varchar(2) NOT NULL,
  `menudesc` varchar(128) DEFAULT NULL,
  `position` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_menu
-- ----------------------------
INSERT INTO `ssm_menu` VALUES ('1', 'HOS0001', '密码设置', '', '1', 'U', '', 'HEAD');
INSERT INTO `ssm_menu` VALUES ('2', 'HOS0002', '个人资料修改', null, '2', 'U', null, 'HEAD');
INSERT INTO `ssm_menu` VALUES ('3', 'HOS0003', '预约管理', null, '3', 'U', null, 'LEFT');
INSERT INTO `ssm_menu` VALUES ('4', 'HOS0004', '病例查询', null, '4', 'U', null, 'LEFT');
INSERT INTO `ssm_menu` VALUES ('5', 'HOS0005', '医生咨询', null, '5', 'U', null, 'LEFT');
INSERT INTO `ssm_menu` VALUES ('6', 'HOS0006', '医生评价', null, '6', 'U', null, 'LEFT');
INSERT INTO `ssm_menu` VALUES ('7', 'HOS0007', '预约处理', null, '7', 'D', null, 'LEFT');
INSERT INTO `ssm_menu` VALUES ('8', 'HOS0008', '病人信息查询', null, '8', 'D', null, 'LEFT');
INSERT INTO `ssm_menu` VALUES ('9', 'HOS0009', '病例管理', null, '9', 'D', null, 'LEFT');
INSERT INTO `ssm_menu` VALUES ('10', 'HOS0010', '咨询信息回复', null, '10', 'D', null, 'LEFT');
INSERT INTO `ssm_menu` VALUES ('11', 'HOS0011', '病人管理', null, '11', 'M', null, 'LEFT');
INSERT INTO `ssm_menu` VALUES ('12', 'HOS0012', '医生管理', null, '12', 'M', null, 'LEFT');

-- ----------------------------
-- Table structure for ssm_order
-- ----------------------------
DROP TABLE IF EXISTS `ssm_order`;
CREATE TABLE `ssm_order` (
  `orderid` int(8) NOT NULL AUTO_INCREMENT,
  `patientid` int(8) NOT NULL,
  `doctorid` int(8) NOT NULL,
  `subjectid` int(8) NOT NULL,
  `orderdate` varchar(20) NOT NULL,
  `orderstate` varchar(8) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_order
-- ----------------------------
INSERT INTO `ssm_order` VALUES ('2', '5', '3', '1', '2017-05-24', '已接受');
INSERT INTO `ssm_order` VALUES ('3', '5', '5', '3', '2017-05-26', '已发起');
INSERT INTO `ssm_order` VALUES ('4', '5', '4', '2', '2017-05-04', '已发起');
INSERT INTO `ssm_order` VALUES ('5', '5', '4', '2', '2017-05-04', '待发起');
INSERT INTO `ssm_order` VALUES ('6', '5', '3', '1', '2017-05-27', '待发起');
INSERT INTO `ssm_order` VALUES ('7', '5', '3', '1', '2017-05-24', '待发起');
INSERT INTO `ssm_order` VALUES ('8', '5', '5', '3', '2017-05-13', '待发起');
INSERT INTO `ssm_order` VALUES ('9', '5', '7', '1', '2017-05-18', '已接受');
INSERT INTO `ssm_order` VALUES ('10', '6', '3', '1', '2017-05-11', '已发起');
INSERT INTO `ssm_order` VALUES ('11', '6', '7', '1', '2017-05-31', '已接受');
INSERT INTO `ssm_order` VALUES ('12', '9', '9', '1', '2017-05-17', '已接受');
INSERT INTO `ssm_order` VALUES ('13', '9', '9', '1', '2017-05-26', '已发起');

-- ----------------------------
-- Table structure for ssm_patient
-- ----------------------------
DROP TABLE IF EXISTS `ssm_patient`;
CREATE TABLE `ssm_patient` (
  `patientid` int(8) NOT NULL AUTO_INCREMENT,
  `userid` int(8) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `weight` int(4) DEFAULT NULL,
  `brith` varchar(20) DEFAULT NULL,
  `nation` varchar(12) DEFAULT NULL,
  `IDCardnum` varchar(50) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `phonenum` varchar(50) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `isemailIdentify` varchar(2) DEFAULT NULL,
  `isphoneIdentify` varchar(2) DEFAULT NULL,
  `anaphylactogen` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`patientid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_patient
-- ----------------------------
INSERT INTO `ssm_patient` VALUES ('5', '12', '张三三', 'famale', '123', '2017-05-09', '汉族', '54132412341324134134', '乌鲁木齐', '23', null, null, null, '阿莫西林、青霉素');
INSERT INTO `ssm_patient` VALUES ('6', '19', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ssm_patient` VALUES ('7', '20', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ssm_patient` VALUES ('8', '21', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ssm_patient` VALUES ('9', '15', '大头', 'male', '100', '2012-05-02', '汉族', '3546543264523165', '伦敦', '13856898569', null, null, null, '没有');

-- ----------------------------
-- Table structure for ssm_profession
-- ----------------------------
DROP TABLE IF EXISTS `ssm_profession`;
CREATE TABLE `ssm_profession` (
  `professionid` int(8) NOT NULL AUTO_INCREMENT,
  `professionname` varchar(20) NOT NULL,
  PRIMARY KEY (`professionid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_profession
-- ----------------------------
INSERT INTO `ssm_profession` VALUES ('1', '主任');
INSERT INTO `ssm_profession` VALUES ('2', '医师');
INSERT INTO `ssm_profession` VALUES ('3', '专家');
INSERT INTO `ssm_profession` VALUES ('4', '副主任');

-- ----------------------------
-- Table structure for ssm_subject
-- ----------------------------
DROP TABLE IF EXISTS `ssm_subject`;
CREATE TABLE `ssm_subject` (
  `subjectid` int(8) NOT NULL AUTO_INCREMENT,
  `subjectname` varchar(50) NOT NULL,
  `subjectintruction` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`subjectid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_subject
-- ----------------------------
INSERT INTO `ssm_subject` VALUES ('1', '内科', '无');
INSERT INTO `ssm_subject` VALUES ('2', '外科', '无');
INSERT INTO `ssm_subject` VALUES ('3', '骨科', '无');

-- ----------------------------
-- Table structure for ssm_user
-- ----------------------------
DROP TABLE IF EXISTS `ssm_user`;
CREATE TABLE `ssm_user` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(2) NOT NULL,
  `registertime` varchar(20) NOT NULL,
  `lastlogintime` varchar(20) NOT NULL,
  `logintimes` int(1) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_user
-- ----------------------------
INSERT INTO `ssm_user` VALUES ('12', '123', '123', '', '', '', '0');
INSERT INTO `ssm_user` VALUES ('13', '123123', '123123', '', '', '', '0');
INSERT INTO `ssm_user` VALUES ('14', 'qqq', 'qqq', '', '', '', '0');
INSERT INTO `ssm_user` VALUES ('15', 'www', 'www', '', '', '', '0');
INSERT INTO `ssm_user` VALUES ('16', 'eee', 'eee', '', '', '', '0');
INSERT INTO `ssm_user` VALUES ('17', 'huangyaoshi', '123123', '', '', '', '0');
INSERT INTO `ssm_user` VALUES ('18', 'qweqweqwe', '123123', '', '', '', '0');
INSERT INTO `ssm_user` VALUES ('19', 'asd', 'asd', '', '', '', '0');
INSERT INTO `ssm_user` VALUES ('21', 'asdasdasd', 'asd', '', '', '', '0');
INSERT INTO `ssm_user` VALUES ('22', 'ddd', 'ddd', '', '', '', '0');
INSERT INTO `ssm_user` VALUES ('25', 'ccc', 'ccc', '', '', '', '0');
