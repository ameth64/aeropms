﻿# Host: localhost  (Version: 5.5.16)
# Date: 2014-08-11 11:19:40
# Generator: MySQL-Front 5.3  (Build 1.27)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

#
# Source for table "think_contact"
#

DROP TABLE IF EXISTS `think_contact`;
CREATE TABLE `think_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `letter` varchar(50) NOT NULL DEFAULT '' COMMENT '拼音',
  `company` varchar(30) NOT NULL DEFAULT '' COMMENT '公司',
  `dept` varchar(20) NOT NULL DEFAULT '' COMMENT '部门',
  `position` varchar(20) NOT NULL DEFAULT '' COMMENT '职位',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮件',
  `office_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '办公电话',
  `mobile_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '移动电话',
  `website` varchar(50) NOT NULL DEFAULT '' COMMENT '网站',
  `im` varchar(20) NOT NULL DEFAULT '' COMMENT '即时通讯',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `remark` text COMMENT '备注',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='think_user_info';

#
# Data for table "think_contact"
#

/*!40000 ALTER TABLE `think_contact` DISABLE KEYS */;
INSERT INTO `think_contact` VALUES (9,'马腾化','MTH','腾讯','CEO','CEO','pony@qq.com','公电话','手机','','','2',1,'',1),(10,'雷军','LJ','小米','CEO','CEO','yyyyy@yy.com','010-12341234','139-1234-1234','www.sohu.com','1234567','',1,'',1),(11,'张三','ZS','张三','IT','CEO','zhang@zhang.com','654','321','','12356','1',1,'',1),(21,'223e23','','','','','abc@sohu.com','23232','','','','',1,'',1),(22,'123151','','222222222222','1231','234','abc@sohu.com','231','234','1231231','234','2342342',1,'123123',1),(23,'1234124123','','123','1231','12','312@sohu.com','2312','312','312','123','11231231',1,'3123',0),(24,'132','','','','','123@13.com','21331','','','','',1,'',0);
/*!40000 ALTER TABLE `think_contact` ENABLE KEYS */;

#
# Source for table "think_customer"
#

DROP TABLE IF EXISTS `think_customer`;
CREATE TABLE `think_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `letter` varchar(50) NOT NULL DEFAULT '' COMMENT '拼音',
  `biz_license` varchar(30) NOT NULL DEFAULT '' COMMENT '营业许可',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `contact` varchar(20) NOT NULL DEFAULT '' COMMENT '联系人姓名',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮件地址',
  `office_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '办公电话',
  `mobile_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '移动电话',
  `fax` varchar(20) NOT NULL DEFAULT '' COMMENT '传真',
  `salesman` varchar(50) NOT NULL DEFAULT '' COMMENT '业务员',
  `im` varchar(20) NOT NULL DEFAULT '' COMMENT '即时通讯',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `remark` text,
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `payment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

#
# Data for table "think_customer"
#

/*!40000 ALTER TABLE `think_customer` DISABLE KEYS */;
INSERT INTO `think_customer` VALUES (29,'名称','MC','之间','教程','路线','已经','不敢','手机','重装','因为','聊天','定制',1,'杀杀杀杀杀杀杀杀杀',1,'是'),(30,'名称','MC','是','搜索','是','是','是','','','','','',0,'',0,'是');
/*!40000 ALTER TABLE `think_customer` ENABLE KEYS */;

#
# Source for table "think_dept"
#

DROP TABLE IF EXISTS `think_dept`;
CREATE TABLE `think_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `dept_no` varchar(20) NOT NULL DEFAULT '' COMMENT '部门编号',
  `dept_grade_id` int(11) NOT NULL DEFAULT '0' COMMENT '部门等级ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `sort` varchar(20) NOT NULL DEFAULT '' COMMENT '排序',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

#
# Data for table "think_dept"
#

/*!40000 ALTER TABLE `think_dept` DISABLE KEYS */;
INSERT INTO `think_dept` VALUES (1,0,'A1',0,'小微企业','小微','','',0),(2,1,'YYB',18,'运营部','运营','5','',0),(3,1,'XXB',18,'IT部','IT','4','',0),(5,1,'ZJB',18,'总经办','总经','1','',0),(6,1,'GLB',18,'管理部','管理','2','',0),(7,1,'XSB',18,'销售部','销售','3','',0),(8,1,'CWB',18,'财务部','财务','2','',0),(21,1,'XSB',18,'采购部','采购','3','',0),(23,6,'HR',16,'人事科','人事','','',0),(24,6,'ZWK',16,'总务科','总务','','',0),(25,8,'KJK',16,'会计科','会计','','',0),(26,8,'JRK',16,'金融科','金融','','',0);
/*!40000 ALTER TABLE `think_dept` ENABLE KEYS */;

#
# Source for table "think_dept_grade"
#

DROP TABLE IF EXISTS `think_dept_grade`;
CREATE TABLE `think_dept_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_no` varchar(10) NOT NULL DEFAULT '' COMMENT '部门级别编码',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `sort` varchar(10) NOT NULL DEFAULT '' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

#
# Data for table "think_dept_grade"
#

/*!40000 ALTER TABLE `think_dept_grade` DISABLE KEYS */;
INSERT INTO `think_dept_grade` VALUES (13,'DG3','部门','3',0),(16,'DG1','科','1',0),(18,'DG2','部','2',0);
/*!40000 ALTER TABLE `think_dept_grade` ENABLE KEYS */;

#
# Source for table "think_doc"
#

DROP TABLE IF EXISTS `think_doc`;
CREATE TABLE `think_doc` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `folder` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

#
# Data for table "think_doc"
#

/*!40000 ALTER TABLE `think_doc` DISABLE KEYS */;
INSERT INTO `think_doc` VALUES (84,'2014-0001','gggggggggggg','ggggggggggg',48,'',1,'管理员',1403947383,0,0);
/*!40000 ALTER TABLE `think_doc` ENABLE KEYS */;

#
# Source for table "think_duty"
#

DROP TABLE IF EXISTS `think_duty`;
CREATE TABLE `think_duty` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `duty_no` varchar(10) NOT NULL DEFAULT '' COMMENT '职责编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `sort` varchar(20) NOT NULL DEFAULT '' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "think_duty"
#

/*!40000 ALTER TABLE `think_duty` DISABLE KEYS */;
INSERT INTO `think_duty` VALUES (14,'P001','采购员','',0,'采购员'),(15,'S001','业务员','',0,'');
/*!40000 ALTER TABLE `think_duty` ENABLE KEYS */;

#
# Source for table "think_file"
#

DROP TABLE IF EXISTS `think_file`;
CREATE TABLE `think_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(32) DEFAULT NULL COMMENT '安全ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `savename` varchar(100) NOT NULL DEFAULT '' COMMENT '保存路径',
  `size` varchar(20) NOT NULL DEFAULT '' COMMENT '文件大小',
  `extension` varchar(20) NOT NULL DEFAULT '' COMMENT '扩展名',
  `module` varchar(20) NOT NULL DEFAULT '0' COMMENT '应用模块',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`,`module`)
) ENGINE=MyISAM AUTO_INCREMENT=1658 DEFAULT CHARSET=utf8;

#
# Data for table "think_file"
#

/*!40000 ALTER TABLE `think_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_file` ENABLE KEYS */;

#
# Source for table "think_flow"
#

DROP TABLE IF EXISTS `think_flow`;
CREATE TABLE `think_flow` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `confirm` varchar(200) NOT NULL DEFAULT '' COMMENT '裁决数据',
  `confirm_name` text NOT NULL COMMENT '裁决显示内容',
  `consult` varchar(200) NOT NULL DEFAULT '' COMMENT '协商数据',
  `consult_name` text NOT NULL COMMENT '协商显示内容',
  `refer` varchar(200) NOT NULL DEFAULT '' COMMENT '抄送数据',
  `refer_name` text NOT NULL COMMENT '抄送显示内容',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '流程类型',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `emp_no` varchar(20) DEFAULT NULL COMMENT '员工编号',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `dept_id` int(11) NOT NULL DEFAULT '0' COMMENT '部门ID',
  `dept_name` varchar(20) NOT NULL DEFAULT '' COMMENT '部门名称',
  `create_date` varchar(10) NOT NULL DEFAULT '' COMMENT '创建日期',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `step` int(11) NOT NULL DEFAULT '0' COMMENT '目前阶段状态',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `refer_name` (`refer_name`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

#
# Data for table "think_flow"
#

/*!40000 ALTER TABLE `think_flow` DISABLE KEYS */;
INSERT INTO `think_flow` VALUES (176,'1234','请假申请书','请假申请样式','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401288898,0,20,0),(177,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401322752,0,20,0),(178,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401322791,0,20,0),(179,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401322809,0,20,0),(180,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401322831,0,20,0),(181,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401322843,0,20,0),(182,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401322859,0,20,0),(183,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401322888,0,20,0),(184,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401322918,0,20,0),(185,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401322958,0,20,0),(186,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401323054,0,20,0),(187,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401323078,0,20,0),(188,'1234','ssssssssssss','请假申请样式sssssssssss','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','dept_23|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401323097,0,20,0),(189,'1234','5005','&nbsp; &nbsp; 5005请假申请样式','3003|2001|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',60,'5005','员工5005',25,'会计科','',1401323191,0,40,0),(190,'小微请假2014-001','test','请假申请样式','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span id=\"dgp_16_2\" data=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span id=\"dgp_18_3\" data=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span id=\"dept_23\" data=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',1,'admin','管理员',1,'小微企业','',1401639033,0,20,0),(191,'小微请假2014-002','test123','请假申请样式','3002||','<span id=\"3002\" data=\"3002\"><nobr><b title=\"经理3002/经理\">经理3002/经理</b></nobr></span>','','','','','34','',1,'admin','管理员',1,'小微企业','',1401639204,0,20,0),(192,'小微请假2014-003','aaa','请假申请样式aaa','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',1,'admin','管理员',1,'小微企业','',1401760167,0,20,0),(193,'小微请假2014-001','测试001','请假人员，需经过！色分手分手费身份发个帖','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','33','',1,'admin','管理员',1,'小微企业','',1401761206,0,20,0),(194,'小微请假2014-004','GFG','请假申请样式','3001||','<span data=\"3001\" id=\"3001\"><nobr><b title=\"经理3001/经理\">经理3001/经理</b></nobr></span>','','','','','34','',1,'admin','管理员',1,'小微企业','',1401775094,0,20,0),(195,'小微请假2014-002','伯伯佣兵','请假人员，需经过！','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','33','',1,'admin','管理员',1,'小微企业','',1401777440,0,20,0),(196,'小微请假2014-005','test333','<table class=\"MsoTableGrid\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"border:none;\" align=\"center\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td width=\"175\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">申请日期</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"175\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"175\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">部门别</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"175\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"175\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">姓名</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"175\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">日期</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">出差地点及说明</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">车资</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">火车</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">机票</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">住宿费</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">手机费</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">餐费</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">杂费</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">小</span><span style=\"font-family:SimSun;\">计</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"369\" colspan=\"7\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"right\" style=\"text-align:right;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">合计（小写）</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"680\" colspan=\"19\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"128\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">预支差旅费</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"397\" colspan=\"10\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"113\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">实支金额</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"411\" colspan=\"10\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">备注</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"936\" colspan=\"25\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"175\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">付款金额与方式</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"350\" colspan=\"8\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"113\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">收款单位</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"411\" colspan=\"10\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"128\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">付款到期日</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"241\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"113\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">收款银行</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"227\" colspan=\"7\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"113\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">收款账户</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"227\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">总金额￥</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"312\" colspan=\"7\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"624\" colspan=\"18\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">□现</span><span style=\"font-family:SimSun;\">&nbsp; </span><span style=\"font-family:SimSun;\">金</span><span style=\"font-family:SimSun;\">&nbsp;&nbsp;&nbsp; </span><span style=\"font-family:SimSun;\">□银行存款</span><span style=\"font-family:SimSun;\">&nbsp;&nbsp;&nbsp; </span><span style=\"font-family:SimSun;\">□支票</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"1049\" colspan=\"26\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">财务部填写：</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"150\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">总经理</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">见习总经理</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">财务部</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">出纳</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">行政部</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">部门主管</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">申请人</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"150\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','admin||','<span data=\"admin\" id=\"admin\"><nobr><b title=\"管理员/主管\">管理员/主管</b></nobr></span>','','','','','34','',1,'admin','管理员',1,'小微企业','',1401795711,0,40,0),(197,'小微请假2014-006','test666','<table class=\"MsoTableGrid\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"1049\" style=\"width:524.5pt;border:none;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td width=\"175\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">申请日期</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"175\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"175\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">部门别</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"175\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"175\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">姓名</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"175\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">日期</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">出差地点及说明</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">车资</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">火车</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">机票</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">住宿费</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">手机费</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">餐费</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">杂费</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">小</span><span style=\"font-family:SimSun;\">计</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"255\" colspan=\"6\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"85\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"369\" colspan=\"7\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"right\" style=\"text-align:right;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">合计（小写）</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"680\" colspan=\"19\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"128\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">预支差旅费</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"397\" colspan=\"10\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"113\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">实支金额</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"411\" colspan=\"10\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">备注</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"936\" colspan=\"25\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"175\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">付款金额与方式</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"350\" colspan=\"8\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"113\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">收款单位</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"411\" colspan=\"10\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"128\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">付款到期日</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"241\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"113\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">收款银行</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"227\" colspan=\"7\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"113\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">收款账户</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"227\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"113\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">总金额￥</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"312\" colspan=\"7\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"624\" colspan=\"18\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">□现</span><span style=\"font-family:SimSun;\">&nbsp; </span><span style=\"font-family:SimSun;\">金</span><span style=\"font-family:SimSun;\">&nbsp;&nbsp;&nbsp; </span><span style=\"font-family:SimSun;\">□银行存款</span><span style=\"font-family:SimSun;\">&nbsp;&nbsp;&nbsp; </span><span style=\"font-family:SimSun;\">□支票</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"1049\" colspan=\"26\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">财务部填写：</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"150\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">总经理</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">见习总经理</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">财务部</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">出纳</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">行政部</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">部门主管</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">申请人</span><span style=\"font-family:SimSun;\"></span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"150\" colspan=\"3\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"4\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"5\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"150\" colspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n\t\t\t\t<p class=\"MsoNormal\">\r\n\t\t\t\t\t<span style=\"font-family:SimSun;\">&nbsp;</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','1003||','<span data=\"1003\" id=\"1003\"><nobr><b title=\"副总1003/副总\">副总1003/副总</b></nobr></span>','','','','','34','',1,'admin','管理员',1,'小微企业','',1401795852,0,20,0),(198,'小微通讯2014-001','test888','<table border=\"1\" style=\"width:100%;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>部&nbsp;&nbsp;&nbsp;&nbsp;门</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t{DEPT}<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>使用人</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>12312 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>通讯工具类别</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>（&nbsp;）固定电话&nbsp;&nbsp;（&nbsp;）移动电话&nbsp;&nbsp;（&nbsp;）其他</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>号&nbsp;&nbsp;码</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>1231231123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用（合计）</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>人民币（大写）123123</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用明细</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','1003||','<span data=\"1003\" id=\"1003\"><nobr><b title=\"副总1003/副总\">副总1003/副总</b></nobr></span>','','','','','8','',1,'admin','管理员',1,'小微企业','',1401795937,0,40,0),(199,'小微请假2014-003','test','test','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','33','',1,'admin','管理员',1,'小微企业','',1401800059,0,20,0),(200,'小微通讯2014-002','test','<table border=\"1\" style=\"width:100%;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>部&nbsp;&nbsp;&nbsp;&nbsp;门</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t{DEPT}<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>使用人</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>12312 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>通讯工具类别</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>（&nbsp;）固定电话&nbsp;&nbsp;（&nbsp;）移动电话&nbsp;&nbsp;（&nbsp;）其他</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>号&nbsp;&nbsp;码</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>1231231123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用（合计）</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>人民币（大写）123123</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用明细</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','2001||','<span data=\"2001\" id=\"2001\"><nobr><b title=\"总监2001/总监\">总监2001/总监</b></nobr></span>','2001||','<span data=\"2001\" id=\"2001\"><nobr><b title=\"总监2001/总监\">总监2001/总监</b></nobr></span>','2001||','<span data=\"2001\" id=\"2001\"><nobr><b title=\"总监2001/总监\">总监2001/总监</b></nobr><b>;&nbsp;</b></span>','8','',1,'admin','管理员',1,'小微企业','',1401800157,0,20,0),(201,'小微通讯2014-003','5月话费','<table border=\"1\" style=\"width:100%;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>部&nbsp;&nbsp;&nbsp;&nbsp;门</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t{DEPT}<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>使用人</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>12312 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>通讯工具类别</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>（&nbsp;）固定电话&nbsp;&nbsp;（&nbsp;）移动电话&nbsp;&nbsp;（&nbsp;）其他</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>号&nbsp;&nbsp;码</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>1231231123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用（合计）</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>人民币（大写）123123</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用明细</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>顶顶顶 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','dept_21|','<span data=\"dept_21\" id=\"dept_21\"><nobr><b title=\"采购部<dept@group>\">采购部<dept@group></dept@group></b></nobr></span>','','','','','8','',1,'admin','管理员',1,'小微企业','',1401800493,0,20,0),(202,'小微通讯2014-004','111','<table border=\"1\" style=\"width:100%;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>部&nbsp;&nbsp;&nbsp;&nbsp;门</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t111<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>使用人</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>12312 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>通讯工具类别</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>（ 1）固定电话&nbsp;&nbsp;（&nbsp;）移动电话&nbsp;&nbsp;（&nbsp;）其他</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>号&nbsp;&nbsp;码</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>1231231123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用（合计）</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>人民币（大写）123123</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用明细</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>1111 </span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','dept_5|','<span data=\"dept_5\" id=\"dept_5\"><nobr><b title=\"总经办&lt;dept@group&gt;\">总经办<dept@group></dept@group></b></nobr></span>','dept_5|','<span data=\"dept_5\" id=\"dept_5\"><nobr><b title=\"总经办&lt;dept@group&gt;\">总经办<dept@group></dept@group></b></nobr></span>','dept_5|','<span data=\"dept_5\" id=\"dept_5\"><nobr><b title=\"总经办&lt;dept@group&gt;\">总经办<dept@group></dept@group></b></nobr><b>;&nbsp;</b></span>','8','',1,'admin','管理员',1,'小微企业','',1401800888,0,20,0),(203,'小微请假2014-004','联系我们','请假人员，需经过！','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','33','',1,'admin','管理员',1,'小微企业','',1401806158,0,20,0),(204,'小微请假2014-007','dddd','请假申请样式','admin|','<span data=\"dept_1\" id=\"dept_1\"><nobr><b title=\"小微企业<dept@group>\">小微企业<dept@group></dept@group></b></nobr></span>','admin|','<span data=\"dept_1\" id=\"dept_1\"><nobr><b title=\"小微企业<dept@group>\">小微企业<dept@group></dept@group></b></nobr></span>','admin|','<span data=\"dept_1\" id=\"dept_1\"><nobr><b title=\"小微企业<dept@group>\">小微企业<dept@group></dept@group></b></nobr><b>;&nbsp;</b></span>','34','',1,'admin','管理员',1,'小微企业','',1401847174,0,40,0);
INSERT INTO `think_flow` VALUES (205,'小微请假2014-008','222222','请假申请样式2','2002|admin||2002|admin||','<span data=\"2002\" id=\"2002\"><nobr><b title=\"总监2002/总监\">总监2002/总监</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"admin\" id=\"admin\"><nobr><b title=\"管理员/主管\">管理员/主管</b></nobr></span>','','','','','34','',1,'admin','管理员',1,'小微企业','',1401849411,0,40,0),(206,'小微请假2014-009','sdfsdf','请假申请样式','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',1,'admin','管理员',1,'小微企业','',1401854011,0,20,0),(207,'小微请假2014-010','123','请假申请样式','admin||','<span data=\"admin\" id=\"admin\"><nobr><b title=\"管理员/主管\">管理员/主管</b></nobr></span>','','','','','34','',1,'admin','管理员',1,'小微企业','',1401854526,0,40,0),(208,'小微请假2014-005','erterterte','请假人员，需经过！ertert','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','33','',1,'admin','管理员',1,'小微企业','',1401855082,0,20,0),(209,'小微通讯2014-005','46345345345','sadfasdf\r\n<table border=\"1\" style=\"width:100%;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>&nbsp;&nbsp;&nbsp;&nbsp;部&nbsp;&nbsp;&nbsp;&nbsp;门</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t{DEPT}<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>使用人</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>12312 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>通讯工具类别</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>（&nbsp;）固定电话&nbsp;&nbsp;（&nbsp;）移动电话&nbsp;&nbsp;（&nbsp;）其他</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>号&nbsp;&nbsp;码</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>1231231123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用（合计）</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>人民币（大写）123123</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用明细</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>dsadfsadf </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<p>\r\n\tasdfasdfasdfawegwe\r\n</p>\r\n<p>\r\n\t<br />\r\n</p>\r\n<p>\r\n\tasgwegwegwf\r\n</p>','3001||','<span data=\"3001\" id=\"3001\"><nobr><b title=\"经理3001/经理\">经理3001/经理</b></nobr></span>','3001|5001||3001|5001||','<span data=\"3001\" id=\"3001\"><nobr><b title=\"经理3001/经理\">经理3001/经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"5001\" id=\"5001\"><nobr><b title=\"员工5001/主管\">员工5001/主管</b></nobr></span>','','','8','bcef093547b1379c19ed9e34b789f4b9;',1,'admin','管理员',1,'小微企业','',1401896456,0,20,0),(210,'小微请假2014-006','qqw','请假人员，需经过！','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span id=\"dgp_16_2\" data=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span id=\"dgp_18_3\" data=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span id=\"dept_23\" data=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','33','',1,'admin','管理员',1,'小微企业','',1401898302,0,20,0),(211,'小微招待2014-001','33333','<table border=\"1\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t姓&nbsp;&nbsp;&nbsp;&nbsp;名\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t职务\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td rowspan=\"2\" colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t招待事由\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td rowspan=\"2\" colspan=\"9\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td rowspan=\"11\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t附件\r\n\t\t\t\t</p>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t张\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t部&nbsp;&nbsp;&nbsp;门\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"10\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t招待对象\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t招待人数\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"7\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t客人&nbsp;&nbsp;&nbsp;人，陪同&nbsp;&nbsp;&nbsp;人\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t备注\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"6\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td rowspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t日&nbsp;&nbsp;&nbsp;期\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td rowspan=\"2\" colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t招待地点\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td rowspan=\"2\" colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t餐饮费\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td rowspan=\"2\" colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t住宿费\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td rowspan=\"2\" colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t礼品礼金\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td rowspan=\"2\" colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t其他费用\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"12\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t金额合计\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t十\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t万\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t千\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t百\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t十\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t元\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t角\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t分\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t金额\r\n\t\t\t\t</p>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t（大写）\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"9\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t合计\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t财务审批\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t部门主管审批\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t财务复核\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t部门经理审核\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"7\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t经办人签名\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t报销人签名\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"7\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','dgp_9_2|dgp_7_3|','<SPAN id=dgp_9_2 data=\"dgp_9_2\"><NOBR><B title=科-经理>科-经理</B></NOBR><B><I class=icon-arrow-right></I></B></SPAN><SPAN id=dgp_7_3 data=\"dgp_7_3\"><NOBR><B title=部-总监>部-总监</B></NOBR></SPAN> ','dept_10|','<SPAN id=dept_10 data=\"dept_10\"><NOBR><B title=会计科>会计科</B></NOBR></SPAN> ','','','19','',1,'admin','管理员',1,'小微企业','',1401922421,0,20,0),(212,'小微请假2014-007','646','请假人员，需经过！46','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','33','',1,'admin','管理员',1,'小微企业','',1401938666,0,20,0),(213,'小微请假2014-011','11111111111111','请假申请样式','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',1,'admin','管理员',1,'小微企业','',1401950879,0,20,0),(214,'html','sdfsdfdsfds','<p>\r\n\t结婚\r\n</p>\r\n<p>\r\n\t结婚结婚结婚结婚结婚结婚结婚结婚结婚\r\n</p>','3003|','\r\n\t\t\t\t<span data=\"dp_25_2\" id=\"dp_25_2\"><nobr><b title=\"会计科-经理\">会计科-经理</b></nobr></span>\t\t\t','dp_26_2|','\r\n\t\t\t\t<span data=\"dp_26_2\" id=\"dp_26_2\"><nobr><b title=\"金融科-经理\">金融科-经理</b></nobr></span>\t\t\t','dp_26_3|','\r\n\t\t\t\t<span data=\"dp_26_3\" id=\"dp_26_3\"><nobr><b title=\"金融科-总监\">金融科-总监</b><a class=\"del\" title=\"删除\"><i class=\"fa fa-times\"></i></a></nobr></span>\t\t\t','36','',1,'admin','管理员',1,'小微企业','',1401951407,0,20,0),(215,'小微通讯2014-006','sdf','<table border=\"1\" style=\"width:100%;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>部&nbsp;&nbsp;&nbsp;&nbsp;门</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t{DEPT}<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>使用人</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>12312 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>通讯工具类别</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>（&nbsp;）固定电话&nbsp;&nbsp;（&nbsp;）移动电话&nbsp;&nbsp;（&nbsp;）其他</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>号&nbsp;&nbsp;码</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>1231231123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用（合计）</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>人民币（大写）123123</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用明细</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','admin,test|','<span data=\"dept_1\" id=\"dept_1\"><nobr><b title=\"小微企业&lt;dept@group&gt;\">小微企业<dept@group></dept@group></b></nobr></span>','','','','','8','',1,'admin','管理员',1,'小微企业','',1401951452,0,40,0),(216,'小微经费审批2014-001','经费审批经费审批','经费审批经费审批经费审批经费审批经费审批','1003|','\r\n\t\t\t\t<span id=\"emp_1003\" data=\"emp_1003\"><nobr><b title=\"副总1003/副总<>\">副总1003/副总&lt;&gt;</b></nobr></span>\t\t\t','1003|','\r\n\t\t\t\t<span id=\"emp_1003\" data=\"emp_1003\"><nobr><b title=\"副总1003/副总<>\">副总1003/副总&lt;&gt;</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','37','b2479f420535a859504c301285dc28f2',1,'admin','管理员',1,'小微企业','',1401957957,0,20,0),(217,'小微请假2014-012','1111111','请假申请样式111111111111111','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t<span id=\"dgp_16_2\" data=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span id=\"dgp_18_3\" data=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span id=\"dept_23\" data=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','34','',1,'admin','管理员',1,'小微企业','',1402444975,0,20,0),(218,'小微请假2014-013','11111111111111','请假申请样式11111111111111','dgp_16_2|dgp_18_3|','<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>','3002,5003,5004|','<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>','','','34','',1,'admin','管理员',1,'小微企业','',1403944685,0,20,0),(219,'小微请假2014-014','1111111111','请假申请样式111111111111','admin||','<span data=\"admin\" id=\"admin\"><nobr><b title=\"管理员/主管\">管理员/主管</b></nobr></span>','','','','','34','',1,'admin','管理员',1,'小微企业','',1404047135,0,40,0),(220,'管理请假2014-001','请假申请书（自由流程）','请假申请样式\r\n<h1 style=\"font-size:24px;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-weight:lighter;color:#2679B5;background-color:#FFFFFF;\">\r\n\t请假申请书（自由流程）\r\n</h1>','admin||','<span data=\"admin\" id=\"admin\"><nobr><b title=\"管理员/主管\">管理员/主管</b></nobr></span>','','','','','34','',41,'2002','总监2002',6,'管理部','',1404047171,0,20,0),(221,'管理请假2014-001','111111111111111','请假人员，需经过！111111111111','2002|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','33','',41,'2002','总监2002',6,'管理部','',1404220132,0,30,0),(222,'会计请假2014-001','休假申请(自定义字段)','请假人员，需经过！','3003|2001|','\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t','3002,5003,5004|','\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t','','\r\n\t\t\t\t\t\t\t','33','',60,'5005','员工5005',25,'会计科','',1404220193,0,20,0),(223,'小微请假2014-008','123123','请假人员，需经过！','dgp_16_2|dgp_18_3|','\r\n\t\t\t\t\r\n\t\t\t\t<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>\t\t\t\t\t\t','dept_23|','\r\n\t\t\t\t\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t\t\t\t','dept_23|','\r\n\t\t\t\t\r\n\t\t\t\t<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>\t\t\t\t\t\t','33','a1c4ab6730d35f32e0de305a7a4a31fe;',1,'admin','管理员',1,'小微企业','',1404311824,1404311847,10,0);
/*!40000 ALTER TABLE `think_flow` ENABLE KEYS */;

#
# Source for table "think_flow_field"
#

DROP TABLE IF EXISTS `think_flow_field`;
CREATE TABLE `think_flow_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `msg` varchar(50) DEFAULT NULL,
  `control_type` varchar(255) DEFAULT NULL,
  `control_layout` varchar(255) DEFAULT NULL,
  `control_data` varchar(255) DEFAULT NULL,
  `validate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

#
# Data for table "think_flow_field"
#

/*!40000 ALTER TABLE `think_flow_field` DISABLE KEYS */;
INSERT INTO `think_flow_field` VALUES (11,'请假事由',33,'4','111111111111111','textarea','2','','require'),(12,'请假类型',33,'1','','radio','2','病假|病假,事假|事假,婚假|婚假|丧假|丧假,产假|产假,年休假|年休假',''),(13,'结束日期',33,'3','','date','1','a|1,b|2,c|3','require'),(14,'开始日期',33,'2','','date','1','a|1,b|2,c|3,d|4,e|5','require');
/*!40000 ALTER TABLE `think_flow_field` ENABLE KEYS */;

#
# Source for table "think_flow_field_data"
#

DROP TABLE IF EXISTS `think_flow_field_data`;
CREATE TABLE `think_flow_field_data` (
  `flow_id` int(11) NOT NULL,
  `field_id` varchar(50) NOT NULL,
  `val` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_flow_field_data"
#

/*!40000 ALTER TABLE `think_flow_field_data` DISABLE KEYS */;
INSERT INTO `think_flow_field_data` VALUES (190,'12','病假'),(190,'14','2014-06-10'),(190,'13','2014-06-10'),(190,'11','ssssssssssssss'),(191,'12','事假'),(191,'14','2014-06-04'),(191,'13',''),(191,'11','11111111111'),(192,'14',''),(192,'13',''),(192,'11','sdf sdf'),(221,'12','病假'),(221,'14','2014-07-16'),(221,'13','2014-07-31'),(221,'11','1111111'),(222,'12','事假'),(222,'14','2014-07-22'),(222,'13','2014-07-25'),(222,'11','22222222222222'),(223,'13','2014-07-23'),(223,'14','2014-07-30'),(223,'11','123123');
/*!40000 ALTER TABLE `think_flow_field_data` ENABLE KEYS */;

#
# Source for table "think_flow_log"
#

DROP TABLE IF EXISTS `think_flow_log`;
CREATE TABLE `think_flow_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flow_id` int(11) NOT NULL DEFAULT '0' COMMENT '流程ID',
  `emp_no` varchar(20) NOT NULL DEFAULT '' COMMENT '员工编号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名称',
  `step` int(11) NOT NULL DEFAULT '0' COMMENT '当前步骤',
  `result` int(11) DEFAULT NULL COMMENT '审批结果',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `comment` text COMMENT '意见',
  `is_read` tinyint(3) NOT NULL DEFAULT '0' COMMENT '已读',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

#
# Data for table "think_flow_log"
#

/*!40000 ALTER TABLE `think_flow_log` DISABLE KEYS */;
INSERT INTO `think_flow_log` VALUES (264,190,'dgp_16_2',NULL,'',21,NULL,1401639033,0,NULL,0),(265,191,'3002',NULL,'',21,NULL,1401639204,0,NULL,0),(266,192,'dgp_16_2',1,'管理员',21,NULL,1401760167,0,NULL,0),(267,193,'dgp_16_2',1,'管理员',21,NULL,1401761206,0,NULL,0),(268,194,'3001',1,'管理员',21,NULL,1401775094,0,NULL,0),(269,195,'dgp_16_2',1,'管理员',21,NULL,1401777440,0,NULL,0),(270,197,'1003',1,'管理员',21,NULL,1401795852,0,NULL,0),(271,198,'1003',48,'副总1003',21,1,1401795937,1401797607,'',0),(272,199,'dgp_16_2',1,'管理员',21,NULL,1401800059,0,NULL,0),(273,200,'2001',1,'管理员',21,NULL,1401800157,0,NULL,0),(274,201,'dept_21',1,'管理员',21,NULL,1401800493,0,NULL,0),(275,202,'dept_5',1,'管理员',21,NULL,1401800888,0,NULL,0),(276,203,'dgp_16_2',1,'管理员',21,NULL,1401806158,0,NULL,0),(277,204,'admin',NULL,'',100,1,1401847174,0,NULL,0),(278,206,'dgp_16_2',1,'管理员',21,NULL,1401854011,0,NULL,0),(279,208,'dgp_16_2',1,'管理员',21,NULL,1401855082,0,NULL,0),(280,209,'3001',1,'管理员',21,NULL,1401896456,0,NULL,0),(281,210,'dgp_16_2',1,'管理员',21,NULL,1401898302,0,NULL,0),(282,211,'dgp_9_2',1,'管理员',21,NULL,1401922421,0,NULL,0),(283,212,'dgp_16_2',1,'管理员',21,NULL,1401938666,0,NULL,0),(284,213,'dgp_16_2',1,'管理员',21,NULL,1401950879,0,NULL,0),(286,216,'1003',48,'副总1003',21,NULL,1401957957,1401958109,'不行，需要修改。。。',0),(289,217,'dgp_16_2',1,'管理员',21,NULL,1402444975,0,NULL,0),(290,218,'dgp_16_2',1,'管理员',21,NULL,1403944685,0,NULL,0),(291,220,'admin',1,'管理员',21,2,1404047171,1407565929,'',0),(292,221,'3002',41,'总监2002',31,NULL,1404220132,0,NULL,0),(293,221,'5003',41,'总监2002',31,NULL,1404220132,0,NULL,0),(294,221,'5004',41,'总监2002',31,NULL,1404220132,0,NULL,0),(295,222,'3003',60,'员工5005',21,NULL,1404220193,0,NULL,0),(296,220,'2002',1,'管理员',20,NULL,1407565929,0,NULL,0);
/*!40000 ALTER TABLE `think_flow_log` ENABLE KEYS */;

#
# Source for table "think_flow_type"
#

DROP TABLE IF EXISTS `think_flow_type`;
CREATE TABLE `think_flow_type` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(20) NOT NULL DEFAULT '' COMMENT '分组',
  `doc_no_format` varchar(50) NOT NULL DEFAULT '' COMMENT '文档编码格式',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `content` text NOT NULL COMMENT '内容',
  `confirm` varchar(100) NOT NULL DEFAULT '' COMMENT '裁决数据',
  `confirm_name` text NOT NULL COMMENT '裁决显示内容',
  `consult` varchar(100) NOT NULL DEFAULT '' COMMENT '协商数据',
  `consult_name` text NOT NULL COMMENT '协商显示内容',
  `refer` varchar(100) NOT NULL DEFAULT '' COMMENT '抄送数据',
  `refer_name` text NOT NULL COMMENT '抄送显示内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_edit` tinyint(3) NOT NULL DEFAULT '0' COMMENT '可编辑标记',
  `is_lock` tinyint(3) NOT NULL DEFAULT '0' COMMENT '锁定标记',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

#
# Data for table "think_flow_type"
#

/*!40000 ALTER TABLE `think_flow_type` DISABLE KEYS */;
INSERT INTO `think_flow_type` VALUES (8,'72','{DEPT}{SHORT}{YYYY}-{###}','通讯费用报销单','通讯','<table border=\"1\" style=\"width:100%;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>部&nbsp;&nbsp;&nbsp;&nbsp;门</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t{DEPT}<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>使用人</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>12312 </span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>通讯工具类别</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>（&nbsp;）固定电话&nbsp;&nbsp;（&nbsp;）移动电话&nbsp;&nbsp;（&nbsp;）其他</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>号&nbsp;&nbsp;码</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>1231231123 </span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用（合计）</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>人民币（大写）123123</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>123123 </span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用明细</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span><br />\r\n</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','','','dept_10|','<span data=\"dept_10\" id=\"dept_10\"><nobr><b title=\"会计科\">会计科</b></nobr></span>','emp_2001|emp_2003|emp_1001|','<span data=\"emp_2001\" id=\"emp_2001\"><nobr><b title=\"总监2001/总监<>\">总监2001/总监&lt;&gt;</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span><span data=\"emp_2003\" id=\"emp_2003\"><nobr><b title=\"总监2003/总监<>\">总监2003/总监&lt;&gt;</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span><span data=\"emp_1001\" id=\"emp_1001\"><nobr><b title=\"总经理1001/总经理<>\">总经理1001/总经理&lt;&gt;</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span>',1391697983,1401339477,1,1,0,0),(18,'72','{DEPT}{SHORT}{YYYY}-{###}','通讯费用报销单','通讯','<table border=\"1\" style=\"width:100%;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>部&nbsp;&nbsp;&nbsp;&nbsp;门</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t{DEPT}<span><br />\r\n</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>使用人</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span><br />\r\n</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>通讯工具类别</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>（&nbsp;）固定电话&nbsp;&nbsp;（&nbsp;）移动电话&nbsp;&nbsp;（&nbsp;）其他</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>号&nbsp;&nbsp;码</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span><br />\r\n</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用（合计）</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span><br />\r\n</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>人民币（大写）</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span><br />\r\n</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span>费用明细</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span><br />\r\n</span>\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','','','dept_10|','<span data=\"dept_10\" id=\"dept_10\"><nobr><b title=\"会计科\">会计科</b></nobr></span>','emp_2001|emp_2003|emp_1001|','<span data=\"emp_2001\" id=\"emp_2001\"><nobr><b title=\"总监2001/总监<>\">总监2001/总监&lt;&gt;</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span><span data=\"emp_2003\" id=\"emp_2003\"><nobr><b title=\"总监2003/总监<>\">总监2003/总监&lt;&gt;</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span><span data=\"emp_1001\" id=\"emp_1001\"><nobr><b title=\"总经理1001/总经理<>\">总经理1001/总经理&lt;&gt;</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span>',1391697983,1401184122,1,1,0,0),(19,'72','{DEPT}{SHORT}{YYYY}-{###}','招待费用报销单','招待','<table border=\"1\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t姓&nbsp;&nbsp;&nbsp;&nbsp;名\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t职务\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\" rowspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t招待事由\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"9\" rowspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td rowspan=\"11\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t附件\r\n\t\t\t\t</p>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t张\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t部&nbsp;&nbsp;&nbsp;门\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"10\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t招待对象\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t招待人数\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"7\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t客人&nbsp;&nbsp;&nbsp;人，陪同&nbsp;&nbsp;&nbsp;人\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t备注\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"6\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td rowspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t日&nbsp;&nbsp;&nbsp;期\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\" rowspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t招待地点\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\" rowspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t餐饮费\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\" rowspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t住宿费\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\" rowspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t礼品礼金\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\" rowspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t其他费用\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"12\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t金额合计\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t十\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t万\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t千\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t百\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t十\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t元\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t角\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t分\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"3\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t金额\r\n\t\t\t\t</p>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t（大写）\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"9\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t合计\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t财务审批\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t部门主管审批\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t财务复核\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t部门经理审核\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"7\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t经办人签名\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t报销人签名\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"2\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"7\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<br />\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','dgp_9_2|dgp_7_3|','<span data=\"dgp_9_2\" id=\"dgp_9_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"icon-arrow-right\"></i></b></span><span data=\"dgp_7_3\" id=\"dgp_7_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>','dept_10|','<span data=\"dept_10\" id=\"dept_10\"><nobr><b title=\"会计科\">会计科</b></nobr></span>','','',1391698060,1391699220,1,1,0,0),(33,'69','{DEPT}{SHORT}{YYYY}-{###}','休假申请(自定义字段)','请假','请假人员，需经过！','dgp_16_2|dgp_18_3|','<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>','dept_23|','<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>','','',1399709992,1401339329,0,0,1,0),(34,'69','{DEPT}{SHORT}{YYYY}-{###}','请假申请书（自由流程）','请假','请假申请样式','dgp_16_2|dgp_18_3|','<span data=\"dgp_16_2\" id=\"dgp_16_2\"><nobr><b title=\"科-经理\">科-经理</b></nobr><b><i class=\"fa fa-arrow-right\"></i></b></span><span data=\"dgp_18_3\" id=\"dgp_18_3\"><nobr><b title=\"部-总监\">部-总监</b></nobr></span>','dept_23|','<span data=\"dept_23\" id=\"dept_23\"><nobr><b title=\"人事科\">人事科</b></nobr></span>','','',1401288825,1401339376,1,1,0,0);
/*!40000 ALTER TABLE `think_flow_type` ENABLE KEYS */;

#
# Source for table "think_forum"
#

DROP TABLE IF EXISTS `think_forum`;
CREATE TABLE `think_forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folder` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `views` int(11) NOT NULL,
  `reply` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `last_post` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `is_top` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

#
# Data for table "think_forum"
#

/*!40000 ALTER TABLE `think_forum` DISABLE KEYS */;
INSERT INTO `think_forum` VALUES (25,53,1,'管理员','sssssss','sssssssssssssssssssss',9,2,0,'',0,1401541641,0,0,0),(26,52,1,'管理员','123','456789',35,1,0,'',0,1405338400,0,0,1);
/*!40000 ALTER TABLE `think_forum` ENABLE KEYS */;

#
# Source for table "think_forum_post"
#

DROP TABLE IF EXISTS `think_forum_post`;
CREATE TABLE `think_forum_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

#
# Data for table "think_forum_post"
#

/*!40000 ALTER TABLE `think_forum_post` DISABLE KEYS */;
INSERT INTO `think_forum_post` VALUES (53,25,'','123211111111111',1,'管理员','',0,1401543445,0),(54,25,'','<img src=\"/Data/Files/forum/201406/53a66bcd99f10.jpg\" alt=\"\" />',1,'管理员','',0,1403415506,0),(55,26,'','<p>\r\n\t111111111111\r\n</p>\r\n<p>\r\n\t<br />\r\n</p>',1,'管理员','',1,1405338494,0),(56,26,'','asdf adsf',0,'','',0,0,0),(57,26,'','asdfasdf',0,'','',0,0,0),(58,26,'465465465','<p>\r\n\t<img src=\"/Data/Files/forum/201407/53c3d6855b0ee.jpg\" alt=\"\" />11111111111\r\n</p>\r\n<p>\r\n\t<br />\r\n</p>\r\n<p>\r\n\t<br />\r\n</p>\r\n<p>\r\n\t<br />\r\n</p>\r\n<p>\r\n\t1111111\r\n</p>',1,'管理员','',1,1405341713,1405343556);
/*!40000 ALTER TABLE `think_forum_post` ENABLE KEYS */;

#
# Source for table "think_mail"
#

DROP TABLE IF EXISTS `think_mail`;
CREATE TABLE `think_mail` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `folder` int(11) NOT NULL,
  `mid` varchar(200) DEFAULT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `add_file` varchar(200) DEFAULT NULL,
  `from` varchar(2000) DEFAULT NULL,
  `to` varchar(2000) DEFAULT NULL,
  `reply_to` varchar(2000) DEFAULT NULL,
  `cc` varchar(2000) DEFAULT NULL,
  `read` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=2005 DEFAULT CHARSET=utf8;

#
# Data for table "think_mail"
#

/*!40000 ALTER TABLE `think_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_mail` ENABLE KEYS */;

#
# Source for table "think_mail_account"
#

DROP TABLE IF EXISTS `think_mail_account`;
CREATE TABLE `think_mail_account` (
  `id` mediumint(6) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mail_name` varchar(50) NOT NULL,
  `pop3svr` varchar(50) NOT NULL,
  `smtpsvr` varchar(50) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `mail_pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='think_user_info';

#
# Data for table "think_mail_account"
#

/*!40000 ALTER TABLE `think_mail_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_mail_account` ENABLE KEYS */;

#
# Source for table "think_mail_organize"
#

DROP TABLE IF EXISTS `think_mail_organize`;
CREATE TABLE `think_mail_organize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `sender_check` int(11) NOT NULL,
  `sender_option` int(11) NOT NULL,
  `sender_key` varchar(50) NOT NULL,
  `domain_check` int(100) NOT NULL,
  `domain_option` int(11) NOT NULL,
  `domain_key` varchar(50) NOT NULL,
  `recever_check` int(11) NOT NULL,
  `recever_option` int(11) NOT NULL,
  `recever_key` varchar(50) NOT NULL,
  `title_check` int(11) NOT NULL,
  `title_option` int(11) NOT NULL,
  `title_key` varchar(50) NOT NULL,
  `to` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "think_mail_organize"
#

/*!40000 ALTER TABLE `think_mail_organize` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_mail_organize` ENABLE KEYS */;

#
# Source for table "think_message"
#

DROP TABLE IF EXISTS `think_message`;
CREATE TABLE `think_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `add_file` varchar(200) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `sender_name` varchar(20) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `receiver_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_del` tinyint(3) DEFAULT '0',
  `is_read` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

#
# Data for table "think_message"
#

INSERT INTO `think_message` VALUES (52,'1111111111','',1,'管理员',42,'总监2001',1399885849,1,0,1),(53,'1111111111','',1,'管理员',42,'总监2001',1399885849,42,0,1),(54,'2222222222222','',42,'总监2001',1,'管理员',1399885894,42,0,1),(55,'2222222222222','',42,'总监2001',1,'管理员',1399885894,1,0,1),(56,'123333333333','',1,'管理员',42,'总监2001',1402727322,1,0,1),(57,'123333333333','',1,'管理员',42,'总监2001',1402727322,42,0,0),(58,'XXXXXXXXXXXXXXXXXXXXXX','',1,'管理员',0,'小微企业',1402727412,1,0,1),(59,'XXXXXXXXXXXXXXXXXXXXXX','',1,'管理员',0,'小微企业',1402727412,0,0,0),(60,'sssssssssssssssssssssssssssssssssssss','',60,'员工5005',0,'管理员',1402727449,60,0,1),(61,'sssssssssssssssssssssssssssssssssssss','',60,'员工5005',0,'管理员',1402727449,0,0,0),(62,'sssssssssssssssssss','',1,'管理员',67,'李白/副总',1402727541,1,0,0),(63,'sssssssssssssssssss','',1,'管理员',67,'李白/副总',1402727541,67,0,0),(64,'XXXXXXXXXXXXXXXXXXXXX','',60,'员工5005',41,'总监2002/总监',1402727613,60,0,0),(65,'XXXXXXXXXXXXXXXXXXXXX','',60,'员工5005',41,'总监2002/总监',1402727613,41,0,0),(66,'XXXXXXXXXXXXXXXXXXXXX','',60,'员工5005',48,'副总1003/副总',1402727613,60,0,0),(67,'XXXXXXXXXXXXXXXXXXXXX','',60,'员工5005',48,'副总1003/副总',1402727613,48,0,0),(68,'XXXXXXXXXXXXXXXXXXXXX','',60,'员工5005',1,'管理员/主管',1402727613,60,0,1),(69,'XXXXXXXXXXXXXXXXXXXXX','',60,'员工5005',1,'管理员/主管',1402727613,1,0,1),(70,'asfasdfasdf','',60,'员工5005',1,'管理员',1402727969,60,0,1),(71,'asfasdfasdf','',60,'员工5005',1,'管理员',1402727969,1,0,1),(72,'xxxxxxxxxxxxxxxx','',1,'管理员',60,'员工5005',1402727992,1,0,0),(73,'xxxxxxxxxxxxxxxx','',1,'管理员',60,'员工5005',1402727992,60,0,1),(74,'sssssssssssss','',1,'管理员',41,'总监2002',1404046714,NULL,0,0),(75,'sssssssssssss','',1,'管理员',41,'总监2002',1404046714,NULL,0,0);

#
# Source for table "think_nav"
#

DROP TABLE IF EXISTS `think_nav`;
CREATE TABLE `think_nav` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `layout` tinyint(3) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`is_del`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "think_nav"
#

/*!40000 ALTER TABLE `think_nav` DISABLE KEYS */;
INSERT INTO `think_nav` VALUES (1,'首页','/','1',0,1,'小微OA_小微oa_小微OA办公自动化_小微OA系统_小微OA软件-SMEOA_PHP开源OA系统_OA系统定制开发_OA系统下载','小微oa,小微OA办公自动化,小微OA系统,小微OA软件,oa办公系统,oa系统,协同,OA系统,小微OA,小微oa,小微OA,小微OA系统,PHP开源OA系统,免费OA系统,OA系统下载,简单易用,审批灵活,移动办公,源码开源,免费下载','让工作更轻松快乐,想了解更多小微OA,小微OA为您服务,为小微企业量身定制OA系统,响应试设计支持手机、平板,定制开发满足小微企业个性需求,为小微企业提供个性化的手机移动办公解决方案','doc-68',0),(2,'功能特点','/feature/','2',0,1,'小微OA_小微oa_小微OA办公自动化_小微OA系统_小微OA软件-SMEOA_PHP开源OA系统_OA系统定制开发_OA系统下载','小微oa,小微OA办公自动化,小微OA系统,小微OA软件,oa办公系统,oa系统,协同,OA系统,小微OA,小微oa,小微OA,小微OA系统,PHP开源OA系统,免费OA系统,OA系统下载,简单易用,审批灵活,移动办公,源码开源,免费下载','让工作更轻松快乐,想了解更多小微OA,小微OA为您服务,为小微企业量身定制OA系统,响应试设计支持手机、平板,定制开发满足小微企业个性需求,为小微企业提供个性化的手机移动办公解决方案','doc-67',0),(3,'源码下载','/download/','3',0,1,'小微OA_小微oa_小微OA办公自动化_小微OA系统_小微OA软件-SMEOA_PHP开源OA系统_OA系统定制开发_OA系统下载','小微oa,小微OA办公自动化,小微OA系统,小微OA软件,oa办公系统,oa系统,协同,OA系统,小微OA,小微oa,小微OA,小微OA系统,PHP开源OA系统,免费OA系统,OA系统下载,简单易用,审批灵活,移动办公,源码开源,免费下载','让工作更轻松快乐,想了解更多小微OA,小微OA为您服务,为小微企业量身定制OA系统,响应试设计支持手机、平板,定制开发满足小微企业个性需求,为小微企业提供个性化的手机移动办公解决方案','doc-69',0),(4,'帮助文档','/guide/','4',0,1,'小微OA_小微oa_小微OA办公自动化_小微OA系统_小微OA软件-SMEOA_PHP开源OA系统_OA系统定制开发_OA系统下载','小微oa,小微OA办公自动化,小微OA系统,小微OA软件,oa办公系统,oa系统,协同,OA系统,小微OA,小微oa,小微OA,小微OA系统,PHP开源OA系统,免费OA系统,OA系统下载,简单易用,审批灵活,移动办公,源码开源,免费下载','让工作更轻松快乐,想了解更多小微OA,小微OA为您服务,为小微企业量身定制OA系统,响应试设计支持手机、平板,定制开发满足小微企业个性需求,为小微企业提供个性化的手机移动办公解决方案','doc-70',0),(5,'商业服务','/service/','5',0,1,'小微OA_小微oa_小微OA办公自动化_小微OA系统_小微OA软件-SMEOA_PHP开源OA系统_OA系统定制开发_OA系统下载','小微oa,小微OA办公自动化,小微OA系统,小微OA软件,oa办公系统,oa系统,协同,OA系统,小微OA,小微oa,小微OA,小微OA系统,PHP开源OA系统,免费OA系统,OA系统下载,简单易用,审批灵活,移动办公,源码开源,免费下载','让工作更轻松快乐,想了解更多小微OA,小微OA为您服务,为小微企业量身定制OA系统,响应试设计支持手机、平板,定制开发满足小微企业个性需求,为小微企业提供个性化的手机移动办公解决方案','doc-71',0),(6,'立即体验','//demo.smeoa.com','6',0,1,NULL,NULL,NULL,NULL,0),(7,'合作伙伴','/partner/','',8,1,'小微OA_小微oa_小微OA办公自动化_小微OA系统_小微OA软件-SMEOA_PHP开源OA系统_OA系统定制开发_OA系统下载','小微oa,小微OA办公自动化,小微OA系统,小微OA软件,oa办公系统,oa系统,协同,OA系统,小微OA,小微oa,小微OA,小微OA系统,PHP开源OA系统,免费OA系统,OA系统下载,简单易用,审批灵活,移动办公,源码开源,免费下载','让工作更轻松快乐,想了解更多小微OA,小微OA为您服务,为小微企业量身定制OA系统,响应试设计支持手机、平板,定制开发满足小微企业个性需求,为小微企业提供个性化的手机移动办公解决方案','doc-72',0),(8,'隐藏页面','','99',0,1,'','','','',1),(9,'关于我们','/about/','',8,1,'小微OA_小微oa_小微OA办公自动化_小微OA系统_小微OA软件-SMEOA_PHP开源OA系统_OA系统定制开发_OA系统下载','小微oa,小微OA办公自动化,小微OA系统,小微OA软件,oa办公系统,oa系统,协同,OA系统,小微OA,小微oa,小微OA,小微OA系统,PHP开源OA系统,免费OA系统,OA系统下载,简单易用,审批灵活,移动办公,源码开源,免费下载','让工作更轻松快乐,想了解更多小微OA,小微OA为您服务,为小微企业量身定制OA系统,响应试设计支持手机、平板,定制开发满足小微企业个性需求,为小微企业提供个性化的手机移动办公解决方案','doc-73',0);
/*!40000 ALTER TABLE `think_nav` ENABLE KEYS */;

#
# Source for table "think_node"
#

DROP TABLE IF EXISTS `think_node`;
CREATE TABLE `think_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `sub_folder` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`is_del`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

#
# Data for table "think_node"
#

/*!40000 ALTER TABLE `think_node` DISABLE KEYS */;
INSERT INTO `think_node` VALUES (83,'公告','notice/index##','fa fa-bell-o bc-notice','NoticeFolder','','3',0,0),(84,'管理','user/index','fa fa-cogs','','','999',0,0),(85,'邮件','mail/index','fa fa-envelope-o bc-mail','','','1',0,0),(87,'流程','flow/index','fa fa-pencil bc-flow','','','2',0,0),(88,'文档','doc/index##','fa fa-file-o','DocFolder','','4',0,0),(91,'日程','schedule/index','fa fa-calendar bc-personal-schedule','','','9',198,0),(94,'职位','position/index',NULL,NULL,'','',1,0),(97,'部门','dept/index',NULL,NULL,'','',1,0),(100,'写信','mail/add',NULL,'','','1',85,0),(101,'收件箱','mail/folder?fid=inbox','bc-mail-inbox','','','3',85,0),(102,'邮件设置','',NULL,NULL,NULL,'9',85,0),(104,'垃圾箱','mail/folder?fid=spambox','','','','5',85,0),(105,'发件箱','mail/folder?fid=outbox','','','','6',85,0),(106,'已删除','mail/folder?fid=delbox','','','','4',85,0),(107,'草稿箱','mail/folder?fid=darftbox','','','','7',85,0),(108,'邮件帐户设置','mail_account/index',NULL,'','','1',102,0),(110,'公司信息管理','',NULL,NULL,'','1',84,0),(112,'权限管理','',NULL,NULL,'','3',84,0),(113,'系统设定','',NULL,NULL,'','4',84,0),(114,'系统参数设置','system_config/index','','','','1',113,0),(115,'组织图','dept/index','','','','1',110,0),(116,'员工登记','user/index',NULL,'','','5',110,0),(118,'权限组管理','role/index','','','','1',112,0),(119,'权限设置','role/node','','','','2',112,0),(120,'权限分配','role/user','','','','3',112,0),(121,'菜单管理','node/index','','','','1',113,0),(122,'职级','rank/index',NULL,'','','3',110,0),(123,'职位','position/index',NULL,'','','2',110,0),(124,'文件夹设置','mail_folder/index',NULL,'','','2',102,0),(125,'联系人','contact/index','','','','1',198,0),(126,'文档搜索','doc/index',NULL,'','','1',88,0),(137,'论坛','forum/index##','fa fa-comments-o','ForumFolder','','5',0,0),(138,'公告管理','notice_folder/index','','','','4',83,0),(140,'按月查看','schedule/index',NULL,'','','1',91,0),(141,'日程查询','schedule/search',NULL,'','','2',91,0),(142,'按日查看','schedule/day_view',NULL,'','','2',91,0),(143,'邮件分类','mail_organize/index',NULL,'','','',102,0),(144,'发起','flow/index','','','','1',87,0),(146,'流程管理','flow_type/index','','','','9',87,0),(147,'待办','flow/folder?fid=confirm','bc-flow-confirm','','','2',87,0),(148,'办理','flow/folder?fid=finish','','','','5',87,0),(149,'草稿','flow/folder?fid=darft','','','','6',87,0),(150,'提交','flow/folder?fid=submit','','','','4',87,0),(152,'待办','todo/index','fa fa-tasks bc-personal-todo','','','9',198,0),(153,'部门级别','dept_grade/index',NULL,'','','4',110,0),(156,'客户','customer/index',NULL,'','','2',157,0),(157,'人脉','staff/index','fa fa-group','','','7',0,0),(158,'供应商','supplier/index',NULL,'','','3',157,0),(169,'职员','staff/index',NULL,'','','',157,0),(177,'我的文件夹','##mail','bc-mail-myfolder','MailFolder','','8',85,0),(178,'自助','udf_salary/index','fa fa-search','','','8',197,0),(179,'工资查询','udf_salary/index','','','','',178,0),(180,'报销查询','udf_expense/index','','','','',178,0),(181,'公告搜索','notice/index','','','','',83,0),(182,'日报','work_log/index','fa fa-book','','','6',0,0),(183,'论坛管理','forum_folder/index','','','','',137,0),(184,'流程分组','flow_type/tag_manage','','','','8',87,0),(185,'收到','flow/folder?fid=receive','bc-flow-receive','','','2',87,0),(186,'VIP','vip/index','','','','2',197,0),(189,'文档库管理','doc_folder/index','','','','C1',88,0),(190,'消息','message/index','fa fa-inbox bc-message','','','99',0,0),(191,'用户设置','','','','','',198,0),(192,'用户资料','profile/index','','','','',191,0),(193,'修改密码','profile/password','','','','',191,0),(194,'用户设置','UserConfig/index','','','','999',191,0),(195,'项目','xmk/index##','','XmkFolder','','1',197,0),(196,'项目库管理','xmk_folder/index','','','','1',195,0),(197,'定制','xmk/index','fa fa-wrench','','','91',0,0),(198,'个人','contact/index','fa fa-user bc-personal','','','9',0,0),(199,'产品搜索','product/index','','','','91',203,0),(200,'产品标签','product_type/tag_manage','','','','91',203,0),(201,'产品分类','product_type/index','','','','91',203,0),(203,'产品','product/index##','','ProductFolder','','91',197,0),(204,'产品目录','product_folder/index','','','','91',203,0);
/*!40000 ALTER TABLE `think_node` ENABLE KEYS */;

#
# Source for table "think_notice"
#

DROP TABLE IF EXISTS `think_notice`;
CREATE TABLE `think_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_no` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `folder` int(11) NOT NULL DEFAULT '0',
  `add_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

#
# Data for table "think_notice"
#

/*!40000 ALTER TABLE `think_notice` DISABLE KEYS */;
INSERT INTO `think_notice` VALUES (50,'2014-0001','公司今年因引进了小微OA系统，提高了业务效率','公司今年因引进了小微OA系统，提高了业务效率',45,'',67,'李白',1401324394,0,0),(51,'2014-0002','小微OA上市倒计时小微OA上市倒计时','小微OA上市倒计时小微OA上市倒计时',45,'',0,'',1404047106,0,1),(52,'2014-0003','121111111111','11111111111111111111',45,'',0,'',1404221877,0,1),(53,'2014-0004','新建公告','<h1 style=\"font-size:24px;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-weight:lighter;color:#2679B5;background-color:#FFFFFF;\">\r\n\t新建公告\r\n</h1>',45,'',1,'管理员',1404222033,0,0);
/*!40000 ALTER TABLE `think_notice` ENABLE KEYS */;

#
# Source for table "think_notice_sign"
#

DROP TABLE IF EXISTS `think_notice_sign`;
CREATE TABLE `think_notice_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `folder` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `is_sign` tinyint(3) NOT NULL DEFAULT '0',
  `sign_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

#
# Data for table "think_notice_sign"
#

/*!40000 ALTER TABLE `think_notice_sign` DISABLE KEYS */;
INSERT INTO `think_notice_sign` VALUES (68,50,60,45,'员工5005',1,1401324707),(69,50,1,45,'管理员',1,1403947325);
/*!40000 ALTER TABLE `think_notice_sign` ENABLE KEYS */;

#
# Source for table "think_position"
#

DROP TABLE IF EXISTS `think_position`;
CREATE TABLE `think_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` varchar(10) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "think_position"
#

/*!40000 ALTER TABLE `think_position` DISABLE KEYS */;
INSERT INTO `think_position` VALUES (1,'05','主管','5',0),(2,'04','经理','4',0),(3,'03','总监','3',0),(4,'02','副总','2',0),(5,'01','总经理','1',0),(6,'06','助理','6',0);
/*!40000 ALTER TABLE `think_position` ENABLE KEYS */;

#
# Source for table "think_product"
#

DROP TABLE IF EXISTS `think_product`;
CREATE TABLE `think_product` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `product_no` varchar(20) NOT NULL DEFAULT '' COMMENT '产品编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '产品类型',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `folder` int(11) DEFAULT NULL,
  `size` varchar(200) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;

#
# Data for table "think_product"
#

/*!40000 ALTER TABLE `think_product` DISABLE KEYS */;
INSERT INTO `think_product` VALUES (218,'','SSSSSSSSS','SSSSSSSSSSSSSSSSSSSSSS','','',1,'管理员',1403186815,0,0,59,NULL,NULL,NULL,NULL),(219,'','1','1','36','',1,'管理员',1403340387,0,0,59,NULL,NULL,NULL,NULL),(220,'','2','2','35','',1,'管理员',1403340396,0,0,59,NULL,NULL,NULL,NULL),(221,'','3','3','36','',1,'管理员',1403340405,0,0,59,NULL,NULL,NULL,NULL),(222,'','22','22','36','',1,'管理员',1403340415,0,0,59,NULL,NULL,NULL,NULL),(223,'','d','ddd','36','',1,'管理员',1403340426,0,0,59,NULL,NULL,NULL,NULL),(224,'1111111111','s','sss','36','',1,'管理员',1403340435,1407570478,0,59,NULL,'','',''),(225,'bbbbbbbbbb','ss','sss','36','',1,'管理员',1403340447,1407570500,0,59,NULL,'','',''),(226,'aaaaaaaaaaa','fasd','asdfasdf','36','',1,'管理员',1403340457,1407570491,0,59,NULL,'','',''),(227,'QWEQWEQWE','产品编号*：','<span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：<span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span><span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*：</span></span>','36','bf89a18b5955160b8f62cf38381212b4;eb00d6a11f085151d886fba7ad9eb402;c6c42d9492b9674aa69f08dc9d9ee199;',1,'管理员',1403348213,1404047614,0,59,NULL,NULL,NULL,NULL),(228,'123123123123','产品编号*','<span style=\"color:#393939;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;\">产品编号*</span>','36','ffaae993a750f4aa45d198019f5ef66f;282c71ce150bab45683bb8b718ab370c;2b0241987e0d9c07d55c9ae102a7d8a5;1866cde2785e6eb34c6456efe3eee813;',1,'管理员',1403348296,1404047591,0,59,NULL,NULL,NULL,NULL),(229,'ad','asd','asdfasdfASDFASDF','36','3ad0d8533a1f194c925737b7feca7355;523923d6b3876d22923c62710c74c136;',1,'管理员',1403350005,1404047570,0,59,NULL,NULL,NULL,NULL),(230,'产品编号','产品名称','asdfasdfasdfasdf','36','5ffa4e733a6a8144a7e1897e0c37a809;f3456c53d8f0ce2b5c81a2a7b3c058a4;',1,'管理员',1403350672,1404047547,0,59,NULL,NULL,NULL,NULL),(231,'111111111111111','11111111111111111','111111111111111111111111111','35','',1,'管理员',1407569307,1407569832,0,59,'XXL,XL','1111111','11111111111111111','price'),(232,'22222222222222','22222222222222222222222222','22222222222222222222','35','4b7a0a7899d63f4d178e2aca1919daca;f90ecfe0c2f227a0c3ed406d5a54b8f4;',1,'管理员',1407570156,0,0,59,'XXL,XL','2222222','222222222','222222222222222222222222222');
/*!40000 ALTER TABLE `think_product` ENABLE KEYS */;

#
# Source for table "think_product_field"
#

DROP TABLE IF EXISTS `think_product_field`;
CREATE TABLE `think_product_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `msg` varchar(50) DEFAULT NULL,
  `control_type` varchar(255) DEFAULT NULL,
  `control_layout` varchar(255) DEFAULT NULL,
  `control_data` varchar(255) DEFAULT NULL,
  `validate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

#
# Data for table "think_product_field"
#

/*!40000 ALTER TABLE `think_product_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_product_field` ENABLE KEYS */;

#
# Source for table "think_product_field_data"
#

DROP TABLE IF EXISTS `think_product_field_data`;
CREATE TABLE `think_product_field_data` (
  `product_id` int(11) NOT NULL,
  `field_id` varchar(50) NOT NULL,
  `val` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_product_field_data"
#

/*!40000 ALTER TABLE `think_product_field_data` DISABLE KEYS */;
INSERT INTO `think_product_field_data` VALUES (230,'27','xxxxxxxxxxxxxxxx'),(230,'26','yyyyyyyyyyyyyy'),(230,'25','zzzzzzzzzzzzzzzzzz'),(227,'27','X'),(227,'26','X'),(227,'25','X');
/*!40000 ALTER TABLE `think_product_field_data` ENABLE KEYS */;

#
# Source for table "think_product_type"
#

DROP TABLE IF EXISTS `think_product_type`;
CREATE TABLE `think_product_type` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

#
# Data for table "think_product_type"
#

/*!40000 ALTER TABLE `think_product_type` DISABLE KEYS */;
INSERT INTO `think_product_type` VALUES (35,'上衣','上衣',1403185924,1403187883,0,0),(36,'裤子','裤子',1403186100,1403187896,0,0);
/*!40000 ALTER TABLE `think_product_type` ENABLE KEYS */;

#
# Source for table "think_push"
#

DROP TABLE IF EXISTS `think_push`;
CREATE TABLE `think_push` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `status` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2621 DEFAULT CHARSET=utf8;

#
# Data for table "think_push"
#

/*!40000 ALTER TABLE `think_push` DISABLE KEYS */;
INSERT INTO `think_push` VALUES (2620,1,'1',1,1407553921,'收到1封邮件');
/*!40000 ALTER TABLE `think_push` ENABLE KEYS */;

#
# Source for table "think_rank"
#

DROP TABLE IF EXISTS `think_rank`;
CREATE TABLE `think_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` varchar(10) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "think_rank"
#

/*!40000 ALTER TABLE `think_rank` DISABLE KEYS */;
INSERT INTO `think_rank` VALUES (1,'RG40','部长','1',0),(2,'RG30','科长','2',0),(3,'RG20','主管','3',0),(4,'RG10','助理','4',0),(5,'RG00','总经理','0',0);
/*!40000 ALTER TABLE `think_rank` ENABLE KEYS */;

#
# Source for table "think_recent"
#

DROP TABLE IF EXISTS `think_recent`;
CREATE TABLE `think_recent` (
  `user_id` int(11) NOT NULL,
  `recent` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_recent"
#

/*!40000 ALTER TABLE `think_recent` DISABLE KEYS */;
INSERT INTO `think_recent` VALUES (1,'管理员|smeoa@qq.com;');
/*!40000 ALTER TABLE `think_recent` ENABLE KEYS */;

#
# Source for table "think_relation"
#

DROP TABLE IF EXISTS `think_relation`;
CREATE TABLE `think_relation` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `relation_id` int(11) NOT NULL DEFAULT '0',
  `relation` varchar(20) NOT NULL DEFAULT '',
  KEY `row_id` (`row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_relation"
#

/*!40000 ALTER TABLE `think_relation` DISABLE KEYS */;
INSERT INTO `think_relation` VALUES (17,31,'Course|Video'),(16,29,'Course|Video'),(16,28,'Course|Video'),(14,29,'Course|Video'),(14,28,'Course|Video'),(14,27,'Course|Video'),(14,4,'Course|Position'),(14,3,'Course|Position'),(14,2,'Course|Position'),(14,10,'Course|Dept'),(14,6,'Course|Dept'),(14,5,'Course|Dept'),(13,29,'Course|Video'),(13,28,'Course|Video'),(13,27,'Course|Video'),(13,4,'Course|Position'),(13,3,'Course|Position'),(13,2,'Course|Position'),(13,10,'Course|Dept'),(13,6,'Course|Dept'),(13,5,'Course|Dept'),(17,30,'Course|Video'),(17,28,'Course|Video'),(24,30,'Course|Video'),(24,31,'Course|Video'),(22,32,'Course|Video'),(23,31,'Course|Video'),(21,32,'Course|Video'),(21,31,'Course|Video'),(21,30,'Course|Video'),(22,31,'Course|Video');
/*!40000 ALTER TABLE `think_relation` ENABLE KEYS */;

#
# Source for table "think_role"
#

DROP TABLE IF EXISTS `think_role`;
CREATE TABLE `think_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `pid` smallint(6) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `ename` (`sort`),
  KEY `status` (`is_del`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "think_role"
#

/*!40000 ALTER TABLE `think_role` DISABLE KEYS */;
INSERT INTO `think_role` VALUES (1,'公司管理员',0,'','1',1208784792,1368507168,0),(2,'基本权限',0,'','2',1215496283,1368507164,0),(7,'领导',0,'','2',1254325787,1401288337,0);
/*!40000 ALTER TABLE `think_role` ENABLE KEYS */;

#
# Source for table "think_role_duty"
#

DROP TABLE IF EXISTS `think_role_duty`;
CREATE TABLE `think_role_duty` (
  `role_id` smallint(6) unsigned NOT NULL,
  `duty_id` smallint(6) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_role_duty"
#

/*!40000 ALTER TABLE `think_role_duty` DISABLE KEYS */;
INSERT INTO `think_role_duty` VALUES (1,14),(1,15),(2,14),(2,15);
/*!40000 ALTER TABLE `think_role_duty` ENABLE KEYS */;

#
# Source for table "think_role_node"
#

DROP TABLE IF EXISTS `think_role_node`;
CREATE TABLE `think_role_node` (
  `role_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `write` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_role_node"
#

/*!40000 ALTER TABLE `think_role_node` DISABLE KEYS */;
INSERT INTO `think_role_node` VALUES (2,136,NULL,NULL,NULL),(2,137,1,1,1),(2,135,NULL,NULL,NULL),(2,83,1,1,1),(1,94,NULL,NULL,NULL),(1,97,NULL,NULL,NULL),(1,98,NULL,NULL,NULL),(1,99,NULL,NULL,NULL),(1,69,NULL,NULL,NULL),(1,6,NULL,NULL,NULL),(1,2,NULL,NULL,NULL),(1,7,NULL,NULL,NULL),(1,131,1,1,1),(1,130,NULL,NULL,NULL),(1,133,NULL,NULL,NULL),(1,132,NULL,NULL,NULL),(1,189,1,1,1),(2,125,1,1,1),(1,183,1,1,1),(1,135,NULL,NULL,NULL),(1,136,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,138,1,1,1),(1,134,NULL,NULL,NULL),(2,194,1,1,1),(2,103,NULL,NULL,NULL),(2,126,1,1,1),(2,88,1,1,1),(2,133,NULL,NULL,NULL),(2,130,NULL,NULL,NULL),(2,158,1,1,1),(7,124,NULL,NULL,NULL),(7,108,NULL,NULL,NULL),(7,104,NULL,NULL,NULL),(7,107,NULL,NULL,NULL),(7,106,NULL,NULL,NULL),(7,105,NULL,NULL,NULL),(7,101,NULL,NULL,NULL),(7,100,NULL,NULL,NULL),(7,125,NULL,NULL,NULL),(1,152,1,1,1),(1,142,NULL,NULL,NULL),(2,134,NULL,NULL,NULL),(2,156,1,1,1),(2,169,1,1,1),(2,132,NULL,NULL,NULL),(2,148,NULL,NULL,NULL),(2,143,1,1,1),(2,102,NULL,NULL,NULL),(2,103,NULL,NULL,NULL),(2,157,1,1,1),(1,141,NULL,NULL,NULL),(1,140,1,1,1),(1,91,1,1,1),(2,177,1,1,1),(2,107,NULL,NULL,NULL),(2,105,NULL,NULL,NULL),(2,104,NULL,NULL,NULL),(2,106,NULL,NULL,NULL),(2,103,NULL,NULL,NULL),(2,109,NULL,NULL,NULL),(2,101,NULL,NULL,NULL),(2,100,NULL,NULL,NULL),(2,85,1,1,1),(2,150,NULL,NULL,NULL),(2,185,NULL,NULL,NULL),(2,147,NULL,NULL,NULL),(2,144,1,1,1),(2,87,1,1,1),(2,192,1,1,1),(2,193,NULL,NULL,NULL),(2,191,NULL,NULL,NULL),(2,198,1,1,1),(1,117,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,103,NULL,NULL,NULL),(1,109,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,163,NULL,NULL,NULL),(1,158,1,1,1),(1,170,NULL,NULL,NULL),(1,164,NULL,NULL,NULL),(1,114,1,1,1),(1,146,1,1,1),(1,121,1,1,1),(1,108,1,1,1),(1,113,NULL,NULL,NULL),(1,155,NULL,NULL,NULL),(1,154,1,1,1),(1,120,NULL,NULL,NULL),(1,119,NULL,NULL,NULL),(1,118,1,1,1),(1,112,NULL,NULL,NULL),(1,116,1,1,1),(1,111,NULL,NULL,NULL),(1,153,1,1,1),(1,204,1,1,1),(1,122,1,1,1),(1,123,1,1,1),(1,115,1,1,1),(1,150,NULL,NULL,NULL),(1,149,NULL,NULL,NULL),(1,148,NULL,NULL,NULL),(1,147,NULL,NULL,NULL),(1,144,1,1,1),(1,143,1,1,1),(1,102,NULL,NULL,NULL),(1,177,1,1,1),(1,107,NULL,NULL,NULL),(1,105,NULL,NULL,NULL),(1,104,NULL,NULL,NULL),(1,106,NULL,NULL,NULL),(1,101,NULL,NULL,NULL),(1,156,1,1,1),(1,168,NULL,NULL,NULL),(1,162,NULL,NULL,NULL),(1,166,NULL,NULL,NULL),(1,161,NULL,NULL,NULL),(1,171,NULL,NULL,NULL),(1,125,1,1,1),(1,165,NULL,NULL,NULL),(1,174,NULL,NULL,NULL),(1,172,NULL,NULL,NULL),(1,173,NULL,NULL,NULL),(1,160,NULL,NULL,NULL),(1,175,NULL,NULL,NULL),(1,169,1,1,1),(1,185,NULL,NULL,NULL),(1,182,1,1,1),(1,181,1,1,1),(1,199,1,1,1),(1,200,NULL,NULL,NULL),(1,201,1,1,1),(1,184,NULL,NULL,NULL),(1,176,NULL,NULL,NULL),(1,110,NULL,NULL,NULL),(1,194,NULL,NULL,NULL),(1,193,NULL,NULL,NULL),(1,100,NULL,NULL,NULL),(1,85,1,1,1),(1,87,1,1,1),(1,126,1,1,1),(1,157,1,1,1),(1,167,NULL,NULL,NULL),(1,83,1,1,1),(1,128,NULL,NULL,NULL),(1,192,NULL,NULL,NULL),(1,191,NULL,NULL,NULL),(1,190,NULL,NULL,NULL),(1,88,1,1,1),(1,84,1,1,1),(1,203,1,1,1),(1,213,NULL,NULL,NULL),(1,198,NULL,NULL,NULL),(1,180,1,1,1),(1,229,NULL,NULL,NULL),(1,228,NULL,NULL,NULL),(1,227,NULL,NULL,NULL),(1,226,NULL,NULL,NULL),(1,225,NULL,NULL,NULL),(1,224,NULL,NULL,NULL),(1,223,NULL,NULL,NULL),(1,222,NULL,NULL,NULL),(1,221,NULL,NULL,NULL),(1,220,NULL,NULL,NULL),(1,219,NULL,NULL,NULL),(1,217,NULL,NULL,NULL),(1,218,NULL,NULL,NULL),(1,216,NULL,NULL,NULL),(1,215,NULL,NULL,NULL),(1,214,NULL,NULL,NULL),(1,179,1,1,1),(1,178,1,1,1),(1,186,1,1,1),(1,196,1,1,1),(1,195,1,1,1),(1,197,NULL,NULL,NULL),(1,205,NULL,NULL,NULL),(1,206,NULL,NULL,NULL),(1,207,NULL,NULL,NULL),(1,208,NULL,NULL,NULL),(1,209,NULL,NULL,NULL),(1,210,NULL,NULL,NULL),(1,211,NULL,NULL,NULL),(1,212,NULL,NULL,NULL),(1,137,1,1,1),(2,186,NULL,1,1),(2,195,NULL,1,1),(2,197,NULL,1,1),(1,124,1,1,1),(2,108,1,1,1),(2,124,1,1,1),(2,149,NULL,NULL,NULL),(2,182,NULL,1,1),(2,91,1,1,1),(2,140,1,1,1),(2,141,NULL,NULL,NULL),(2,142,NULL,NULL,NULL),(2,152,1,1,1),(2,178,NULL,1,1),(2,179,NULL,1,1),(2,180,NULL,1,1),(2,190,1,1,1),(7,182,1,1,1);
/*!40000 ALTER TABLE `think_role_node` ENABLE KEYS */;

#
# Source for table "think_role_user"
#

DROP TABLE IF EXISTS `think_role_user`;
CREATE TABLE `think_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_role_user"
#

/*!40000 ALTER TABLE `think_role_user` DISABLE KEYS */;
INSERT INTO `think_role_user` VALUES (4,'27'),(4,'26'),(5,'31'),(3,'22'),(2,'67'),(1,'4'),(1,'3'),(1,'35'),(1,'36'),(1,'54'),(2,'3'),(1,'53'),(7,'36'),(1,'2'),(2,'66'),(2,'65'),(2,'62'),(2,'2'),(7,'2'),(2,'61'),(2,'60'),(2,'59'),(2,'58'),(2,'57'),(2,'56'),(2,'55'),(2,'52'),(2,'51'),(2,'50'),(2,'49'),(2,'48'),(2,'44'),(2,'43'),(2,'1'),(2,'42'),(1,'1'),(1,'63'),(1,'64'),(2,'41'),(2,'68'),(7,'44'),(7,'42');
/*!40000 ALTER TABLE `think_role_user` ENABLE KEYS */;

#
# Source for table "think_schedule"
#

DROP TABLE IF EXISTS `think_schedule`;
CREATE TABLE `think_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `content` text,
  `location` varchar(50) DEFAULT '',
  `priority` int(11) DEFAULT NULL,
  `actor` varchar(200) DEFAULT '',
  `user_id` int(11) DEFAULT '0',
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `add_file` varchar(200) DEFAULT '',
  `is_del` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

#
# Data for table "think_schedule"
#

/*!40000 ALTER TABLE `think_schedule` DISABLE KEYS */;
INSERT INTO `think_schedule` VALUES (70,'111111','22222222222','11111111',3,'',1,'2014-06-02','05:00:00','2014-06-09','05:00:00','',0),(71,'FFFFFFFFFFFFFFFFFFFF','FFFFFFFFFF','',3,'',1,'2014-06-14','05:00:00','2014-06-14','05:00:00','',0),(72,'3333333333333333','3333','333333',3,'',1,'2014-06-02','05:00:00','2014-06-18','05:00:00','',0),(73,'22222222222','111111111111','dd',3,'总监2002/总监|;副总1003/副总|;经理3001/经理|;经理3002/经理|;',1,'2014-07-08','05:00:00','2014-07-01','05:00:00','',0);
/*!40000 ALTER TABLE `think_schedule` ENABLE KEYS */;

#
# Source for table "think_supplier"
#

DROP TABLE IF EXISTS `think_supplier`;
CREATE TABLE `think_supplier` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `letter` varchar(50) DEFAULT '',
  `short` varchar(30) DEFAULT '',
  `account` varchar(20) DEFAULT '',
  `tax_no` varchar(20) DEFAULT '',
  `payment` varchar(20) DEFAULT NULL,
  `contact` varchar(20) NOT NULL DEFAULT '',
  `office_tel` varchar(20) DEFAULT NULL,
  `mobile_tel` varchar(20) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `im` varchar(20) DEFAULT '',
  `address` varchar(50) DEFAULT '',
  `user_id` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` text,
  `fax` varchar(255) DEFAULT NULL,
  `user_name` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

#
# Data for table "think_supplier"
#

/*!40000 ALTER TABLE `think_supplier` DISABLE KEYS */;
INSERT INTO `think_supplier` VALUES (21,'11111111','','111111111111','1111111111','11111111111','1111111111111111','1111111',NULL,'1111111111111','11111111111','','111111111',1,1,'11111111111111','11111111111',NULL),(22,'1','','2','3','4','5','7','1231231','10','9','12','6',1,1,'13','11',NULL);
/*!40000 ALTER TABLE `think_supplier` ENABLE KEYS */;

#
# Source for table "think_system_config"
#

DROP TABLE IF EXISTS `think_system_config`;
CREATE TABLE `think_system_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `sort` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "think_system_config"
#

/*!40000 ALTER TABLE `think_system_config` DISABLE KEYS */;
INSERT INTO `think_system_config` VALUES (1,'SYSTEM_NAME','系统名称','小微企业信息化',1,''),(7,'UPLOAD_FILE_TYPE','上传文件类型','doc,docx,xls,xlsx,ppt,pptx,pdf,gif,png,tif,zip,rar,jpg,jpeg,txt',0,NULL),(8,'IS_VERIFY_CODE','验证码','0',0,NULL),(9,'XMK_LEVEL','项目级别1','1',0,'1'),(10,'XMK_LEVEL','项目级别2','2',0,'2'),(11,'XMK_LEVEL','项目级别3','3',0,'3'),(12,'XMK_STATUS','项目状态1','1',0,'1'),(13,'XMK_STATUS','2','2',0,'2'),(14,'XMK_STATUS','3','3',0,'3');
/*!40000 ALTER TABLE `think_system_config` ENABLE KEYS */;

#
# Source for table "think_system_folder"
#

DROP TABLE IF EXISTS `think_system_folder`;
CREATE TABLE `think_system_folder` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `admin` varchar(200) NOT NULL,
  `write` varchar(200) NOT NULL,
  `read` varchar(200) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

#
# Data for table "think_system_folder"
#

/*!40000 ALTER TABLE `think_system_folder` DISABLE KEYS */;
INSERT INTO `think_system_folder` VALUES (44,0,'XmkFolder','1111111111111','微澜企业|dept_1;','','','',0,''),(45,0,'NoticeFolder','公司公告1','总经办|dept_5;小微企业|dept_1;','','小微企业|dept_1;','',0,''),(46,0,'NoticeFolder','培训通知','人事科|dept_23;','','小微企业|dept_1;','',0,''),(47,0,'NoticeFolder','人事通知','人事科|dept_23;','','小微企业|dept_1;','',0,''),(48,0,'DocFolder','公司规定','总经办|dept_5;小微企业|dept_1;','','小微企业|dept_1;','',0,''),(49,0,'DocFolder','合同管理','总经办|dept_5;','','小微企业|dept_1;','',0,''),(50,0,'DocFolder','财务报表','财务部|dept_8;','','小微企业|dept_1;总监2002/总监|2002;总监2001/总监|2001;总监2003/总监|2003;副总1003/副总|1003;test1/总经理|test1;李白/副总|1002;','',0,''),(51,0,'DocFolder','常用表格','总经办|dept_5;','','小微企业|dept_1;','',0,''),(52,0,'ForumFolder','公司动态','总经办|dept_5;小微企业|dept_1;','小微企业|dept_1;','','',0,''),(53,0,'ForumFolder','兴趣小组','总经办|dept_5;','小微企业|dept_1;','','',0,''),(54,0,'ProductFolder','2014年','','','','',0,''),(55,0,'ProductFolder','2015年','','','','',0,''),(56,54,'ProductFolder','2014春装','','','','',0,''),(57,54,'ProductFolder','2014夏装','','','','',0,''),(58,54,'ProductFolder','2014秋装','','','','',0,''),(59,54,'ProductFolder','2014冬装','小微企业|dept_1;','','','',0,''),(60,55,'ProductFolder','2015春装','','','','',0,''),(61,55,'ProductFolder','2015夏装','','','','',0,''),(62,55,'ProductFolder','2015秋装','','','','',0,''),(63,55,'ProductFolder','2015冬装','','','','',0,'');
/*!40000 ALTER TABLE `think_system_folder` ENABLE KEYS */;

#
# Source for table "think_system_tag"
#

DROP TABLE IF EXISTS `think_system_tag`;
CREATE TABLE `think_system_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

#
# Data for table "think_system_tag"
#

/*!40000 ALTER TABLE `think_system_tag` DISABLE KEYS */;
INSERT INTO `think_system_tag` VALUES (11,0,'Video','所属科室','11',''),(12,11,'Video','外科系统','12',''),(13,11,'Video','内科系统','13',''),(14,12,'Video','普通外科','14',''),(15,12,'Video','肛肠科','15',''),(16,11,'Video','专科中心','16',''),(17,11,'Video','医技辅助','17',''),(18,12,'Video','肝胆外科','18',''),(19,12,'Video','器官移植','19',''),(20,12,'Video','心血管外科','20',''),(21,12,'Video','显微外科','21',''),(22,12,'Video','胸外科','22',''),(23,12,'Video','泌尿生殖','23',''),(24,12,'Video','神经外科','24',''),(25,12,'Video','烧伤外科','25',''),(26,13,'Video','普通内科','26',''),(27,13,'Video','心血管内科','27',''),(28,13,'Video','呼吸内科','28',''),(29,13,'Video','消化内科','29',''),(30,13,'Video','肾内科','30',''),(31,13,'Video','血液科','31',''),(32,13,'Video','神经内科','32',''),(33,13,'Video','心理、精神科','33',''),(34,13,'Video','内分泌科','34',''),(35,13,'Video','感染传染','35',''),(36,16,'Video','妇产科','36',''),(37,16,'Video','儿科','37',''),(38,16,'Video','口腔科','38',''),(39,16,'Video','骨科','39',''),(40,16,'Video','皮肤病与性病科','40',''),(41,16,'Video','眼科','41',''),(42,16,'Video','耳鼻咽喉科','42',''),(43,16,'Video','肿瘤及核医学','43',''),(44,16,'Video','中医及中西医结合','44',''),(45,16,'Video','麻醉科','45',''),(46,16,'Video','美容整形','46',''),(47,17,'Video','门、急诊，ICU','47',''),(48,17,'Video','医学影像','48',''),(49,17,'Video','护理','49',''),(50,17,'Video','检验科','50',''),(51,17,'Video','康复理疗科','51',''),(52,17,'Video','药剂科','52',''),(53,17,'Video','信息科','53',''),(54,17,'Video','医院管理','54',''),(55,17,'Video','基础教学','55',''),(56,17,'Video','其他','56',''),(57,0,'Customer','123','',''),(58,0,'Supplier','123','',''),(59,0,'Doc','123123','123123',''),(60,0,'Doc','123123','',''),(61,0,'Doc','abc','',''),(62,0,'Customer','2345','',''),(63,0,'Customer','qqqqqq','',''),(64,0,'Customer','22222','',''),(65,0,'Customer','22222','',''),(66,0,'Flow','人事','',''),(67,0,'Flow','IT','',''),(68,0,'Flow','公告','',''),(69,0,'FlowType','HR','1',''),(70,0,'FlowType','行政','2',''),(71,0,'FlowType','采购','3',''),(72,0,'FlowType','出差','4',''),(74,75,'ProductType','红色','',''),(75,0,'ProductType','颜色','',''),(76,75,'ProductType','蓝色','',''),(77,0,'ProductType','面料','',''),(78,77,'ProductType','A','',''),(79,77,'ProductType','B','','');
/*!40000 ALTER TABLE `think_system_tag` ENABLE KEYS */;

#
# Source for table "think_system_tag_data"
#

DROP TABLE IF EXISTS `think_system_tag_data`;
CREATE TABLE `think_system_tag_data` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL DEFAULT '',
  KEY `row_id` (`row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_system_tag_data"
#

/*!40000 ALTER TABLE `think_system_tag_data` DISABLE KEYS */;
INSERT INTO `think_system_tag_data` VALUES (18,58,'Supplier'),(29,14,'Video'),(18,57,'Customer'),(29,46,'Video'),(30,46,'Video'),(30,47,'Video'),(30,56,'Video'),(64,59,'Doc'),(64,60,'Doc'),(64,61,'Doc'),(65,61,'Doc'),(33,14,'Video'),(18,62,'Customer'),(17,66,'Flow'),(18,66,'Flow'),(19,66,'Flow'),(20,66,'Flow'),(21,66,'Flow'),(22,66,'Flow'),(23,66,'Flow'),(17,66,'Flow'),(18,66,'Flow'),(19,66,'Flow'),(20,66,'Flow'),(21,66,'Flow'),(22,66,'Flow'),(23,66,'Flow'),(17,70,'FlowType'),(23,72,'FlowType'),(22,72,'FlowType'),(21,72,'FlowType'),(20,72,'FlowType'),(19,71,'FlowType'),(18,71,'FlowType'),(24,70,'FlowType');
/*!40000 ALTER TABLE `think_system_tag_data` ENABLE KEYS */;

#
# Source for table "think_todo"
#

DROP TABLE IF EXISTS `think_todo`;
CREATE TABLE `think_todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

#
# Data for table "think_todo"
#

/*!40000 ALTER TABLE `think_todo` DISABLE KEYS */;
INSERT INTO `think_todo` VALUES (11,'邮件整理时显示名称错误','',1,'2014-05-08',2,'',3,3),(12,'日历今天样式颜色','日历今天样式颜色',1,'2014-05-08',3,'',2,1),(13,'12312','123123',2,'3123123',3,'',1,1),(14,'12312','123123123123123123',2,'3123123',3,'',0,NULL),(15,'待办事项确认','待办事项确认',2,'',3,'',0,NULL),(16,'新建待办事项','123',2,'',3,'',2,3),(17,'新建待办事项1','新建待办事项',2,'2013-09-19',3,'',1,2),(18,'新建待办事项','123',2,'2013-09-19',3,'',1,NULL),(21,'事项优先级低','',1,'2014-05-08',5,'',2,1),(22,'查看服务器是否正常','查看服务器是否正常',1,'2014-05-10',3,'',3,2),(23,'22222222','ssssssss',1,'2014-08-20',3,'8d1f3251d40bc4132d9bd4646eec4ee7;',1,NULL);
/*!40000 ALTER TABLE `think_todo` ENABLE KEYS */;

#
# Source for table "think_udf_expense"
#

DROP TABLE IF EXISTS `think_udf_expense`;
CREATE TABLE `think_udf_expense` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(20) NOT NULL DEFAULT '',
  `B` varchar(20) DEFAULT '',
  `C` varchar(20) DEFAULT '',
  `D` varchar(20) DEFAULT '',
  `E` varchar(20) DEFAULT '',
  `F` varchar(20) DEFAULT '',
  `G` varchar(20) DEFAULT '',
  `H` varchar(20) DEFAULT '',
  `I` varchar(20) DEFAULT '',
  `J` varchar(20) DEFAULT '',
  `K` varchar(20) DEFAULT '',
  `L` varchar(20) DEFAULT '',
  `M` varchar(20) DEFAULT '',
  `N` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

#
# Data for table "think_udf_expense"
#

/*!40000 ALTER TABLE `think_udf_expense` DISABLE KEYS */;
INSERT INTO `think_udf_expense` VALUES (152,'1003','201310','张三','业招待费','1500','500','5','','','','','','',''),(153,'1003','201310','张三','通行费','','','','','','','','','',''),(154,'1003','201310','张三','交通费','','','','','','','','','',''),(155,'1003','201310','李四','业招待费','1500','500','5','','','','','','',''),(157,'1003','201310','李四','交通费','','','','','','','','','','');
/*!40000 ALTER TABLE `think_udf_expense` ENABLE KEYS */;

#
# Source for table "think_udf_salary"
#

DROP TABLE IF EXISTS `think_udf_salary`;
CREATE TABLE `think_udf_salary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(20) NOT NULL DEFAULT '',
  `B` varchar(20) DEFAULT '',
  `C` varchar(20) DEFAULT '',
  `D` varchar(20) DEFAULT '',
  `E` varchar(20) DEFAULT '',
  `F` varchar(20) DEFAULT '',
  `G` varchar(20) DEFAULT '',
  `H` varchar(20) DEFAULT '',
  `I` varchar(20) DEFAULT '',
  `J` varchar(20) DEFAULT '',
  `K` varchar(20) DEFAULT '',
  `L` varchar(20) DEFAULT '',
  `M` varchar(20) DEFAULT '',
  `N` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

#
# Data for table "think_udf_salary"
#

/*!40000 ALTER TABLE `think_udf_salary` DISABLE KEYS */;
INSERT INTO `think_udf_salary` VALUES (120,'1001','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(121,'1002','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(122,'1003','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(123,'1004','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(124,'1005','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(125,'1006','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(126,'1007','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(127,'1008','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(128,'1009','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(129,'1010','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(130,'1011','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(131,'1012','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(132,'1013','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(133,'1014','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(134,'1015','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(135,'1016','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(136,'1001','201210','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(137,'1002','201210','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(138,'1003','201210','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL);
/*!40000 ALTER TABLE `think_udf_salary` ENABLE KEYS */;

#
# Source for table "think_user"
#

DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL,
  `letter` varchar(10) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` int(8) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `duty` varchar(2000) NOT NULL,
  `office_tel` varchar(20) NOT NULL,
  `mobile_tel` varchar(20) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `openid` varchar(50) DEFAULT NULL,
  `westatus` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`emp_no`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

#
# Data for table "think_user"
#

/*!40000 ALTER TABLE `think_user` DISABLE KEYS */;
INSERT INTO `think_user` VALUES (1,'admin','管理员','GLY','21232f297a57a5a743894a0e4a801fc3',1,1,2,'male','2013-09-18','127.0.0.1',2735,'emp_pic/1.jpeg','smeoa@qq.com','1231254123123','5086-2222-2222','12123123',1222907803,1404047349,0,'1231512315123',1),(41,'2002','总监2002','ZJ','4ba29b9f9e5732ed33761840f4ba6c53',6,3,1,'male','2013-10-30','0.0.0.0',NULL,'','','行政，财务','','',1376896154,1407565312,1,NULL,1),(42,'2001','总监2001','ZJ','d0fb963ff976f9c37fc81fe03c21ea7b',8,3,1,'male','2013-10-10','0.0.0.0',NULL,'emp_pic/42.jpeg','','开发','123','12312312',1380970837,1401287019,0,'12312541231251243123',1),(43,'2003','总监2003','ZJ','a591024321c5e2bdbd23ed35f0574dde',7,3,1,'male','0000-00-00','127.0.0.1',NULL,'emp_pic/43.jpeg','','销售','','',1381035116,1401287063,0,NULL,1),(44,'1001','总经理1001','ZJL','b8c37e33defde51cf91e1e03e51657da',1,5,5,'male','0000-00-00','0.0.0.0',NULL,'','','全面管理','','',1381502796,1401288611,0,NULL,1),(48,'1003','副总1003','FZ','aa68c75c4a77c87f97fb686b2f068676',6,4,1,'female','0000-00-00','0.0.0.0',NULL,'','','销售，运营','','',1381503490,1401286413,0,NULL,1),(49,'3001','经理3001','JL','908c9a564a86426585b29f5335b619bc',24,2,2,'male','2013-10-10','14.104.59.86',NULL,'','','财务','123','12312312',1391694170,1401287097,0,NULL,1),(50,'3002','经理3002','JL','d806ca13ca3449af72a1ea5aedbed26a',23,2,2,'male','2013-10-10','124.127.209.138',NULL,'','','人事','123','12312312',1391694193,1401287121,0,NULL,NULL),(51,'3003','经理3003','JL','a4380923dd651c195b1631af7c829187',25,2,2,'male','2013-10-10','0.0.0.0',NULL,'','','销售-南方区域','123','12312312',1391694198,1401287147,0,NULL,NULL),(52,'3004','经理3004','JL','20479c788fb27378c2c99eadcf207e7f',26,2,2,'male','2013-10-10',NULL,NULL,'','','新产品研发','123','12312312',1391694202,1401287170,0,NULL,NULL),(55,'5001','员工5001','YG','03b264c595403666634ac75d828439bc',24,1,3,'male','2013-10-10','121.10.236.201',NULL,'','','会计','123','12312312',1391694320,1401287296,0,NULL,NULL),(56,'5007','员工5007','YG','351869bde8b9d6ad1e3090bd173f600d',26,1,3,'male','2013-10-10',NULL,NULL,'','','程序员3','123','12312312',1391694335,1401287430,0,NULL,NULL),(57,'5002','员工5002','YG','415585bd389b69659223807d77a96791',24,1,3,'male','2013-10-10',NULL,NULL,'','','出纳','123','12312312',1391694413,1401287322,0,NULL,NULL),(58,'5003','员工5003','YG','240ac9371ec2671ae99847c3ae2e6384',23,1,3,'male','2013-10-10',NULL,NULL,'','','招聘，薪资管理','123','12312312',1391694420,1401287339,0,NULL,NULL),(59,'5004','员工5004','YG','3202111cf90e7c816a472aaceb72b0df',23,1,3,'male','2013-10-10','0.0.0.0',NULL,'','','负责公司日常采购','123','12312312',1391694427,1401287371,0,NULL,NULL),(60,'5005','员工5005','YG','1d6408264d31d453d556c60fe7d0459e',25,1,3,'male','2013-10-10','0.0.0.0',NULL,'','','程序员1','123','12312312',1391694435,1401287390,0,NULL,NULL),(61,'5006','员工5006','YG','2c27a260f16ad3098393cc529f391f4a',25,1,3,'male','2013-10-10',NULL,NULL,'','','程序员2','123','12312312',1391694478,1401287410,0,NULL,NULL),(62,'5008','员工5008','YG','b3848d61bbbc6207c6668a8a9e2730ed',26,1,3,'male','2013-10-10',NULL,NULL,'','','网站编辑，SEO','123','12312312',1391694489,1401287450,0,NULL,NULL),(65,'test1','test1','TEST','db03fa33c1e2ca35794adbb14aebb153',7,5,1,'male','2014-05-07','0.0.0.0',NULL,'','','','','',1399618939,0,0,NULL,0),(66,'test2','test2','TEST','261d684f6b7d9af996a5691e7106075e',2,2,2,'male','2014-05-09','0.0.0.0',NULL,'','','','','',1399618964,0,0,NULL,0),(67,'1002','李白','LB','fba9d88164f3e2d9109ee770223212a0',5,4,1,'male','0000-00-00','0.0.0.0',NULL,'','','','','',1399712207,1401286925,0,NULL,0);
/*!40000 ALTER TABLE `think_user` ENABLE KEYS */;

#
# Source for table "think_user_config"
#

DROP TABLE IF EXISTS `think_user_config`;
CREATE TABLE `think_user_config` (
  `id` int(11) NOT NULL DEFAULT '0',
  `home_sort` varchar(255) DEFAULT NULL,
  `list_rows` int(11) DEFAULT '20',
  `readed_notice` text,
  `push_web` varchar(255) DEFAULT NULL,
  `push_wechat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_user_config"
#

/*!40000 ALTER TABLE `think_user_config` DISABLE KEYS */;
INSERT INTO `think_user_config` VALUES (1,'undefined,11,12,23,|undefined,21,13,22,',12,'51|1404047106_',NULL,NULL),(49,NULL,20,'51|1404047106_',NULL,NULL),(50,NULL,20,'51|1404047106_',NULL,NULL),(51,NULL,20,'51|1404047106_',NULL,NULL),(52,NULL,20,'51|1404047106_',NULL,NULL),(53,NULL,20,'51|1404047106_',NULL,NULL),(54,NULL,20,'51|1404047106_',NULL,NULL),(55,NULL,20,'51|1404047106_',NULL,NULL),(56,NULL,20,'51|1404047106_',NULL,NULL),(57,NULL,20,'51|1404047106_',NULL,NULL),(58,NULL,20,'51|1404047106_',NULL,NULL),(59,NULL,20,'51|1404047106_',NULL,NULL),(60,'undefined,22,13,23,|undefined,12,21,11,',20,'51|1404047106_',NULL,NULL),(61,NULL,20,'51|1404047106_',NULL,NULL),(62,NULL,20,'51|1404047106_',NULL,NULL),(63,NULL,20,'51|1404047106_',NULL,NULL),(64,NULL,20,'51|1404047106_',NULL,NULL),(65,NULL,20,'51|1404047106_',NULL,NULL),(66,'11,12,13,|21,22,23,',20,'51|1404047106_',NULL,NULL),(67,NULL,20,'51|1404047106_',NULL,NULL),(68,NULL,20,'51|1404047106_',NULL,NULL);
/*!40000 ALTER TABLE `think_user_config` ENABLE KEYS */;

#
# Source for table "think_user_folder"
#

DROP TABLE IF EXISTS `think_user_folder`;
CREATE TABLE `think_user_folder` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

#
# Data for table "think_user_folder"
#

/*!40000 ALTER TABLE `think_user_folder` DISABLE KEYS */;
INSERT INTO `think_user_folder` VALUES (31,0,'MailFolder',1,'自定义文件夹1','',0,''),(32,0,'MailFolder',1,'自定义文件夹1','',0,''),(33,0,'MailFolder',1,'自定义文件夹2','',0,'');
/*!40000 ALTER TABLE `think_user_folder` ENABLE KEYS */;

#
# Source for table "think_user_info_base"
#

DROP TABLE IF EXISTS `think_user_info_base`;
CREATE TABLE `think_user_info_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xing_ming` varchar(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `xing_bie` varchar(10) DEFAULT NULL,
  `min_zu` varchar(10) DEFAULT NULL,
  `sheng_ri` date DEFAULT NULL,
  `jian_kang` varchar(20) DEFAULT NULL,
  `guan_ji` varchar(50) DEFAULT NULL,
  `zheng_zhi` varchar(20) DEFAULT NULL,
  `xue_li` varchar(20) DEFAULT NULL,
  `zhuan_ye` varchar(20) DEFAULT NULL,
  `xue_xiao` varchar(20) DEFAULT NULL,
  `can_jia` date DEFAULT NULL,
  `zhi_wu` varchar(20) DEFAULT NULL,
  `zhu_zhi` varchar(50) DEFAULT NULL,
  `shen_fen` varchar(20) DEFAULT NULL,
  `dian_hua` varchar(20) DEFAULT NULL,
  `zi_ge` varchar(20) DEFAULT NULL,
  `zi_ge_date` date DEFAULT NULL,
  `zhi_ye` varchar(20) DEFAULT NULL,
  `zhi_ye_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `check_time` int(11) DEFAULT NULL,
  `is_check` tinyint(3) NOT NULL DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "think_user_info_base"
#

/*!40000 ALTER TABLE `think_user_info_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_user_info_base` ENABLE KEYS */;

#
# Source for table "think_user_info_tab1"
#

DROP TABLE IF EXISTS `think_user_info_tab1`;
CREATE TABLE `think_user_info_tab1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `zhi_cheng` varchar(20) DEFAULT NULL,
  `pi_zhun_date` date DEFAULT NULL,
  `ji_guan` varchar(20) DEFAULT NULL,
  `content` text NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `is_check` tinyint(3) NOT NULL DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `add_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "think_user_info_tab1"
#

/*!40000 ALTER TABLE `think_user_info_tab1` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_user_info_tab1` ENABLE KEYS */;

#
# Source for table "think_user_info_tab2"
#

DROP TABLE IF EXISTS `think_user_info_tab2`;
CREATE TABLE `think_user_info_tab2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `zheng_shu` varchar(20) DEFAULT NULL,
  `zheng_shu_date` date DEFAULT NULL,
  `bian_hao` varchar(20) DEFAULT NULL,
  `content` text NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `is_check` tinyint(3) NOT NULL DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `add_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "think_user_info_tab2"
#

/*!40000 ALTER TABLE `think_user_info_tab2` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_user_info_tab2` ENABLE KEYS */;

#
# Source for table "think_user_info_tab3"
#

DROP TABLE IF EXISTS `think_user_info_tab3`;
CREATE TABLE `think_user_info_tab3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `dan_wei` varchar(20) DEFAULT NULL,
  `zhi_wu` varchar(20) DEFAULT NULL,
  `shou_pin_date` date DEFAULT NULL,
  `zhuan_ye` varchar(20) DEFAULT NULL,
  `content` text NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `is_check` tinyint(3) NOT NULL DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `add_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "think_user_info_tab3"
#

/*!40000 ALTER TABLE `think_user_info_tab3` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_user_info_tab3` ENABLE KEYS */;

#
# Source for table "think_user_tag"
#

DROP TABLE IF EXISTS `think_user_tag`;
CREATE TABLE `think_user_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#
# Data for table "think_user_tag"
#

/*!40000 ALTER TABLE `think_user_tag` DISABLE KEYS */;
INSERT INTO `think_user_tag` VALUES (21,0,'Contact',1,'123','','');
/*!40000 ALTER TABLE `think_user_tag` ENABLE KEYS */;

#
# Source for table "think_user_tag_data"
#

DROP TABLE IF EXISTS `think_user_tag_data`;
CREATE TABLE `think_user_tag_data` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL DEFAULT '',
  KEY `row_id` (`row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_user_tag_data"
#

/*!40000 ALTER TABLE `think_user_tag_data` DISABLE KEYS */;
INSERT INTO `think_user_tag_data` VALUES (23,21,'Contact');
/*!40000 ALTER TABLE `think_user_tag_data` ENABLE KEYS */;

#
# Source for table "think_vip"
#

DROP TABLE IF EXISTS `think_vip`;
CREATE TABLE `think_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `english_name` varchar(20) NOT NULL DEFAULT '' COMMENT '英文名',
  `office_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '办公电话',
  `mobile_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '移动电话',
  `wechat_no` varchar(20) NOT NULL DEFAULT '' COMMENT '微信号',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `remark` text,
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `vip_type` varchar(11) DEFAULT NULL COMMENT 'VIP类别',
  `vip_no` varchar(255) DEFAULT NULL COMMENT 'VIP卡号',
  `area` varchar(255) DEFAULT NULL COMMENT '地区',
  `active_shop` varchar(255) DEFAULT NULL COMMENT '开卡姓名',
  `active_date` date DEFAULT NULL COMMENT '开卡日期',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `paper_type` varchar(10) DEFAULT NULL COMMENT '证件类型',
  `paper_no` varchar(20) DEFAULT NULL COMMENT '证件号',
  `dressing_style` varchar(50) DEFAULT NULL,
  `wechat_vip_no` varchar(255) DEFAULT NULL COMMENT '微信VIP卡号',
  `top_size` varchar(255) DEFAULT NULL COMMENT '上衣尺寸',
  `bottom_size` varchar(255) DEFAULT NULL,
  `like_color` varchar(255) DEFAULT NULL,
  `like_shop` varchar(255) DEFAULT NULL,
  `like_brand` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "think_vip"
#

/*!40000 ALTER TABLE `think_vip` DISABLE KEYS */;
INSERT INTO `think_vip` VALUES (1,'123123','','','','','','',1,'1','','123','','0000-00-00','0000-00-00','male','','',NULL,'',NULL,NULL,NULL,NULL,NULL),(2,'222222','','','','','','',1,'1','','123','','0000-00-00','0000-00-00','male','','','7','',NULL,NULL,NULL,NULL,NULL),(3,'1231231','','','','','','',1,'1','','123','','0000-00-00','0000-00-00','male','','',NULL,'',NULL,NULL,NULL,NULL,NULL),(4,'11111111111111111111','','','','','','',1,'1','','123','','0000-00-00','0000-00-00','male','','','2,3','',NULL,NULL,NULL,NULL,NULL),(5,'55555555555555','','','','','','',1,'1','','123','','0000-00-00','0000-00-00','male','','','1,2','',NULL,NULL,NULL,NULL,NULL),(6,'77777777','','','','','','',1,'1','','123','','0000-00-00','0000-00-00','male','','','1,8,9,9,10','',NULL,NULL,NULL,NULL,NULL),(7,'王大立','eNGLISH','+86-654654-546545','134-1253-4565','11','10','',0,'白金卡','VIP卡号','地区','开卡店铺','0000-11-30','0000-00-00','female','身份证','7','休闲,性感','微信VIP','XL','XL','蓝色系,豹纹系','',''),(8,'11111111111111','','','2222222','','','',0,'金卡','','22222222222','222222','0000-00-00','0000-00-00','male','','',NULL,'',NULL,NULL,NULL,'',''),(9,'333333333','','','333333','','','',0,'金卡','','3','33333333333333333','0000-00-00','0000-00-00','male','','',NULL,'',NULL,NULL,NULL,'',''),(10,'444444444444444','','','4444444444444444','','','',0,'金卡','4444444444','444444444444444444','444444','0000-00-00','0000-00-00','male','','',NULL,'44444',NULL,NULL,NULL,'',''),(11,'5555555555','','','55555555555555555','','','',1,'金卡','','','','0000-00-00','0000-00-00','male','','55555555',NULL,'',NULL,NULL,NULL,'',''),(12,'66666666','','','6666666666666666','','','',1,'金卡','','','','0000-00-00','0000-00-00','male','','6666666666',NULL,'',NULL,NULL,NULL,'',''),(13,'777777','','','777777777777777','','','',1,'金卡','','','','0000-00-00','0000-00-00','male','','77777777777777777777',NULL,'',NULL,NULL,NULL,'',''),(14,'88888888','','','88888888888888','','','',1,'金卡','','','','0000-00-00','0000-00-00','male','','',NULL,'',NULL,NULL,NULL,'',''),(15,'9999999','','','999999999999999','','','',1,'金卡','','','','0000-00-00','0000-00-00','male','','',NULL,'',NULL,NULL,NULL,'',''),(16,'1212121212','','','1212121212','','','',0,'金卡','','北京','百盛','0000-00-00','0000-00-00','male','身份证','',NULL,'',NULL,NULL,NULL,'',''),(17,'1313131313131313','','','13131313131131313','','','',1,'金卡','','','','0000-00-00','0000-00-00','male','身份证','123',NULL,'',NULL,NULL,NULL,'','');
/*!40000 ALTER TABLE `think_vip` ENABLE KEYS */;

#
# Source for table "think_vip_sales"
#

DROP TABLE IF EXISTS `think_vip_sales`;
CREATE TABLE `think_vip_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_id` int(11) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `point` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "think_vip_sales"
#

/*!40000 ALTER TABLE `think_vip_sales` DISABLE KEYS */;
INSERT INTO `think_vip_sales` VALUES (1,16,'123123','1900-12-31','XL','2','3','400','100'),(2,16,'1','2014-05-05','XXL','4','4','654789','-20'),(3,14,'Djfjcjdhdhh','2014-04-29','L,XS','18','12','33','33'),(4,16,'LA41pl55','2014-04-30','L','1','','1000',''),(5,7,'LA41pl55','2014-05-19','XL','2','','2000','2000'),(6,7,'','0000-00-00',NULL,'','','','');
/*!40000 ALTER TABLE `think_vip_sales` ENABLE KEYS */;

#
# Source for table "think_work_log"
#

DROP TABLE IF EXISTS `think_work_log`;
CREATE TABLE `think_work_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `content` text,
  `plan` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `add_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "think_work_log"
#

INSERT INTO `think_work_log` VALUES (13,42,'总监2001',8,'财务部',1401288260,'小微，加油','小微，加油','2014-05-28','2014-05-28',0,NULL),(14,60,'员工5005',25,'会计科',1401288467,'小微，加油','小微，加油','2014-05-28','2014-05-28',0,NULL),(15,1,'管理员',1,'小微企业',1406248659,'1','1111111111111111','2014-07-10','2014-07-05',0,'a871f007f8ba395c27fc065c19c62454;');

#
# Source for table "think_xmk"
#

DROP TABLE IF EXISTS `think_xmk`;
CREATE TABLE `think_xmk` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `xm_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `folder` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `type` varchar(20) DEFAULT NULL COMMENT '类型',
  `progress` text COMMENT '项目进展',
  `start_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "think_xmk"
#

/*!40000 ALTER TABLE `think_xmk` DISABLE KEYS */;
INSERT INTO `think_xmk` VALUES (6,'2014-0001','阿斯蒂芬','阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬',44,'',1,'管理员',1401331513,1401760236,0,NULL,NULL,'2014-05-06',1,'1','2014-05-05'),(7,'2014-0002','sssssssssss','qqqqqqqqqqqqqqqqqqqqqqqqqqqqq',44,'50b0175704ba66576275d4c65b592af1;5725d6e09f73ee774fa68b80023677aa;1b0cacecdd098dec6a231058a9a39d78;',1,'管理员',1401550024,1401630240,0,NULL,NULL,'2014-05-31',2,'1','2014-05-21');
/*!40000 ALTER TABLE `think_xmk` ENABLE KEYS */;

#
# Source for table "think_xmk_report"
#

DROP TABLE IF EXISTS `think_xmk_report`;
CREATE TABLE `think_xmk_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `reply` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

#
# Data for table "think_xmk_report"
#

/*!40000 ALTER TABLE `think_xmk_report` DISABLE KEYS */;
INSERT INTO `think_xmk_report` VALUES (53,6,'','sssssssssss',1,'管理员','',0,1401544598,1401634439,NULL,'QQQQQQQQQQQQQQQQ'),(54,6,'','qqqqqqqqqqqqqq',1,'管理员','b2479f420535a859504c301285dc28f2',0,1401544598,0,NULL,NULL),(55,6,'','aaaaaaaaaaaaaaaaa',1,'管理员','',0,1401544598,0,NULL,NULL),(56,6,'','QQQQQQQQQQQQQQQQQQQ',1,'管理员','',0,1401544694,1401632192,NULL,NULL),(57,6,'','&lt;div class=\"form-group\"&gt;<br />\r\n&lt;div class=\"col-sm-12\"&gt;<br />\r\n&lt;div class=\"content_wrap\"&gt;<br />\r\n&lt;iframe class=\"content_iframe\"&gt;&lt;/iframe&gt;<br />\r\n&lt;textarea class=\"content\" name=\"content\" style=\"width:100%;display:none\"&gt;{$vo_report.content}&lt;/textarea&gt;<br />\r\n&lt;/div&gt; <br />\r\n&lt;/div&gt; <br />\r\n&lt;/div&gt;<br />',1,'管理员','b2479f420535a859504c301285dc28f2',1,1401547161,0,NULL,NULL),(58,6,'','XXXXXXXXXXXXXXXXXXXXXXX',1,'管理员','',0,1401547253,1401634062,NULL,NULL),(59,6,'','&lt;div class=\"form-group\"&gt;<br />\r\n&lt;div class=\"col-sm-12\"&gt;<br />\r\n&lt;div class=\"content_wrap\"&gt;<br />\r\n&lt;iframe class=\"content_iframe\"&gt;&lt;/iframe&gt;<br />\r\n&lt;textarea class=\"content\" name=\"content\" style=\"width:100%;display:none\"&gt;{$vo_report.content}&lt;/textarea&gt;<br />\r\n&lt;/div&gt; <br />\r\n&lt;/div&gt; <br />\r\n&lt;/div&gt;<br />',1,'管理员','b2479f420535a859504c301285dc28f2',1,1401547287,0,NULL,NULL),(60,6,'','<div class=\"page-wrapper\" style=\"box-sizing:border-box;\">\r\n\t<div class=\"panel\" style=\"box-sizing:border-box;margin-bottom:20px;background-color:#FFFFFF;border:1px solid #DDDDDD;border-top-left-radius:4px;border-top-right-radius:4px;border-bottom-right-radius:4px;border-bottom-left-radius:4px;-webkit-box-shadow:rgba(0, 0, 0, 0.0470588) 0px 1px 1px;box-shadow:rgba(0, 0, 0, 0.0470588) 0px 1px 1px;\">\r\n\t\t<table class=\"table table-hover table-striped\" style=\"box-sizing:border-box;border-spacing:0px;max-width:100%;background-color:transparent;width:1138px;margin-bottom:0px;\">\r\n\t\t\t<thead style=\"box-sizing:border-box;\">\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<th colspan=\"2\" style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;\">\r\n\t\t\t\t\t\t标题\r\n\t\t\t\t\t</th>\r\n\t\t\t\t\t<th style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;width:120px;\">\r\n\t\t\t\t\t\t作者\r\n\t\t\t\t\t</th>\r\n\t\t\t\t\t<th style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;width:100px;\">\r\n\t\t\t\t\t\t发表于\r\n\t\t\t\t\t</th>\r\n\t\t\t\t\t<th style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;width:50px;\">\r\n\t\t\t\t\t\t阅读\r\n\t\t\t\t\t</th>\r\n\t\t\t\t\t<th style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;width:50px;\">\r\n\t\t\t\t\t\t回帖\r\n\t\t\t\t\t</th>\r\n\t\t\t\t\t<th style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;width:200px;\">\r\n\t\t\t\t\t\t最后回帖\r\n\t\t\t\t\t</th>\r\n\t\t\t\t</tr>\r\n\t\t\t</thead>\r\n\t\t\t<tbody style=\"box-sizing:border-box;\">\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:10px;\">\r\n\t\t\t\t\t\t<span class=\"text-success\" style=\"box-sizing:border-box;color:#229F24;\"><span class=\"icon-comment-alt icon-large\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span></span>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;\">\r\n\t\t\t\t\t\t<a href=\"http://www.smeoa.com/thread/60.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">流程提示</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:120px;\">\r\n\t\t\t\t\t\t<strong style=\"box-sizing:border-box;\">linkai</strong>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:100px;\">\r\n\t\t\t\t\t\t05-29 14:01\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;\">\r\n\t\t\t\t\t\t12\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;\">\r\n\t\t\t\t\t\t0\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:150px;\">\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:10px;\">\r\n\t\t\t\t\t\t<span class=\"text-muted\" style=\"box-sizing:border-box;color:#808080;\"><span class=\"icon-comment-alt icon-large\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span></span>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);\">\r\n\t\t\t\t\t\t<a href=\"http://www.smeoa.com/thread/56.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">编辑器兼容问题</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:120px;\">\r\n\t\t\t\t\t\t<strong style=\"box-sizing:border-box;\">linkai</strong>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:100px;\">\r\n\t\t\t\t\t\t05-21 16:07\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;\">\r\n\t\t\t\t\t\t39\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;\">\r\n\t\t\t\t\t\t0\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:150px;\">\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:10px;\">\r\n\t\t\t\t\t\t<span class=\"text-muted\" style=\"box-sizing:border-box;color:#808080;\"><span class=\"icon-comment-alt icon-large\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span></span>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;\">\r\n\t\t\t\t\t\t<a href=\"http://www.smeoa.com/thread/53.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">权限组设置，新建权限组无法保存</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:120px;\">\r\n\t\t\t\t\t\t<strong style=\"box-sizing:border-box;\">林大福</strong>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:100px;\">\r\n\t\t\t\t\t\t05-19 11:36\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;\">\r\n\t\t\t\t\t\t58\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;\">\r\n\t\t\t\t\t\t1\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:150px;\">\r\n\t\t\t\t\t\t05-21 09:09&nbsp;<a href=\"http://www.smeoa.com/thread-locate-53-73.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">admin</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:10px;\">\r\n\t\t\t\t\t\t<span class=\"text-muted\" style=\"box-sizing:border-box;color:#808080;\"><span class=\"icon-comment-alt icon-large\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span></span>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);\">\r\n\t\t\t\t\t\t<a href=\"http://www.smeoa.com/thread/50.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">关于小微流程的讨论！</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:120px;\">\r\n\t\t\t\t\t\t<strong style=\"box-sizing:border-box;\">赵旭</strong>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:100px;\">\r\n\t\t\t\t\t\t05-10 11:03\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;\">\r\n\t\t\t\t\t\t134\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;\">\r\n\t\t\t\t\t\t3\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:150px;\">\r\n\t\t\t\t\t\t05-14 16:55&nbsp;<a href=\"http://www.smeoa.com/thread-locate-50-70.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">鹿其鹿粦</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:10px;\">\r\n\t\t\t\t\t\t<span class=\"text-muted\" style=\"box-sizing:border-box;color:#808080;\"><span class=\"icon-comment-alt icon-large\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span></span>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;\">\r\n\t\t\t\t\t\t<a href=\"http://www.smeoa.com/thread/51.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">demo数据清除</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:120px;\">\r\n\t\t\t\t\t\t<strong style=\"box-sizing:border-box;\">金云</strong>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:100px;\">\r\n\t\t\t\t\t\t05-13 13:35\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;\">\r\n\t\t\t\t\t\t55\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;\">\r\n\t\t\t\t\t\t0\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:150px;\">\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:10px;\">\r\n\t\t\t\t\t\t<span class=\"text-muted\" style=\"box-sizing:border-box;color:#808080;\"><span class=\"icon-comment-alt icon-large\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span></span>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);\">\r\n\t\t\t\t\t\t<a href=\"http://www.smeoa.com/thread/48.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">流程回退时所遇到的问题。</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:120px;\">\r\n\t\t\t\t\t\t<strong style=\"box-sizing:border-box;\">林风</strong>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:100px;\">\r\n\t\t\t\t\t\t05-09 22:03\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;\">\r\n\t\t\t\t\t\t44\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;\">\r\n\t\t\t\t\t\t0\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:150px;\">\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:10px;\">\r\n\t\t\t\t\t\t<span class=\"text-muted\" style=\"box-sizing:border-box;color:#808080;\"><span class=\"icon-comment-alt icon-large\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span></span>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;\">\r\n\t\t\t\t\t\t<a href=\"http://www.smeoa.com/thread/47.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">能否在流程审批中增加同一级别选多个人审批</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:120px;\">\r\n\t\t\t\t\t\t<strong style=\"box-sizing:border-box;\">彭</strong>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:100px;\">\r\n\t\t\t\t\t\t05-09 10:25\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;\">\r\n\t\t\t\t\t\t55\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;\">\r\n\t\t\t\t\t\t1\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:150px;\">\r\n\t\t\t\t\t\t05-09 14:37&nbsp;<a href=\"http://www.smeoa.com/thread-locate-47-66.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">admin</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:10px;\">\r\n\t\t\t\t\t\t<span class=\"text-muted\" style=\"box-sizing:border-box;color:#808080;\"><span class=\"icon-comment-alt icon-large\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span></span>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);\">\r\n\t\t\t\t\t\t<a href=\"http://www.smeoa.com/thread/46.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">删除流程分组时提示错误</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:120px;\">\r\n\t\t\t\t\t\t<strong style=\"box-sizing:border-box;\">彭</strong>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:100px;\">\r\n\t\t\t\t\t\t05-09 10:20\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;\">\r\n\t\t\t\t\t\t48\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;\">\r\n\t\t\t\t\t\t1\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:150px;\">\r\n\t\t\t\t\t\t05-09 14:34&nbsp;<a href=\"http://www.smeoa.com/thread-locate-46-65.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">admin</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:10px;\">\r\n\t\t\t\t\t\t<span class=\"text-muted\" style=\"box-sizing:border-box;color:#808080;\"><span class=\"icon-comment-alt icon-large\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span></span>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;\">\r\n\t\t\t\t\t\t<a href=\"http://www.smeoa.com/thread/44.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">如何修改主页栏目</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:120px;\">\r\n\t\t\t\t\t\t<strong style=\"box-sizing:border-box;\">兔子</strong>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:100px;\">\r\n\t\t\t\t\t\t05-08 09:24\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;\">\r\n\t\t\t\t\t\t64\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;\">\r\n\t\t\t\t\t\t1\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:150px;\">\r\n\t\t\t\t\t\t05-08 20:24&nbsp;<a href=\"http://www.smeoa.com/thread-locate-44-64.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">admin</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t\t<tr class=\"text-center\" style=\"box-sizing:border-box;text-align:center;\">\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:10px;\">\r\n\t\t\t\t\t\t<span class=\"text-muted\" style=\"box-sizing:border-box;color:#808080;\"><span class=\"icon-comment-alt icon-large\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span></span>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);\">\r\n\t\t\t\t\t\t<a href=\"http://www.smeoa.com/thread/35.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">体验两天的建议</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:120px;\">\r\n\t\t\t\t\t\t<strong style=\"box-sizing:border-box;\">刘伟</strong>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:100px;\">\r\n\t\t\t\t\t\t04-03 10:24\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;\">\r\n\t\t\t\t\t\t301\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;\">\r\n\t\t\t\t\t\t3\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td class=\"text-left\" style=\"box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:150px;\">\r\n\t\t\t\t\t\t05-04 12:40&nbsp;<a href=\"http://www.smeoa.com/thread-locate-35-63.html\" style=\"box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">刘伟</a>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t</tbody>\r\n\t\t\t<tfoot style=\"box-sizing:border-box;\">\r\n\t\t\t\t<tr style=\"box-sizing:border-box;\">\r\n\t\t\t\t\t<td colspan=\"7\" style=\"box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);\">\r\n\t\t\t\t\t\t<div class=\"page form-inline\" style=\"box-sizing:border-box;padding:0px;color:#999999;text-align:right;margin:0px;float:right;clear:none;\">\r\n\t\t\t\t\t\t\t共&nbsp;<strong style=\"box-sizing:border-box;\">31</strong>&nbsp;条主题，每页&nbsp;<strong style=\"box-sizing:border-box;\">10</strong>&nbsp;条，页面：<strong style=\"box-sizing:border-box;\">1/4</strong>&nbsp;首页 上页&nbsp;<a href=\"http://www.smeoa.com/forum/c10/p2.html\" style=\"box-sizing:border-box;background-color:transparent;color:#666666;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">下页</a>&nbsp;<a href=\"http://www.smeoa.com/forum/c10/p4.html\" style=\"box-sizing:border-box;background-color:transparent;color:#666666;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;\">末页</a>\r\n\t\t\t\t\t\t</div>\r\n\t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n\t\t\t</tfoot>\r\n\t\t</table>\r\n\t</div>\r\n</div>\r\n<footer id=\"footer\" class=\"clearfix\" style=\"box-sizing:border-box;background-color:#F7F7F7;padding:20px 15px;border:1px solid #DDDDDD;border-top-left-radius:4px;border-top-right-radius:4px;border-bottom-right-radius:4px;border-bottom-left-radius:4px;text-align:center;position:relative;\">\r\n<div id=\"footNav\" style=\"box-sizing:border-box;position:absolute;left:15px;top:20px;color:#333333;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:20px;white-space:normal;\">\r\n\t<a href=\"http://www.smeoa.com/sitemap/\" style=\"box-sizing:border-box;background-color:transparent;color:#777777;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);display:inline-block;margin-right:10px;background-position:initial initial;background-repeat:initial initial;\"><span class=\"icon-sitemap\" style=\"box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;\"></span>&nbsp;站点地图</a>\r\n</div>\r\n<div>\r\n\t<br />\r\n</div>\r\n<span id=\"copyright\" style=\"box-sizing:border-box;color:#333333;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-size:14px;line-height:20px;white-space:normal;\"></span></footer>',1,'管理员','b2479f420535a859504c301285dc28f2',1,1401547333,0,NULL,NULL),(61,7,'','XXXXXXXXXX',1,'管理员','',0,1401630240,1401631478,NULL,NULL),(62,6,'','<h1 style=\"font-size:24px;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-weight:lighter;color:#2679B5;background-color:#FFFFFF;\">\r\n\t项目进展1\r\n</h1>',1,'管理员','',0,1401634981,1401635017,NULL,'<h1 style=\"font-size:24px;font-family:\'Microsoft YaHei\', simsun, Arial, sans-serif;font-weight:lighter;color:#2679B5;background-color:#FFFFFF;\">\r\n\t回复项目进展\r\n</h1>'),(63,6,'','123123123',1,'管理员','',0,1401760228,0,NULL,NULL),(64,6,'','1231212315123',1,'管理员','',0,1401760236,0,NULL,NULL);
/*!40000 ALTER TABLE `think_xmk_report` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
