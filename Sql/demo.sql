﻿# Host: localhost  (Version: 5.5.16)
# Date: 2013-12-11 11:18:41
# Generator: MySQL-Front 5.3  (Build 4.4)

/*!40101 SET NAMES utf8 */;

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='think_user_info';

#
# Data for table "think_contact"
#

/*!40000 ALTER TABLE `think_contact` DISABLE KEYS */;
INSERT INTO `think_contact` VALUES (9,'马腾化','MTH','腾讯','CEO','CEO','pony@qq.com','公电话','手机','','','2',1,'',0),(10,'雷军','LJ','小米','CEO','CEO','yyyyy@yy.com','010-12341234','139-1234-1234','www.sohu.com','1234567','',1,'',0),(11,'张三','ZS','张三','IT','CEO','zhang@zhang.com','654','321','','12356','1',1,'',0),(21,'223e23','','','','','abc@sohu.com','23232','','','','',1,'',0);
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

#
# Data for table "think_customer"
#

/*!40000 ALTER TABLE `think_customer` DISABLE KEYS */;
INSERT INTO `think_customer` VALUES (18,'123123','','2342342','123123','lianxiren','abc@sdof.com','123125123','123125123','','222yewu','','',1,'3245324',1),(19,'123123','','2342342','123123','lianxiren','abc@sdof.com','123125123','','','yewu','','',0,NULL,1),(20,'1','','111111111111','1111111111111','1111111111','111111111','1111111','1111111111111111111','1111111','11111111','11111111','111111111',1,'1111111111111111111',1),(21,'2','','2','22222222222','22222222','2222222222','22222222222222','2222222','22222222','2222222','22222222','222222222',1,'2222222222222222222222222222222',1),(22,'3','','33333333333','33333333333','333333333333','33333333','3333333333333','3333333333','333333333','33333333','3333333333333333333','333333333',1,'33333333333333333',1);
/*!40000 ALTER TABLE `think_customer` ENABLE KEYS */;

#
# Source for table "think_dept"
#

DROP TABLE IF EXISTS `think_dept`;
CREATE TABLE `think_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `dept_no` varchar(20) NOT NULL DEFAULT '',
  `dept_grade_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `short` varchar(20) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "think_dept"
#

/*!40000 ALTER TABLE `think_dept` DISABLE KEYS */;
INSERT INTO `think_dept` VALUES (1,0,'A1',5,'小微企业','小微','','',0),(2,1,'BD',7,'运营部','运营','5','',0),(3,1,'PD',7,'产品部','产品','4','',0),(4,6,'HR',9,'人事科','人事','','',0),(5,1,'CEO1',7,'总经办','总经','1','',0),(6,1,'AD',7,'行政部','行政','2','',0),(7,1,'SD',7,'销售部','销售','3','',0),(8,1,'RD',7,'开发部','开发','2','',0),(9,7,'SD1',9,'北方区域','销售1','','',0),(10,6,'AC',9,'会计科','会计','','',0),(11,7,'SD2',9,'销售2科','销售2','','',1),(12,8,'RD2',9,'开发二科','开二','','',1),(13,8,'项目开发科',9,'项目开发科','开一','','',0),(15,5,'XXX',6,'XXX','XXX','','',1),(16,8,'小微OA开发科',9,'OA开发科','OA','','',0),(17,1,'4444',7,'4444','4444','','44444',1);
/*!40000 ALTER TABLE `think_dept` ENABLE KEYS */;

#
# Source for table "think_dept_grade"
#

DROP TABLE IF EXISTS `think_dept_grade`;
CREATE TABLE `think_dept_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` varchar(10) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "think_dept_grade"
#

/*!40000 ALTER TABLE `think_dept_grade` DISABLE KEYS */;
INSERT INTO `think_dept_grade` VALUES (5,'DG1','总经理','10',0),(6,'DG10','本部','20',1),(7,'DG20','部','30',0),(8,'DG30','处','40',1),(9,'DG40','科','50',0);
/*!40000 ALTER TABLE `think_dept_grade` ENABLE KEYS */;

#
# Source for table "think_doc"
#

DROP TABLE IF EXISTS `think_doc`;
CREATE TABLE `think_doc` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `folder` int(11) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

#
# Data for table "think_doc"
#

/*!40000 ALTER TABLE `think_doc` DISABLE KEYS */;
INSERT INTO `think_doc` VALUES (67,'2013-0001','功能','<section id=\"welcome\">\r\n\t<div class=\"features\">\r\n\t\t<div class=\"container\">\r\n\t\t\t<h2 class=\"text-center\"> 让工作更轻松快乐 </h2>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-4 features-1\">\r\n\t\t\t\t\t<h4><a href=\"#f1\">简单易用</a></h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t基于Bootstrap框架，界面简洁、直观\r\n\t\t\t\t\t\t<br>\r\n\t\t\t\t\t\t关注用户体验，无需培训轻松上手\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4 features-2\">\r\n\t\t\t\t\t<h4><a href=\"#f2\">审批灵活</a></h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t针对小微企业开发的流程管理\r\n\t\t\t\t\t\t<br>\r\n\t\t\t\t\t\t轻松应对随时变动的审核流程\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4 features-3\">\r\n\t\t\t\t\t<h4><a href=\"#f3\">移动办公</a></h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t响应式设计，支持PC、PAD、智能手机</br>随时随地了解公司最新动态\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-4 features-4\">\r\n\t\t\t\t\t<h4><a href=\"#f4\">源码开源</a></h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t免费下载，免费使用</br>可自建服务器，可自行二次开发\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4 features-9\">\r\n\t\t\t\t\t<h4><a href=\"#f5\">实用功能</a></h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t邮件、流程、日程、文档、公告、人脉 ...\r\n\t\t\t\t\t\t<br>\r\n\t\t\t\t\t\t满足小微企业日常办公需要，更多功能开发中\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4 features-6\">\r\n\t\t\t\t\t<h4><a href=\"#f6\">快速安装</a></h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t向导式安装程序，已打包好的集成环境\r\n\t\t\t\t\t\t<br>\r\n\t\t\t\t\t\t非IT专业人员也轻松搭建服务器\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t\t<div class=\"container\" id=\"f1\">\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-6\">\r\n\t\t\t\t\t<hgroup>\r\n\t\t\t\t\t\t<h2 >简单易用</h2>\r\n\t\t\t\t\t\t<h3>基于Bootstrap框架，界面简洁、直观 </h3>\r\n\t\t\t\t\t\t<h3>关注用户体验，无需培训轻松上手 </h3>\t\r\n\t\t\t\t\t\t<p>关注用户体验，无需培训轻松上手 </p>\r\n\t\t\t\t\t</hgroup>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-6 text-center\"><img class=\"img-responsive\" src=\"__PUBLIC__/img/main-1.jpg\">\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t\t<div class=\"container\" id=\"f2\">\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-6\">\r\n\t\t\t\t\t<hgroup>\r\n\t\t\t\t\t\t<h2>审批灵活</h2>\r\n\t\t\t\t\t\t<h3>针对小微企业开发的流程管理 </h3>\r\n\t\t\t\t\t\t<h3>轻松应对随时变动的审核流程 </h3>\t\t\t\t\t\t\r\n\t\t\t\t\t</hgroup>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-6 text-center\"><img class=\"img-responsive\" src=\"__PUBLIC__/img/main-1.jpg\">\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t\t<div class=\"container\" id=\"f3\">\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-6\">\r\n\t\t\t\t\t<hgroup>\r\n\t\t\t\t\t\t<h2>移动办公</h2>\r\n\t\t\t\t\t\t<h3>响应式设计，支持PC、PAD、智能手机</h3>\r\n\t\t\t\t\t\t<h3>随时随地了解公司最新动态</h3>\t\t\t\t\t\t\r\n\t\t\t\t\t</hgroup>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-6 text-center\"><img class=\"img-responsive\" src=\"__PUBLIC__/img/main-1.jpg\">\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t\t<div class=\"container\" id=\"f4\">\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-6\">\r\n\t\t\t\t\t<hgroup>\r\n\t\t\t\t\t\t<h2>源码开源</h2>\r\n\t\t\t\t\t\t<h3>免费下载，免费使用</h3>\r\n\t\t\t\t\t\t<h3>可自建服务器，可自行二次开发</h3>\r\n\t\t\t\t\t</hgroup>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-6 text-center\"><img class=\"img-responsive\" src=\"__PUBLIC__/img/main-1.jpg\">\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t\t<div class=\"container\" id=\"f5\">\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-6\">\r\n\t\t\t\t\t<hgroup>\r\n\t\t\t\t\t\t<h2>实用功能</h2>\r\n\t\t\t\t\t\t<h3>邮件、流程、日程、文档、公告、人脉 ... </h3>\r\n\t\t\t\t\t\t<h3>满足小微企业日常办公需要，更多功能开发中</h3>\r\n\t\t\t\t\t</hgroup>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-6 text-center\"><img class=\"img-responsive\" src=\"__PUBLIC__/img/main-1.jpg\">\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t\t<div class=\"container\" id=\"f6\">\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-6\">\r\n\t\t\t\t\t<hgroup>\r\n\t\t\t\t\t\t<h2>快速安装</h2>\r\n\t\t\t\t\t\t<h3>向导式安装程序，已打包好的集成环境 </h3>\r\n\t\t\t\t\t\t<h3>非IT专业人员也轻松搭建服务器 </h3>\r\n\t\t\t\t\t</hgroup>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-6 text-center\"><img class=\"img-responsive\" src=\"__PUBLIC__/img/main-1.jpg\">\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\t\t\t\t\r\n\t</div>\r\n</section>\r\n',21,'',1,'管理员',1378186521,0,0),(68,'2013-0001','网站首页','<section id=\"welcome\">\r\n\t<div class=\"billboard\">\r\n\t\t<div class=\"container\">\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-6\">\r\n\t\t\t\t\t<hgroup>\r\n\t\t\t\t\t<h1> 让工作更轻松快乐</h1>    \r\n\t\t\t\t\t\t<h3>简单易用、审批灵活、移动办公</h3>\t\t\t\t\t\t\r\n\t\t\t\t\t\t<h3>源码开源、实用功能、快速安装</h3>\t\t\t\t\t\t\t\t\r\n\t\t\t\t\t\t<p style=\"margin-top: 35px;\">\r\n\t\t\t\t\t\t\t<a href=\"/download/\" class=\"btn btn-success btn-lg\" title=\"立即下载小微企业OA系统\">立即下载</a>\r\n\t\t\t\t\t\t</p>\r\n\t\t\t\t\t\t\t<p style=\"margin-top: 35px;\"><b>版本：1.0 beta</b></p>\r\n\t\t\t\t\t\t\t<p><b>更新日期：2013/9/14</b></p>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n\t\t\t\t\t\t\t<p><b>更新日志</b></p>\r\n\t\t\t\t\t\t\t<p>UI 升级到Bootstrap 3.0 更好的支持手机访问</p>\r\n\t\t\t\t\t\t\t<p>完善头像上传功能</p>\t\r\n\t\t\t\t\t</hgroup>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-6 text-center\"><img class=\"img-responsive\" src=\"__PUBLIC__/img/main-1.jpg\">\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t</div>\r\n\t<div class=\"used-by\">\r\n\t\t<div class=\"container\">\r\n\t\t\t<h2>小微OA客户案例</h2>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-4  text-center\">\r\n\t\t\t\t\t<h4>行业</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t公司名称或图片\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4  text-center\">\r\n\t\t\t\t\t<h4>行业</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t公司名称或图片\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4  text-center\">\r\n\t\t\t\t\t<h4>行业</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t公司名称或图片\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-4 text-center\">\r\n\t\t\t\t\t<h4>行业</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t公司名称或图片\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4  text-center\">\r\n\t\t\t\t\t<h4>行业</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t公司名称或图片\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4  text-center\">\r\n\t\t\t\t\t<h4>行业</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t公司名称或图片\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-4 text-center\">\r\n\t\t\t\t\t<h4>行业</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t公司名称或图片\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4  text-center\">\r\n\t\t\t\t\t<h4>行业</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t公司名称或图片\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4  text-center\">\r\n\t\t\t\t\t<h4>行业</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t公司名称或图片\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t</div>\r\n\t<div class=\"features\">\r\n\t\t<div class=\"container\">\r\n\t\t\t<h2 >功能特点</h2>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-4 features-1\">\r\n\t\t\t\t\t<h4>简单易用</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t基于Bootstrap框架，界面简洁、直观\r\n\t\t\t\t\t\t<br>\r\n\t\t\t\t\t\t关注用户体验，无需培训轻松上手\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4 features-2\">\r\n\t\t\t\t\t<h4>审批灵活</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t针对小微企业开发的流程管理\r\n\t\t\t\t\t\t<br>\r\n\t\t\t\t\t\t轻松应对随时变动的审核流程\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4 features-3\">\r\n\t\t\t\t\t<h4>移动办公</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t响应式设计，支持PC、PAD、智能手机</br>随时随地了解公司最新动态\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t\t<div class=\"row\">\r\n \t\t\t\t<div class=\"col-md-4 features-4\">\r\n\t\t\t\t\t<h4>源码开源</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t遵循Apache2开源协议，对商业友好</br>可自建服务器，可自行二次开发\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4 features-9\">\r\n\t\t\t\t\t<h4>实用功能</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t邮件、流程、日程、文档、公告、人脉 ...\r\n\t\t\t\t\t\t<br>\r\n\t\t\t\t\t\t满足小微企业日常办公需要，更多功能开发中\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"col-md-4 features-6\">\r\n\t\t\t\t\t<h4>快速安装</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t向导式安装程序，已打包好的集成环境\r\n\t\t\t\t\t\t<br>\r\n\t\t\t\t\t\t非IT专业人员也轻松搭建服务器\r\n\t\t\t\t\t</p>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t</div>\r\n</section>\r\n',21,'619;',1,'管理员',1379040140,1381674471,0),(69,'2013-0001','下载','<section id=\"welcome\">\r\n\t<div class=\"download\">\r\n\t\t<div class=\"container\">\r\n\t\t\t<h3>小微OA下载地址</h3>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-12 \">\r\n\t\t\t\t\t<h4><b>Git@OSC 下载地址</b></h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t面向PHP开发人员，定期更新稳定版代码\r\n\t\t\t\t\t</p>\r\n\t\t\t\t\t<a href=\"https://git.oschina.net/smeoa/smeoa\"  target=\"_blank\">https://git.oschina.net/smeoa/smeoa</a>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t\t<p>\r\n\t\t\t\t&nbsp;\r\n\t\t\t</p>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-12 \">\r\n\t\t\t\t\t<h4><b>XAMPP集成环境版</b></h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t面向非IT专业人员使用，定期更新稳定版代码\r\n\t\t\t\t\t</p>\r\n\t\t\t\t\t<a href=\"http://yunpan.cn/QbQ6ipTyxvzma\" target=\"_blank\">360云盘下载点</a>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t\t<p>\r\n\t\t\t\t&nbsp;\r\n\t\t\t</p>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-12 \">\r\n\t\t\t\t\t<h4><b>其他下载点</b></h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t面向自建服务器的用户，定期更新稳定版代码\r\n\t\t\t\t\t</p>\r\n\t\t\t\t\t<a href=\"http://down.admin5.com/php/104734.html\"  target=\"_blank\">Admin5 下载点</a>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t\t\t<p>\r\n\t\t\t\t&nbsp;\r\n\t\t\t</p>\t\t\r\n\t</div>\r\n</section>\r\n',21,'',1,'管理员',1381753260,0,0),(70,'2013-0001','帮助文档','<layout name=\'Layout/site_layout\' />\r\n<section id=\"welcome\">\r\n\t<div class=\"guide\">\r\n\t\t<div class=\"container\">\r\n\t\t\t<h3>文档</h3>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<div class=\"col-md-3\">\r\n\t\t\t\t\t<ul>\r\n\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t<h3>1.&nbsp;安装教程</h3>\r\n\t\t\t\t\t\t\t<ol>\r\n\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">下载PHP运行环境</a>\r\n\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">下载PHP运行环境</a>\r\n\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">下载PHP运行环境</a>\r\n\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t</ol>\r\n\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t<h3>2.&nbsp;基础数据设置</h3>\r\n\t\t\t\t\t\t\t<ul>\r\n\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t<h4>系统设置</h4>\r\n\t\t\t\t\t\t\t\t\t<ol>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">菜单设置</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">系统设置</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t</ol>\r\n\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t<h4>公司信息管理</h4>\r\n\t\t\t\t\t\t\t\t\t<ol>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">组织图</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">部门级别</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">职位/职级</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">员工信息</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">角色</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">人员信息</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t</ol>\r\n\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t<h4>权限管理</h4>\r\n\t\t\t\t\t\t\t\t\t<ol>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">权限组管理</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">权限编码-菜单映射</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"/download\" target=\"_blank\">权限编码-用户</a>\r\n\t\t\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t\t</ol>\r\n\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t</ul>\r\n\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t<h3>3.&nbsp;系统使用</h3>\r\n\t\t\t\t\t\t\t<ul>\r\n\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t<h4>邮件</h4>\r\n\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t<h4>审批</h4>\r\n\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t\t<li>\r\n\t\t\t\t\t\t\t\t\t<h4>日程</h4>\r\n\t\t\t\t\t\t\t\t</li>\r\n\t\t\t\t\t\t\t</ul>\r\n\t\t\t\t\t\t</li>\r\n\t\t\t\t\t</ul>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n</section>\r\n',21,'',1,'管理员',1381753508,0,0),(71,'2013-0001','商业服务','<section id=\"welcome\">\r\n<div class=\"service\">\r\n\t<div class=\"container\">\r\n\t\t<h3>\r\n\t\t\t商业服务\r\n\t\t</h3>\r\n\t\t<div class=\"row\">\r\n\t\t\t<table class=\"table table-bordered\">\r\n\t\t\t\t<tbody class=\"text-center\">\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<th class=\"col-md-3 text-center success\">\r\n\t\t\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t\t\t服务项目\r\n\t\t\t\t\t\t\t</h4>\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<th class=\"col-md-3 text-center success\">\r\n\t\t\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t\t\t普通用户\r\n\t\t\t\t\t\t\t</h4>\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<th class=\"col-md-3 text-center success\">\r\n\t\t\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t\t\t开发者\r\n\t\t\t\t\t\t\t</h4>\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<th class=\"col-md-3 text-center success\">\r\n\t\t\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t\t\t企业客户\r\n\t\t\t\t\t\t\t</h4>\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t商业使用许可(永久)\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\tQQ群支持\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t企业客户专用群\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\tQQ远程支持（一年）\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t邮件支持（一年）\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t电话支持（一年）\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t最新发行版\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t最新源代码\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t上门优化安装及数据初始化 *\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t上门系统使用培训 *\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-ok\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t源代码升级期限\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<i class=\"icon-remove\"></i>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t1年\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t永久\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr class=\"active\">\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t服务价格\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t0 RMB\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t100 RMB\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t5000 RMB\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr class=\"active\">\r\n\t\t\t\t\t\t<td colspan=\"4\">\r\n\t\t\t\t\t\t\t<a title=\"点击这里给我发消息\" href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=1006666005&amp;site=qq&amp;menu=yes\" target=\"_blank\"><img title=\"点击这里给我发消息\" alt=\"点击这里给我发消息\" src=\"http://wpa.qq.com/pa?p=2:1006666005:52\" border=\"0\" /> 购买咨询QQ：1006666005</a> \r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t</tbody>\r\n\t\t\t</table>\r\n\t\t\t<p>\r\n\t\t\t\t* 除青岛地区以外的上门服务，需报销差旅费\r\n\t\t\t</p>\r\n\t\t\t<p>\r\n\t\t\t\t说明:以下情况不属于服务范围\r\n\t\t\t</p>\r\n\t\t\t<p>\r\n\t\t\t\t1) 自行修改或使用非原始小微OA程序代码产生的问题;\r\n\t\t\t</p>\r\n\t\t\t<p>\r\n\t\t\t\t2) 自行对数据库进行直接操作导致数据库出错或者崩溃;\r\n\t\t\t</p>\r\n\t\t\t<p>\r\n\t\t\t\t3) 服务器、虚拟主机原因造成的系统故障;\r\n\t\t\t</p>\r\n\t\t\t<p>\r\n\t\t\t\t4) 二次开发或定制;\r\n\t\t\t</p>\r\n\t\t</div>\r\n\t\t<h3>\r\n\t\t\t定制服务\r\n\t\t</h3>\r\n\t\t<div class=\"row\">\r\n\t\t\t<table class=\"table table-bordered\">\r\n\t\t\t\t<tbody>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<th class=\"active\">\r\n\t\t\t\t\t\t\t1. 客户提出需求\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t客户提出软件开发项目的大概要求及提供相关资料（如：图形界面，文字说明，报表格式等）；\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<th class=\"active\">\r\n\t\t\t\t\t\t\t2. 提供解决方案和报价\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t分析客户提出的需求，评估工作量，制定解决方案及报价\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<th class=\"active\">\r\n\t\t\t\t\t\t\t3. 进一步沟通\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t双方就项目内容进行协商，修改，补充，以达成共识并确定项目细节和价格\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<th class=\"active\">\r\n\t\t\t\t\t\t\t4. 双方确立合作意向\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t对项目开发日程及项目产出物及维护方案与客户达成一致\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<th class=\"active\">\r\n\t\t\t\t\t\t\t5. 客户支付预付款\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t双方签署定制开发合同，并预付50%\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<th class=\"active\">\r\n\t\t\t\t\t\t\t6. 软件设计审核\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t客户对系统流程与功能进行审核并提出修改意见，最终以书面形式签字确认功能细节\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<th class=\"active\">\r\n\t\t\t\t\t\t\t7. 软件开发，测试，验收，培训\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t需要跟开发人员与客户紧密合作，共同进行测试及时反馈及改进\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<th class=\"active\">\r\n\t\t\t\t\t\t\t8. 维护\r\n\t\t\t\t\t\t</th>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t项目验收后，提供12个月免费维护期，维修期过后有多种灵活的有偿维护方式\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t</tbody>\r\n\t\t\t</table>\r\n\t\t</div>\r\n\t</div>\r\n</div>\r\n</section>',21,'',1,'管理员',1381753752,1381754317,0),(72,'2013-0001','合作伙伴','<section id=\"welcome\">\r\n\t<div class=\"partner\">\r\n\t\t<div class=\"container\">\r\n\t\t\t<h2>合作伙伴</h2>\r\n\t\t\t<div class=\"row\">\r\n\t\t\t\t<a href=\"http://www.zentao.net/\"  style=\"padding-left:15px;\" target=\"_blank\">禅道项目管理</a>\r\n\t\t\t\t<a href=\"http://www.chanzhi.org/\"  style=\"padding-left:15px;\" target=\"_blank\">蝉知企业门户</a>\r\n\t\t\t\t<a href=\"http://www.5aiw.net/\"  style=\"padding-left:15px;\" target=\"_blank\">天启网络</a>\r\n\t\t\t\t<a href=\"http://7utu.cn/\"  style=\"padding-left:15px;\" target=\"_blank\">优途工作室</a>\r\n\t\t\t\t<a href=\"http://down.admin5.com/\" style=\"padding-left:15px;\" target=\"_blank\">源码下载</a>\r\n\t\t\t\t<a href=\"https://git.oschina.net/\"  style=\"padding-left:15px;\" target=\"_blank\">git@oschina</a>\r\n\t\t\t\t<a href=\"http://www.thinkphp.cn\"  style=\"padding-left:15px;\" target=\"_blank\">Thinkphp</a>\r\n\t\t\t\t<a href=\"http://www.kindsoft.net/\"  style=\"padding-left:15px;\" target=\"_blank\">KindEditor</a>\r\n\t\t\t\t<a href=\"http://t.qq.com/php_oa\"  style=\"padding-left:15px;\" target=\"_blank\">腾讯微博</a>\r\n\t\t\t\t<a href=\"http://www.bootcss.com/\"  style=\"padding-left:15px;\" target=\"_blank\">Bootstrap中文站</a>\r\n\t\t\t\t<a href=\"http://s.click.taobao.com/t?e=s%3D%2F1zst%2FwTFV4cQipKwQzePCperVdZeJvioEMjVa6CPbsYX8TY%2BNEwd8H1QuFK0mmBaK2i51G0q43DX0%2BHH2IEVcsPm9Epdmj4VmHrTImWYFdKgt1PUoOqyGDLEhy1nIVFfne2RAEBbwM%3D%26m%3D2&p=mm_11478181_0_0\"  style=\"padding-left:15px;\">阿里云主机</a>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t</div>\r\n\t</div>\r\n</section>\r\n',23,'',1,'管理员',1381755733,0,0),(73,'2013-0001','关于我们','<section id=\"welcome\">\r\n<div class=\"about_us\">\r\n\t<div class=\"container\">\r\n\t\t<h3>\r\n\t\t\t关于我们\r\n\t\t</h3>\r\n\t\t<div class=\"row\">\r\n\t\t\t<div class=\"col-md-12 \">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t我们是小微OA系统开发团队\r\n\t\t\t\t\t</h4>\r\n\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t帮助快速成长的小微企业实现信息化\r\n\t\t\t\t\t</h4>\r\n\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t为不同需求的小微企业提供个性化的解决方案\r\n\t\t\t\t\t</h4>\r\n\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t我们希望与更多的小微企业构建长期稳定的双赢合作关系\r\n\t\t\t\t\t</h4>\r\n\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t合作电话：400-####-####\r\n\t\t\t\t\t</h4>\r\n\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t电子邮件：smeoa#qq.com (将#换成@)\r\n\t\t\t\t\t</h4>\r\n\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t开源交流群：1371-09597\r\n\t\t\t\t\t</h4>\r\n\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t企业客户服务群：1491-59559\r\n\t\t\t\t\t</h4>\r\n\t\t\t\t\t<h4>\r\n\t\t\t\t\t\t咨询QQ：<a title=\"点击这里给我发消息\" href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=1006666005&amp;site=qq&amp;menu=yes\" target=\"_blank\">100-6666-005 <img title=\"点击这里给我发消息\" alt=\"点击这里给我发消息\" src=\"http://wpa.qq.com/pa?p=2:1006666005:52\" border=\"0\" /></a> \r\n\t\t\t\t\t</h4>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\t<br />\r\n\t\t\t\t\t</p>\r\n\t\t\t\t\t\t</div>\r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t\t</div>\r\n\t\t\t\t\t</div>\r\n</section>',22,'',1,'管理员',1381756334,0,0),(74,'2013-0008','111111','11111111111111111',21,'',1,'管理员',1384826813,0,0),(75,'2013-0009','1233123123','<p>\r\n\t1231231231231\r\n</p>\r\n<p>\r\n\t123123123\r\n</p>',21,'785;786;787;788;793;794;795;796;',1,'管理员',1385005640,1385022565,0),(76,'2013-0010','12341','12314123',21,'797;',1,'管理员',1385949808,0,0),(77,'2013-0011','12312','31231123123123',21,'undefined;undefined;undefined;undefined;undefined;undefined;816;817;818;819;820;821;',1,'管理员',1386647217,1386660792,0),(78,'2013-0012','126548796878','126548796878',21,'829;830;',1,'管理员',1386667612,0,0),(79,'2013-0013','123123','123123',21,'',1,'管理员',1386722999,1386723013,0),(80,'2013-0014','123','<div style=\"text-align:center;\">\r\n\t<span style=\"line-height:1.5;\">123</span> \r\n</div>\r\n<img title=\"\" alt=\"\" align=\"\" src=\"/Data/Files/doc/201312/52a7bfa7da602.jpg\" width=\"800\" height=\"449\" />',21,'838;839;840;841;',1,'管理员',1386725275,1386727022,0);
/*!40000 ALTER TABLE `think_doc` ENABLE KEYS */;

#
# Source for table "think_duty"
#

DROP TABLE IF EXISTS `think_duty`;
CREATE TABLE `think_duty` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `duty_no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
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
  `name` varchar(50) NOT NULL DEFAULT '',
  `savename` varchar(100) NOT NULL,
  `size` varchar(20) NOT NULL,
  `extension` varchar(20) NOT NULL,
  `node_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=842 DEFAULT CHARSET=utf8;

#
# Data for table "think_file"
#

/*!40000 ALTER TABLE `think_file` DISABLE KEYS */;
INSERT INTO `think_file` VALUES (762,'C360_2011-10-11-07-46-06.jpg','popup/201311/52787ee861227.jpg','796332','jpg',0,43,1383628520,0),(763,'PL SQL DEVELOPER 软件报价2013-11-1.xls','mail/201311/527c31453d35c.xls','33792','xls',0,1,1383870789,0),(764,'10月2013年-正版通用软件渠道报价单-亮钻-夏霏.doc','mail/201311/527c314546189.doc','120832','doc',0,1,1383870789,0),(765,'111（海外软件目录单）-2013版- 上海亮钻-夏霏 - 副本.xls','mail/201311/527c3145497c0.xls','4269056','xls',0,1,1383870789,0),(766,'PL SQL DEVELOPER 软件报价2013-11-1.xls','mail/201311/527c314ba8f70.xls','33792','xls',0,1,1383870795,0),(767,'10月2013年-正版通用软件渠道报价单-亮钻-夏霏.doc','mail/201311/527c314baaa93.doc','120832','doc',0,1,1383870795,0),(768,'111（海外软件目录单）-2013版- 上海亮钻-夏霏 - 副本.xls','mail/201311/527c314bacab3.xls','4269056','xls',0,1,1383870795,0),(769,'C360','mail/201311/527c3690e984a.jpg','796332','jpg',0,1,1383872144,0),(770,'IMG_20120410_142122.jpg','doc/201311/528d8243191d3.jpg','730241','jpg',0,1,1385005635,0),(771,'IMG_20120410_162657_2012-04-10_16-26-56-000.jpg','doc/201311/528d93e3d9fe4.jpg','705084','jpg',0,1,1385010147,0),(772,'IMG_20120410_163711.jpg','doc/201311/528d93e430e87.jpg','333738','jpg',0,1,1385010148,0),(773,'IMG_20120410_163711_2012-04-10_16-37-10-000.jpg','doc/201311/528d93e479809.jpg','333738','jpg',0,1,1385010148,0),(774,'IMG_20120410_153810_2012-04-10_15-38-10-000.jpg','doc/201311/528d94183cbbd.jpg','761029','jpg',0,1,1385010200,0),(775,'IMG_20120410_153823.jpg','doc/201311/528d94188db09.jpg','337577','jpg',0,1,1385010200,0),(776,'IMG_20120410_153823_2012-04-10_15-38-22-000.jpg','doc/201311/528d9418cf130.jpg','337577','jpg',0,1,1385010200,0),(777,'IMG_20120410_155414.jpg','doc/201311/528d94191e4eb.jpg','766104','jpg',0,1,1385010201,0),(778,'IMG_20120410_142323.jpg','doc/201311/528d94392778e.jpg','748435','jpg',0,1,1385010233,0),(779,'IMG_20120410_142323.jpg','doc/201311/528d9447626a9.jpg','748435','jpg',0,1,1385010247,0),(780,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','doc/201311/528d94591b601.jpg','730241','jpg',0,1,1385010265,0),(781,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','doc/201311/528d94c71b2f5.jpg','730241','jpg',0,1,1385010375,0),(782,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','doc/201311/528d9520842ec.jpg','730241','jpg',0,1,1385010464,0),(783,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','doc/201311/528d95741ec2d.jpg','730241','jpg',0,1,1385010548,0),(784,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','doc/201311/528d95b3d5916.jpg','730241','jpg',0,1,1385010611,0),(785,'IMG_20120410_142323 - 副本.jpg','doc/201311/528d9605bd76e.jpg','748435','jpg',0,1,1385010693,0),(786,'IMG_20120410_142323.jpg','doc/201311/528d9606173e1.jpg','748435','jpg',0,1,1385010694,0),(787,'IMG_20120410_142323_2012-04-10_14-23-22-000.jpg','doc/201311/528d96066d5e1.jpg','748435','jpg',0,1,1385010694,0),(788,'IMG_20120410_153810.jpg','doc/201311/528d9606be40d.jpg','761029','jpg',0,1,1385010694,0),(789,'IMG_20120410_142122.jpg','doc/201311/528d9b792e451.jpg','730241','jpg',0,1,1385012089,0),(790,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','doc/201311/528d9b7977230.jpg','730241','jpg',0,1,1385012089,0),(791,'IMG_20120410_142128.jpg','doc/201311/528d9b79c8866.jpg','723407','jpg',0,1,1385012089,0),(792,'IMG_20120410_142128_2012-04-10_14-21-28-000.jpg','doc/201311/528d9b7a23a25.jpg','723407','jpg',0,1,1385012090,0),(793,'IMG_20120410_142323 - 副本.jpg','doc/201311/528d9ea5bda91.jpg','748435','jpg',0,1,1385012901,0),(794,'IMG_20120410_142323.jpg','doc/201311/528d9ea61074a.jpg','748435','jpg',0,1,1385012902,0),(795,'IMG_20120410_142323_2012-04-10_14-23-22-000.jpg','doc/201311/528d9ea658df1.jpg','748435','jpg',0,1,1385012902,0),(796,'IMG_20120410_153810.jpg','doc/201311/528d9ea698897.jpg','761029','jpg',0,1,1385012902,0),(797,'IMG_20120410_142323.jpg','Doc/201312/529bea6dbe077.jpg','748435','jpg',0,1,1385949805,0),(798,'IMG_20120410_142323 - 副本.jpg','Popup/201312/529ed5aa54103.jpg','748435','jpg',0,1,1386141098,0),(799,'IMG_20120410_142323 - 副本.jpg','Popup/201312/529ed5c5e74a2.jpg','748435','jpg',0,1,1386141125,0),(800,'IMG_20120410_142323 - 副本.jpg','Doc/201312/52a26f8ee708a.jpg','748435','jpg',0,1,1386377102,0),(801,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','Doc/201312/52a26fb2c4611.jpg','730241','jpg',0,1,1386377138,0),(802,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','Doc/201312/52a26fc02776a.jpg','730241','jpg',0,1,1386377152,0),(803,'IMG_20120410_142323.jpg','Doc/201312/52a6c02114d53.jpg','748435','jpg',0,1,1386659873,0),(804,'IMG_20120410_142128.jpg','Doc/201312/52a6c04a44fd0.jpg','723407','jpg',0,1,1386659914,0),(805,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','Doc/201312/52a6c0bc9f87d.jpg','730241','jpg',0,1,1386660028,0),(806,'IMG_20120410_142323_2012-04-10_14-23-22-000.jpg','Doc/201312/52a6c0bceea74.jpg','748435','jpg',0,1,1386660028,0),(807,'IMG_20120410_153823_2012-04-10_15-38-22-000.jpg','Doc/201312/52a6c0cfbfb77.jpg','337577','jpg',0,1,1386660047,0),(808,'IMG_20120410_142128_2012-04-10_14-21-28-000.jpg','Doc/201312/52a6c0d022294.jpg','723407','jpg',0,1,1386660048,0),(809,'IMG_20120410_142323 - 副本.jpg','Doc/201312/52a6c0d071c74.jpg','748435','jpg',0,1,1386660048,0),(810,'IMG_20120410_142323 - 副本.jpg','Doc/201312/52a6c11b2942c.jpg','748435','jpg',0,1,1386660123,0),(811,'IMG_20120410_142128_2012-04-10_14-21-28-000.jpg','Doc/201312/52a6c243ae3ae.jpg','723407','jpg',0,1,1386660419,0),(812,'IMG_20120410_142323 - 副本.jpg','Doc/201312/52a6c243f22ab.jpg','748435','jpg',0,1,1386660420,0),(813,'IMG_20120410_142128_2012-04-10_14-21-28-000.jpg','Doc/201312/52a6c288c09a5.jpg','723407','jpg',0,1,1386660488,0),(814,'IMG_20120410_142323 - 副本.jpg','Doc/201312/52a6c28916e43.jpg','748435','jpg',0,1,1386660489,0),(815,'IMG_20120410_142323_2012-04-10_14-23-22-000.jpg','Doc/201312/52a6c2b2cf8f3.jpg','748435','jpg',0,1,1386660530,0),(816,'IMG_20120410_142128_2012-04-10_14-21-28-000.jpg','Doc/201312/52a6c35ccade6.jpg','723407','jpg',0,1,1386660700,0),(817,'IMG_20120410_142323 - 副本.jpg','Doc/201312/52a6c36832a25.jpg','748435','jpg',0,1,1386660712,0),(818,'IMG_20120410_142128.jpg','Doc/201312/52a6c3afd69f1.jpg','723407','jpg',0,1,1386660783,0),(819,'IMG_20120410_153823_2012-04-10_15-38-22-000.jpg','Doc/201312/52a6c3b26dd84.jpg','337577','jpg',0,1,1386660786,0),(820,'IMG_20120410_142128_2012-04-10_14-21-28-000.jpg','Doc/201312/52a6c3b3506e3.jpg','723407','jpg',0,1,1386660787,0),(821,'IMG_20120410_142323 - 副本.jpg','Doc/201312/52a6c3b42a2f3.jpg','748435','jpg',0,1,1386660788,0),(822,'IMG_20120410_142323 - 副本.jpg','Popup/201312/52a6d3cf17ebf.jpg','748435','jpg',0,1,1386664911,0),(823,'IMG_20120410_142323 - 副本.jpg','Popup/201312/52a6d4337f75c.jpg','748435','jpg',0,1,1386665011,0),(824,'IMG_20120410_142122.jpg','Popup/201312/52a6d512594b3.jpg','730241','jpg',0,1,1386665234,0),(825,'IMG_20120410_142323 - 副本.jpg','Popup/201312/52a6d5f0df475.jpg','748435','jpg',0,1,1386665456,0),(826,'IMG_20120410_142128_2012-04-10_14-21-28-000.jpg','201312/52a6d6a14bf50.jpg','723407','jpg',0,1,1386665633,0),(827,'IMG_20120410_142323 - 副本.jpg','popup/201312/52a6d6b61feeb.jpg','748435','jpg',0,1,1386665654,0),(828,'IMG_20120410_142323 - 副本.jpg','popup/201312/52a6d8276a1a5.jpg','748435','jpg',0,1,1386666023,0),(829,'IMG_20120410_142128_2012-04-10_14-21-28-000.jpg','doc/201312/52a6de56b786b.jpg','723407','jpg',0,1,1386667606,0),(830,'IMG_20120410_142323 - 副本.jpg','doc/201312/52a6de570c3ae.jpg','748435','jpg',0,1,1386667607,0),(831,'IMG_20120410_142323 - 副本.jpg','doc/201312/52a7b473cb487.jpg','748435','jpg',0,1,1386722420,0),(832,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','doc/201312/52a7b47c92a5d.jpg','730241','jpg',0,1,1386722428,0),(833,'IMG_20120410_142128.jpg','doc/201312/52a7b47d60f2a.jpg','723407','jpg',0,1,1386722429,0),(834,'IMG_20120410_142128_2012-04-10_14-21-28-000.jpg','doc/201312/52a7b47e4b1ee.jpg','723407','jpg',0,1,1386722430,0),(835,'IMG_20120410_142323 - 副本.jpg','doc/201312/52a7b47ea5701.jpg','748435','jpg',0,1,1386722430,0),(836,'IMG_20120410_142323 - 副本.jpg','doc/201312/52a7bfa7da602.jpg','748435','jpg',0,1,1386725287,0),(837,'IMG_20131123_090423.jpg','worklog/201312/52a7c568a1e33.jpg','869159','jpg',0,1,1386726760,0),(838,'IMG_20120410_155414.jpg','doc/201312/52a7c669c17d1.jpg','766104','jpg',0,1,1386727017,0),(839,'IMG_20120410_142122.jpg','doc/201312/52a7c66a2055b.jpg','730241','jpg',0,1,1386727018,0),(840,'IMG_20120410_142122_2012-04-10_14-21-22-000.jpg','doc/201312/52a7c66a76680.jpg','730241','jpg',0,1,1386727018,0),(841,'IMG_20120410_142323_2012-04-10_14-23-22-000.jpg','doc/201312/52a7c66ac7fdf.jpg','748435','jpg',0,1,1386727018,0);
/*!40000 ALTER TABLE `think_file` ENABLE KEYS */;

#
# Source for table "think_flow"
#

DROP TABLE IF EXISTS `think_flow`;
CREATE TABLE `think_flow` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `confirm` varchar(200) NOT NULL,
  `confirm_name` text NOT NULL,
  `consult` varchar(200) NOT NULL,
  `consult_name` text NOT NULL,
  `refer` varchar(200) NOT NULL,
  `refer_name` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `create_date` varchar(10) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `step` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `emp_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `refer_name` (`refer_name`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

#
# Data for table "think_flow"
#

/*!40000 ALTER TABLE `think_flow` DISABLE KEYS */;
INSERT INTO `think_flow` VALUES (87,'会计起案2013-001','第一个测试','<table style=\"width:94.48%;height:112px;\" border=\"1\" cellspacing=\"0\" bordercolor=\"#000000\" cellpadding=\"2\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<span></span> \r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','42|43|','<span emp_no=\"42\">2001/总监 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"43\">2003/主管 </span>','','','','','1','',1,'管理员',10,'会计科','',1383626777,0,20,0,NULL),(88,'行政起案2013-001','123123','<table style=\"width:94.48%;height:112px;\" border=\"1\" cellspacing=\"0\" bordercolor=\"#000000\" cellpadding=\"2\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t12123\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<span></span> \r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','2001|2003|','<span emp_no=\"2001\">2001/总监 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"2003\">2003/主管 </span>','','','','','1','',42,'2001',6,'行政部','',1383627057,0,40,0,NULL),(89,'会计起案2013-002','edit','<table style=\"width:94.48%;height:112px;\" border=\"1\" cellspacing=\"0\" bordercolor=\"#000000\" cellpadding=\"2\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t33333\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t3333333\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<span></span> \r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','2001|2003|','<span id=\"2001\" data=\"2001\"><nobr><b title=\"2001/总监\">2001/总监</b></nobr><b><i class=\"icon-arrow-right\"></i></b></span><span id=\"2003\" data=\"2003\"><nobr><b title=\"2003/主管\">2003/主管</b></nobr></span>','','','','','1','',1,'管理员',10,'会计科','',1384484455,1384492735,40,0,NULL),(90,'会计起案2013-003','123456789','<table style=\"width:94.48%;height:112px;\" border=\"1\" cellspacing=\"0\" bordercolor=\"#000000\" cellpadding=\"2\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t123456789\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t3215463565132\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t546546546545\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t564654654654321\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t6654654654654\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t5646845486548\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t5465465465465465\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t5465454656565564\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t986548654846488\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t65465465465465465\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t54684654846484658\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t56484654846484658\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t6548465858468\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t65485844654848\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t5484654854846545\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\t<span></span>564646546548465\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','2001|2222|2003|','<span id=\"2001\" data=\"2001\"><nobr><b title=\"2001/总监\">2001/总监</b></nobr><b><i class=\"icon-arrow-right\"></i></b></span><span id=\"2222\" data=\"2222\"><nobr><b title=\"2222/总监\">2222/总监</b></nobr><b><i class=\"icon-arrow-right\"></i></b></span><span id=\"2003\" data=\"2003\"><nobr><b title=\"2003/主管\">2003/主管</b></nobr></span>','','','','','1','',1,'管理员',10,'会计科','',1384502144,0,0,0,NULL),(91,'会计起案2013-004','1111111111','<table style=\"width:94.48%;height:112px;\" border=\"1\" cellspacing=\"0\" bordercolor=\"#000000\" cellpadding=\"2\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<span></span> \r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','2001|2003|','<span id=\"2001\" data=\"2001\"><nobr><b title=\"2001/总监\">2001/总监</b></nobr><b><i class=\"icon-arrow-right\"></i></b></span><span id=\"2003\" data=\"2003\"><nobr><b title=\"2003/主管\">2003/主管</b></nobr></span>','','','','','1','',1,'管理员',10,'会计科','',1384505103,0,0,0,NULL),(92,'会计起案2013-005','123123123141231231','<table style=\"width:94.48%;height:112px;\" border=\"1\" cellspacing=\"0\" bordercolor=\"#000000\" cellpadding=\"2\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<span></span> \r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','2001|2003|','<span id=\"2001\" data=\"2001\"><nobr><b title=\"2001/总监\">2001/总监</b></nobr><b><i class=\"icon-arrow-right\"></i></b></span><span id=\"2003\" data=\"2003\"><nobr><b title=\"2003/主管\">2003/主管</b></nobr></span>','','','','','1','',1,'管理员',10,'会计科','',1384505245,0,0,0,NULL),(93,'会计起案2013-006','123123123','<table style=\"width:94.48%;height:112px;\" border=\"1\" cellspacing=\"0\" bordercolor=\"#000000\" cellpadding=\"2\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t123123123\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<span></span> \r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','undefined|undefined|','\r\n\t\t\t\t<span emp_no=\"dgp_5_2\">总经理-经理 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"dgp_7_2\">部-经理 </span>\t\t\t','undefined|','\r\n\t\t\t\t<span emp_no=\"dgp_5_2\">总经理-经理 </span>\t\t\t','','\r\n\t\t\t\t\t\t\t','1','',1,'管理员',10,'会计科','',1385083803,0,20,0,'admin');
/*!40000 ALTER TABLE `think_flow` ENABLE KEYS */;

#
# Source for table "think_flow_log"
#

DROP TABLE IF EXISTS `think_flow_log`;
CREATE TABLE `think_flow_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flow_id` int(11) NOT NULL,
  `emp_no` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(20) NOT NULL,
  `step` int(11) NOT NULL,
  `result` int(11) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `comment` text NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

#
# Data for table "think_flow_log"
#

/*!40000 ALTER TABLE `think_flow_log` DISABLE KEYS */;
INSERT INTO `think_flow_log` VALUES (105,87,'42',NULL,'',21,NULL,1383626777,0,'',0),(106,88,'2001',42,'2001',21,1,1383627057,1383627079,'123456',0),(107,88,'2003',43,'2003',22,1,1383627079,1383627105,'1234657',0),(108,89,'2001',42,'2001',21,1,1384484455,1384492701,'12314123154123',0),(109,89,'2003',43,'2003',22,1,1384492701,1384492748,'12314123154123 ',0),(110,90,'2001',42,'2001',21,0,1384502144,1384502984,'',0),(111,91,'2001',42,'2001',21,1,1384505103,1384505652,'1231231',0),(112,92,'2001',NULL,'',21,NULL,1384505245,0,'',0),(113,91,'2003',43,'2003',22,0,1384505652,1384506367,'',0),(114,93,'undefined',NULL,'',21,NULL,1385083803,0,'',0);
/*!40000 ALTER TABLE `think_flow_log` ENABLE KEYS */;

#
# Source for table "think_flow_type"
#

DROP TABLE IF EXISTS `think_flow_type`;
CREATE TABLE `think_flow_type` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(20) NOT NULL,
  `doc_no_format` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `short` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `confirm` varchar(100) NOT NULL,
  `confirm_name` text NOT NULL,
  `consult` varchar(100) NOT NULL,
  `consult_name` text NOT NULL,
  `refer` varchar(100) NOT NULL,
  `refer_name` text NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  `is_edit` tinyint(3) NOT NULL DEFAULT '0',
  `is_lock` tinyint(3) NOT NULL DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "think_flow_type"
#

/*!40000 ALTER TABLE `think_flow_type` DISABLE KEYS */;
INSERT INTO `think_flow_type` VALUES (1,'起案','{DEPT}{SHORT}{YYYY}-{###}','起案','起案','<table style=\"width:94.48%;height:112px;\" border=\"1\" cellspacing=\"0\" bordercolor=\"#000000\" cellpadding=\"2\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p align=\"center\">\r\n\t\t\t\t\tASDF\r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<span></span> \r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','dgp_5_2|dgp_7_2|','<span emp_no=\"dgp_5_2\">总经理-经理 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"dgp_7_2\">部-经理 </span>','dgp_5_2|','<span emp_no=\"dgp_5_2\">总经理-经理 </span>','','',0,1384491390,0,1,0,0),(5,'固定','{DEPT}{####}','固定流程','固定','固定流程','dp_4_2|dp_4_3|dp_5_5|','<span emp_no=\"dp_4_2\">人事科-经理 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"dp_4_3\">人事科-总监 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"dp_5_5\">总经理-总经理 </span>','','','','',1346553291,1380198986,0,0,1,0),(8,'固定','{DEPT}{YYYY}{M}{###}','办公用品采购','办公用品采购','办公用品采购计划','dgp_9_2|dp_6_3|','<span emp_no=\"dgp_9_2\">科-经理 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"dp_6_3\">行政部-总监 </span>','','','','',1376464817,1381034860,0,0,0,0),(9,'固定','{DEPT}{YYYY}{M}{###}','出差审批','出差审批','<span style=\"color:black;font-family:宋体;font-size:11pt;\"> </span><span style=\"color:black;font-family:宋体;font-size:11pt;\"> </span><span style=\"color:black;font-family:宋体;font-size:11pt;\"> </span> \r\n<table style=\"width:100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" width=\"109\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">申请时间<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" width=\"109\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span><span style=\"line-height:22px;font-size:15px;\"><br />\r\n</span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" width=\"109\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">预计完成时间<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" width=\"109\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span><span style=\"line-height:22px;font-size:15px;\"><br />\r\n</span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" width=\"109\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">实际完成时间<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" width=\"109\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span><span style=\"line-height:22px;font-size:15px;\"><br />\r\n</span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:currentColor;\" height=\"33\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" rowspan=\"3\" width=\"109\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">出差城市、路线及时间安排<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" rowspan=\"3\" width=\"547\" colspan=\"5\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span><span style=\"line-height:22px;font-size:15px;\"><br />\r\n</span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:currentColor;\" height=\"33\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style=\"border:currentColor;\" height=\"33\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style=\"border:currentColor;\" height=\"33\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" rowspan=\"2\" width=\"109\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">出差要达成的主要绩效目标<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" rowspan=\"2\" width=\"547\" colspan=\"5\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span><span style=\"line-height:22px;font-size:15px;\"><br />\r\n</span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:currentColor;\" height=\"33\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style=\"border:currentColor;\" height=\"33\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','dgp_9_2|dgp_7_3|dept_4|','<span emp_no=\"dgp_9_2\">科-经理 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"dgp_7_3\">部-总监 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"dept_4\">人事科 </span>','','','','',1376464911,1381034900,101,0,0,0),(10,'固定','{DEPT}{YYYY}{M}{###}','员工请假申请（三天以内）','员工请假申请','<span style=\"font-family:宋体;font-size:12pt;\"> </span> \r\n<table style=\"width:100%;border-collapse:collapse;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style=\"border:1pt solid black;\" rowspan=\"2\" width=\"83\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span style=\"font-family:宋体;font-size:12pt;\">类别<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" width=\"761\">\r\n\t\t\t\t<p style=\"text-align:left;\" align=\"left\">\r\n\t\t\t\t\t<span style=\"font-family:宋体;font-size:12pt;\"><span> </span>1.</span><span style=\"font-family:宋体;font-size:12pt;\">市内公出<span><span> </span>2.</span>串休，余<span>( )</span>小时<span><span> </span>3.</span>加班<span><span> </span>4.</span>其它：<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:currentColor;\" height=\"37\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" width=\"761\">\r\n\t\t\t\t<p style=\"text-align:left;\" align=\"left\">\r\n\t\t\t\t\t<span style=\"font-family:宋体;font-size:12pt;\"><span> </span>1. </span><span style=\"font-family:宋体;font-size:12pt;\">事假<span><span> </span>2. </span>病假<span><span> </span>3. </span>婚假<span><span> </span>4. </span>产假<span><span> </span>5. </span>带薪假<span><span> </span>6.</span>丧假<span><span> </span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:currentColor;\" height=\"37\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" width=\"83\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span style=\"font-family:宋体;font-size:12pt;\"><span> </span></span><span style=\"font-family:宋体;font-size:12pt;\">时间：<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:1pt solid windowtext;\" width=\"761\">\r\n\t\t\t\t<p style=\"text-align:left;\" align=\"left\">\r\n\t\t\t\t\t<span style=\"font-family:;font-size:12pt;\"> 201<span> </span></span><span style=\"font-family:宋体;font-size:12pt;\">年</span><span style=\"font-family:;font-size:12pt;\"><span>( )</span></span><span style=\"font-family:宋体;font-size:12pt;\">月</span><span style=\"font-family:;font-size:12pt;\"><span>( )<span></span></span></span><span style=\"font-family:宋体;font-size:12pt;\">日</span><span style=\"font-family:;font-size:12pt;\"><span>( )</span></span><span style=\"font-family:宋体;font-size:12pt;\">时</span><span style=\"font-family:;font-size:12pt;\">——<span> </span>201<span> </span></span><span style=\"font-family:宋体;font-size:12pt;\">年</span><span style=\"font-family:;font-size:12pt;\"><span>( )月( )</span></span><span style=\"font-family:宋体;font-size:12pt;\">日( )</span><span style=\"font-family:宋体;font-size:12pt;\">时</span><span style=\"font-family:;font-size:12pt;\"><span> </span></span><span style=\"font-family:宋体;font-size:12pt;\">合计：( )</span><span style=\"font-family:;font-size:12pt;\"><span> </span></span><span style=\"font-family:宋体;font-size:12pt;\">天</span><span style=\"font-family:;font-size:12pt;\"><span>( )</span></span><span style=\"font-family:宋体;font-size:12pt;\">小时</span><span style=\"font-family:;font-size:12pt;\"></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:currentColor;\" height=\"70\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style=\"border:1pt solid black;\" rowspan=\"2\" width=\"83\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span style=\"font-family:宋体;font-size:12pt;\">事由：</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"border:1pt solid black;\" rowspan=\"2\" width=\"761\">\r\n\t\t\t\t<p style=\"text-align:center;\" align=\"center\">\r\n\t\t\t\t\t<span><span style=\"line-height:24px;\"><br />\r\n</span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td style=\"text-align:center;\" height=\"45\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style=\"text-align:left;\" height=\"49\" width=\"0\">\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<br />','dgp_9_2|dgp_7_3|dept_4|','<span emp_no=\"dgp_9_2\">科-经理 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"dgp_7_3\">部-总监 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"dept_4\">人事科 </span>','','','','',1376464960,1381034937,0,0,0,0),(11,'固定','{DEPT}{YYYY}{M}{###}','报销审批','报销审批','<table align=\"left\" style=\"width:100%;height:100%;border-collapse:collapse;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td width=\"153\" style=\"border:1pt solid windowtext;\">\r\n\t\t\t\t<p align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">部门：<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"219\" style=\"border:1pt solid windowtext;\">\r\n\t\t\t\t<p align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span><span style=\"line-height:22px;font-size:15px;\"><br />\r\n</span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"109\" style=\"border:1pt solid windowtext;\">\r\n\t\t\t\t<p align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">报销项目：<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"219\" style=\"border:1pt solid windowtext;\">\r\n\t\t\t\t<p align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">1.</span><span style=\"color:black;font-family:宋体;font-size:11pt;\">费用报销<span><span> </span>2.</span>差旅费报销<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"153\" style=\"border:1pt solid windowtext;\">\r\n\t\t\t\t<p align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">报销金额（大写）：<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"219\" style=\"border:1pt solid windowtext;\">\r\n\t\t\t\t<p align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span><span style=\"line-height:22px;font-size:15px;\"><br />\r\n</span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"109\" style=\"border:1pt solid windowtext;\">\r\n\t\t\t\t<p align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">¥</span><span style=\"color:black;font-family:宋体;font-size:11pt;\">：<span></span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"219\" style=\"border:1pt solid windowtext;\">\r\n\t\t\t\t<p align=\"center\" style=\"text-align:center;\">\r\n\t\t\t\t\t<span><span style=\"line-height:22px;font-size:15px;\"><br />\r\n</span></span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"700\" valign=\"top\" style=\"border:1pt solid windowtext;\" colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">用途说明：</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td width=\"700\" valign=\"top\" style=\"border:1pt solid windowtext;\" colspan=\"4\">\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span style=\"color:black;font-family:宋体;font-size:11pt;\">原始单据扫描件：</span> \r\n\t\t\t\t</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<span></span>','dgp_9_2|dgp_7_3|','<span emp_no=\"dgp_9_2\">科-经理 <b><i class=\"icon-arrow-right\"></i></b></span><span emp_no=\"dgp_7_3\">部-总监 </span>','dept_10|','<span emp_no=\"dept_10\">会计科 </span>','','',1376465071,1381320510,0,0,0,0);
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "think_forum"
#

/*!40000 ALTER TABLE `think_forum` DISABLE KEYS */;
INSERT INTO `think_forum` VALUES (8,17,1,'管理员','发表主题 ','<span>发表主题</span>',10,0,0,'',0,1366872802,0,0),(9,25,1,'管理员','发了各自','发了各自',64,5,0,'',0,1374028398,0,1),(10,27,1,'管理员','员工交流天地','<p>\r\n\t员工交流天地\r\n</p>\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n<p>\r\n\t&nbsp; 今年秋天旅游去哪里&nbsp;\r\n</p>\r\n<p>\r\n\t&nbsp;&nbsp; 1. 夏威夷\r\n</p>\r\n<p>\r\n\t&nbsp;&nbsp; 2. 韩国\r\n</p>\r\n<p>\r\n\t&nbsp;&nbsp; 3. 马尔代夫\r\n</p>\r\n<p>\r\n\t&nbsp;&nbsp; 4. 香港\r\n</p>\r\n<p>\r\n\t&nbsp;&nbsp; 5. 西藏\r\n</p>',10,0,0,'',0,1374053565,1376634141,0),(11,0,1,'管理员','12313','123123132',0,0,0,'',0,1376877052,0,0),(12,25,1,'管理员','123123','123123123',14,1,0,'',0,1376877231,0,1),(13,27,2,'演示','发表主题','发表主题',43,4,0,'',0,1379406463,0,0),(14,25,1,'管理员','123455','12345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345',14,0,0,'',0,1384216232,1384216280,0),(15,25,1,'管理员','萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速','<span style=\"font:14px/25.18px &quot;Microsoft YaHei&quot;, Arial, sans-serif, simsun;color:#393939;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送私服私服速度是萨芬随碟附送</span>',7,1,0,'',0,1384743629,0,0);
/*!40000 ALTER TABLE `think_forum` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=1561 DEFAULT CHARSET=utf8;

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
INSERT INTO `think_mail_organize` VALUES (17,1,0,0,1,'',1,1,'123456',0,1,'',0,1,'',30,0);
/*!40000 ALTER TABLE `think_mail_organize` ENABLE KEYS */;

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
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `url` varchar(200) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `sub_folder` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`is_del`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

#
# Data for table "think_node"
#

/*!40000 ALTER TABLE `think_node` DISABLE KEYS */;
INSERT INTO `think_node` VALUES (83,'公告',0,'##notice','icon-bell-alt','NoticeFolder','','7',0),(84,'管理',0,'user/index','icon-cogs','','','999',0),(85,'邮件',0,'mail/folder?fid=inbox','icon-envelope-alt','','','1',0),(87,'流程',0,'flow/index','icon-pencil','','','2',0),(88,'文档',0,'##doc','icon-file-alt','DocFolder','','3',0),(91,'日程',0,'schedule/index','icon-calendar','','','4',0),(94,'职位',0,'position/index',NULL,NULL,'','',1),(97,'部门',0,'dept/index',NULL,NULL,'','',1),(100,'写信',0,'mail/add',NULL,'','','1',85),(101,'收件箱',0,'mail/folder?fid=inbox','','','','3',85),(102,'邮件设置',0,'','','','','9',85),(104,'垃圾箱',0,'mail/folder?fid=spambox','','','','5',85),(105,'发件箱',0,'mail/folder?fid=outbox','','','','6',85),(106,'已删除',0,'mail/folder?fid=delbox','','','','4',85),(107,'草稿箱',0,'mail/folder?fid=darftbox','','','','7',85),(108,'邮件帐户设置',0,'mail_account/index',NULL,'','','1',102),(110,'公司信息管理',0,'',NULL,NULL,'','1',84),(112,'权限管理',0,'',NULL,NULL,'','3',84),(113,'系统设定',0,'',NULL,NULL,'','4',84),(114,'系统参数设置',0,'system_config/index','','','','1',113),(115,'组织图',0,'dept/index','','','','1',110),(116,'员工登记',0,'user/index',NULL,'','','5',110),(118,'权限组管理',0,'role/index','','','','1',112),(119,'权限设置',0,'role/node','','','','2',112),(120,'权限分配',0,'role/user','','','','3',112),(121,'菜单管理',0,'node/index','','','','1',113),(122,'职级',0,'rank/index',NULL,'','','3',110),(123,'职位',0,'position/index',NULL,'','','2',110),(124,'文件夹设置',0,'mail_folder/index',NULL,'','','2',102),(125,'联系人',0,'contact/index',NULL,'','','1',157),(126,'文档搜索',0,'doc/index',NULL,'','','1',88),(127,'文档库管理',0,'doc_folder/index','','','','C1',88),(137,'论坛',0,'##forum','icon-comments-alt','ForumFolder','','3',0),(138,'公告管理',0,'notice_folder/index','','','','4',83),(139,'论坛管理',0,'forum_folder/index',NULL,'','','',137),(140,'按月查看',0,'schedule/index',NULL,'','','1',91),(141,'日程查询',0,'schedule/search',NULL,'','','2',91),(142,'按日查看',0,'schedule/day_view',NULL,'','','2',91),(143,'邮件分类',0,'mail_organize/index',NULL,'','','',102),(144,'起案',0,'flow/index',NULL,'','','1',87),(145,'审批箱',0,'',NULL,'','','2',87),(146,'流程管理',0,'flow_type/index',NULL,'','','3',87),(147,'待审批',0,'flow/folder?fid=confirm',NULL,'','','3',145),(148,'已办理',0,'flow/folder?fid=finish',NULL,'','','1',145),(149,'草稿箱',0,'flow/folder?fid=darft',NULL,'','','2',145),(150,'已提交',0,'flow/folder?fid=submit',NULL,'','','4',145),(151,'收信',0,'mail/folder?fid=receve',NULL,'','','2',85),(152,'待办',0,'todo/index','icon-tasks','','','4',0),(153,'部门级别',0,'dept_grade/index',NULL,'','','4',110),(156,'客户',0,'customer/index',NULL,'','','2',157),(157,'人脉',0,'contact/index','icon-group','','','5',0),(158,'供应商',0,'supplier/index',NULL,'','','3',157),(169,'职员',0,'staff/index',NULL,'','','',157),(177,'我的文件夹',0,'##mail','','MailFolder','','8',85),(178,'自助',0,'','icon-search','','','',0),(179,'工资查询',0,'udf_salary/index','','','','',178),(180,'报销查询',0,'udf_expense/index','','','','',178),(181,'公告搜索',0,'notice/index','','','','',83),(182,'日志',0,'work_log/index','icon-book','','','',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

#
# Data for table "think_notice"
#

/*!40000 ALTER TABLE `think_notice` DISABLE KEYS */;
INSERT INTO `think_notice` VALUES (24,'2013-0001','sssss','ssssssssssssssssssssssssss',15,'',1,'管理员',1366874793,0,0),(25,'2013-0002','xxxxxx','xxxxxxxxxxxxxxxxxxxxxx',15,'',1,'管理员',1367735751,0,0),(26,'2013-0003','q','qqqqqqqqqqqqq',15,'',1,'管理员',1367735757,0,0),(27,'2013-0004','1','111111111111111',15,'',1,'管理员',1370508661,0,0),(28,'2013-0005','33333','333333333333333333333',15,'',1,'管理员',1370508667,0,0),(29,'2013-0006','333','3333333333333333333',15,'',1,'管理员',1370508673,0,0),(30,'2013-0007','3222222222','22222222222222222222',15,'',1,'管理员',1370508678,0,0),(31,'2013-0008','XXXXXXXXXXXXXXXXXXX','SSSSSSSSSSSSSSS',15,'',1,'管理员',1370508706,0,0),(32,'2013-0009','ZZZZZZZZZZZZZ','ZZZZZZZZZZZZZZZZZZ',15,'',1,'管理员',1370508714,0,0),(33,'2013-0010','CCCCCC','CCCCCCCCCCCCCCCCCCCCC',15,'',1,'管理员',1370508723,0,0),(34,'2013-0011','DDDDDDDD','DDDDDDDDDDDDDDDDDDDDD',15,'',1,'管理员',1370508728,0,0),(35,'2013-0012','FFFFFFFFFF','FFFFFFFFFFFFFFFFF',15,'',1,'管理员',1370508734,0,0),(36,'2013-0013','33333333','333333333333333333',15,'',1,'管理员',1370508785,0,0),(37,'2013-0014','333333333','3333333333333333333',15,'',1,'管理员',1370508791,0,0),(38,'2013-0015','3333333333','33333333333333333333',15,'',1,'管理员',1370508799,0,0),(39,'2013-0016','333333333','33333333333333333333',15,'',1,'管理员',1370508805,0,0),(40,'2013-0017','333333333333','333333333333333333333333333',15,'',1,'管理员',1370508812,0,0),(41,'2013-0018','公告 1','1公告',29,'',1,'管理员',1373937632,0,0),(42,'2013-0019','QQQQQQQQ','AAAAAAAAAAAAAAAAAAAAQQQQQQQQQQQQQQQQQQ',29,'',1,'管理员',1374031714,1375155796,0),(43,'2013-0020','岗位轮换 XXX部 部长 担任 XX部 ','岗位轮换 XXX部 部长 担任 XX部 部长',29,'747;',1,'管理员',1374031720,1383230652,0),(45,'2013-0022','XXX晋升为XXXX X月X日开始生效','XXX晋升为XXXX X月X日开始生效',28,'617;',1,'管理员',1375156032,1376634004,0),(46,'2013-0023','1234123','41123123',28,'',1,'管理员',1383896478,0,0),(47,'2013-0024','2222222','22222222222222222222222',28,'',1,'管理员',1383898012,0,0),(48,'2013-0025','1234567','234234623426235',28,'',1,'管理员',1383898426,0,0),(49,'2013-0025','1111','1111111111',26,'',1,'管理员',1384830291,0,0);
/*!40000 ALTER TABLE `think_notice` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "think_position"
#

/*!40000 ALTER TABLE `think_position` DISABLE KEYS */;
INSERT INTO `think_position` VALUES (1,'PG40','主管','5',0),(2,'PG30','经理','4',0),(3,'PG20','总监','3',0),(4,'PG10','副总','2',0),(5,'PG1','总经理','1',0),(6,'PG50','助理','6',0);
/*!40000 ALTER TABLE `think_position` ENABLE KEYS */;

#
# Source for table "think_post"
#

DROP TABLE IF EXISTS `think_post`;
CREATE TABLE `think_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

#
# Data for table "think_post"
#

/*!40000 ALTER TABLE `think_post` DISABLE KEYS */;
INSERT INTO `think_post` VALUES (37,9,'','1234123123',1,'管理员','',1,1374029462,0),(38,9,'','123123123123',1,'管理员','',1,1374029878,0),(39,9,'','asdfasdf',1,'管理员','',0,1376880653,0),(40,9,'','123123121111111111111',1,'管理员','',0,1376880661,0),(41,9,'','333333333333333',1,'管理员','',1,1376880668,0),(42,13,'','<p>\r\n\t回复主题\r\n</p>',2,'演示','',0,1379406480,0),(43,13,'','回复巴巴变',2,'演示','',0,1379406497,0),(44,12,'','asdfsdfas',1,'管理员','',0,1380548052,0),(45,13,'','23423423424',1,'管理员','',0,1383230442,0),(46,13,'','babababbab',1,'管理员','',0,1383230452,0),(47,15,'','<span style=\"color:#393939;font-family:\'Microsoft YaHei\', Arial, sans-serif, simsun;font-size:14px;line-height:25.171875px;white-space:normal;background-color:#FFFFFF;\">66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666</span>',1,'管理员','',0,1384743914,0);
/*!40000 ALTER TABLE `think_post` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=775 DEFAULT CHARSET=utf8;

#
# Data for table "think_push"
#

/*!40000 ALTER TABLE `think_push` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "think_rank"
#

/*!40000 ALTER TABLE `think_rank` DISABLE KEYS */;
INSERT INTO `think_rank` VALUES (1,'RG40','总监','',0),(2,'RG30','经理','',0),(3,'RG20','主管','',0),(4,'RG10','助理','',1);
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
INSERT INTO `think_recent` VALUES (1,'jzyin@qq.com|jzyin@qq.com;jzyin@sohu.com|jzyin@sohu.com;管理员 / 主管 |smeoa@qq.com;smeoa@qq.com|smeoa@qq.com;cn86shichang@foxmail.com|cn86shichang@foxmail.com;');
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "think_role"
#

/*!40000 ALTER TABLE `think_role` DISABLE KEYS */;
INSERT INTO `think_role` VALUES (1,'公司管理员',0,'','1',1208784792,1368507168,0),(2,'基本权限',0,'','2',1215496283,1368507164,0),(7,'测试组',0,'','2',1254325787,1368507159,0),(8,'VIP1',NULL,'','',1384997867,0,0);
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
INSERT INTO `think_role_node` VALUES (2,136,NULL,NULL,NULL),(2,137,1,1,1),(2,135,NULL,NULL,NULL),(2,83,1,1,1),(1,94,NULL,NULL,NULL),(1,97,NULL,NULL,NULL),(1,98,NULL,NULL,NULL),(1,99,NULL,NULL,NULL),(1,69,NULL,NULL,NULL),(1,6,NULL,NULL,NULL),(1,2,NULL,NULL,NULL),(1,7,NULL,NULL,NULL),(1,131,1,1,1),(1,130,NULL,NULL,NULL),(1,127,1,1,1),(1,133,NULL,NULL,NULL),(1,132,NULL,NULL,NULL),(1,126,1,1,1),(2,152,1,1,1),(1,137,1,1,1),(1,135,NULL,NULL,NULL),(1,136,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,138,1,1,1),(1,134,NULL,NULL,NULL),(2,125,1,1,1),(2,103,NULL,NULL,NULL),(2,126,1,1,1),(2,88,1,1,1),(2,133,NULL,NULL,NULL),(2,130,NULL,NULL,NULL),(2,169,1,1,1),(7,124,NULL,NULL,NULL),(7,108,NULL,NULL,NULL),(7,102,NULL,NULL,NULL),(7,104,NULL,NULL,NULL),(7,107,NULL,NULL,NULL),(7,106,NULL,NULL,NULL),(7,105,NULL,NULL,NULL),(7,101,NULL,NULL,NULL),(7,100,NULL,NULL,NULL),(7,125,NULL,NULL,NULL),(1,152,NULL,NULL,NULL),(1,142,NULL,NULL,NULL),(1,141,NULL,NULL,NULL),(2,134,NULL,NULL,NULL),(2,158,1,1,1),(2,156,1,1,1),(2,132,NULL,NULL,NULL),(2,150,NULL,NULL,NULL),(2,124,1,1,1),(2,108,1,1,1),(2,103,NULL,NULL,NULL),(2,157,1,1,1),(1,140,NULL,NULL,NULL),(1,91,NULL,NULL,NULL),(1,91,NULL,NULL,NULL),(2,143,1,1,1),(2,102,NULL,NULL,NULL),(2,104,NULL,NULL,NULL),(2,107,NULL,NULL,NULL),(2,106,NULL,NULL,NULL),(2,105,NULL,NULL,NULL),(2,103,NULL,NULL,NULL),(2,109,NULL,NULL,NULL),(2,101,1,1,1),(2,151,NULL,NULL,NULL),(2,100,NULL,NULL,NULL),(2,85,NULL,NULL,NULL),(2,147,NULL,NULL,NULL),(2,149,NULL,NULL,NULL),(2,148,NULL,NULL,NULL),(2,145,NULL,NULL,NULL),(2,144,1,1,1),(2,87,1,1,1),(2,142,NULL,NULL,NULL),(2,141,NULL,NULL,NULL),(2,140,1,1,1),(2,91,1,1,1),(1,117,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,103,NULL,NULL,NULL),(1,109,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,117,NULL,NULL,NULL),(1,163,NULL,NULL,NULL),(1,158,1,1,1),(1,170,NULL,NULL,NULL),(1,164,NULL,NULL,NULL),(1,114,1,1,1),(1,146,1,1,1),(1,121,1,1,1),(1,177,1,1,1),(1,188,NULL,NULL,NULL),(1,113,NULL,NULL,NULL),(1,155,NULL,NULL,NULL),(1,154,1,1,1),(1,120,NULL,NULL,NULL),(1,119,NULL,NULL,NULL),(1,118,1,1,1),(1,112,NULL,NULL,NULL),(1,116,1,1,1),(1,111,NULL,NULL,NULL),(1,153,1,1,1),(1,156,1,1,1),(1,122,1,1,1),(1,123,1,1,1),(1,115,1,1,1),(1,150,NULL,NULL,NULL),(1,149,NULL,NULL,NULL),(1,148,NULL,NULL,NULL),(1,147,NULL,NULL,NULL),(1,145,NULL,NULL,NULL),(1,144,1,1,1),(1,124,1,1,1),(1,108,1,1,1),(1,143,1,1,1),(1,102,NULL,NULL,NULL),(1,104,NULL,NULL,NULL),(1,107,NULL,NULL,NULL),(1,106,NULL,NULL,NULL),(1,105,NULL,NULL,NULL),(1,101,1,1,1),(1,151,NULL,NULL,NULL),(1,125,1,1,1),(1,168,NULL,NULL,NULL),(1,162,NULL,NULL,NULL),(1,166,NULL,NULL,NULL),(1,161,NULL,NULL,NULL),(1,171,NULL,NULL,NULL),(1,169,1,1,1),(1,165,NULL,NULL,NULL),(1,174,NULL,NULL,NULL),(1,172,NULL,NULL,NULL),(1,173,NULL,NULL,NULL),(1,160,NULL,NULL,NULL),(1,175,NULL,NULL,NULL),(1,186,NULL,NULL,NULL),(1,185,NULL,NULL,NULL),(1,183,NULL,NULL,NULL),(1,182,1,1,1),(1,181,NULL,NULL,NULL),(1,180,1,1,1),(1,179,1,1,1),(1,178,NULL,NULL,NULL),(1,184,NULL,NULL,NULL),(1,176,NULL,NULL,NULL),(1,110,NULL,NULL,NULL),(1,194,NULL,NULL,NULL),(1,193,NULL,NULL,NULL),(1,187,NULL,NULL,NULL),(1,100,NULL,NULL,NULL),(1,85,NULL,NULL,NULL),(1,87,1,1,1),(1,88,NULL,NULL,NULL),(1,157,1,1,1),(1,167,NULL,NULL,NULL),(1,83,1,1,1),(1,128,NULL,NULL,NULL),(1,192,NULL,NULL,NULL),(1,191,NULL,NULL,NULL),(1,190,NULL,NULL,NULL),(1,189,NULL,NULL,NULL),(1,84,1,1,1),(1,195,NULL,NULL,NULL),(1,199,NULL,NULL,NULL),(1,213,NULL,NULL,NULL),(1,198,NULL,NULL,NULL),(1,197,NULL,NULL,NULL),(1,229,NULL,NULL,NULL),(1,228,NULL,NULL,NULL),(1,227,NULL,NULL,NULL),(1,226,NULL,NULL,NULL),(1,225,NULL,NULL,NULL),(1,224,NULL,NULL,NULL),(1,223,NULL,NULL,NULL),(1,222,NULL,NULL,NULL),(1,221,NULL,NULL,NULL),(1,220,NULL,NULL,NULL),(1,219,NULL,NULL,NULL),(1,217,NULL,NULL,NULL),(1,218,NULL,NULL,NULL),(1,216,NULL,NULL,NULL),(1,215,NULL,NULL,NULL),(1,214,NULL,NULL,NULL),(1,196,NULL,NULL,NULL),(1,200,NULL,NULL,NULL),(1,201,NULL,NULL,NULL),(1,202,NULL,NULL,NULL),(1,203,NULL,NULL,NULL),(1,204,NULL,NULL,NULL),(1,205,NULL,NULL,NULL),(1,206,NULL,NULL,NULL),(1,207,NULL,NULL,NULL),(1,208,NULL,NULL,NULL),(1,209,NULL,NULL,NULL),(1,210,NULL,NULL,NULL),(1,211,NULL,NULL,NULL),(1,212,NULL,NULL,NULL),(1,139,1,1,1),(2,179,NULL,1,NULL),(2,178,NULL,NULL,NULL),(2,180,NULL,1,NULL),(7,181,1,1,1),(7,83,NULL,NULL,NULL);
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
INSERT INTO `think_role_user` VALUES (4,'27'),(4,'26'),(5,'31'),(3,'22'),(7,'1'),(1,'4'),(1,'3'),(1,'35'),(1,'36'),(2,'1'),(2,'3'),(1,'1'),(7,'36'),(1,'2'),(1,'43'),(1,'41'),(2,'2'),(7,'2'),(2,'41'),(2,'43'),(7,'41'),(7,'42'),(7,'43'),(2,'48');
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
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

#
# Data for table "think_schedule"
#

/*!40000 ALTER TABLE `think_schedule` DISABLE KEYS */;
INSERT INTO `think_schedule` VALUES (43,'新建事项','','123123',3,'',1,'2013-03-01','05:00:00','2013-03-01','05:00:00','',0),(44,'qqqqqqqqqqqqqq','','',3,'',1,'2013-04-25','05:00:00','2013-03-13','05:00:00','',0),(45,'看看日程中文样式效果','','',3,'',1,'2013-05-07','08:00:00','2013-05-07','05:00:00','',0),(46,'123456','xxx','1234',3,'管理员 / 总经理 ✕|undefined;演示 / 部长 ✕|undefined;员工 / 经理1 ✕|undefined;',1,'2013-07-03','05:00:00','2013-07-18','05:00:00','',0),(47,'123','123123','123',3,'',1,'2013-08-15','05:00:00','2013-08-15','05:00:00','',0),(48,'234','','',3,'',1,'2013-08-15','05:00:00','2013-08-16','05:00:00','',0),(49,'456','','234234',3,'',1,'2013-08-15','05:00:00','2013-08-15','05:00:00','',0),(50,'5677','','',3,'',1,'2013-08-15','05:00:00','2013-08-30','05:00:00','',0),(51,'123456','114474','',3,'',1,'2013-08-15','05:00:00','2013-08-31','05:00:00','',0),(52,'123352435','3234234234','2342342',3,'',1,'2013-08-15','05:00:00','2013-08-15','05:00:00','',0),(53,'给幼儿园老师送礼','','',4,'',1,'2013-09-12','05:00:00','2013-09-21','05:00:00','',0),(54,'给幼儿园老师送礼','给幼儿园老师送礼','',5,'',1,'2013-09-12','05:00:00','2013-09-21','05:00:00','',0),(55,'123123','2312312312','',3,'XX企业|undefined;管理员 / 主管 |undefined;演示 / 总监 |undefined;员工 / 副总 |undefined;',1,'2013-09-03','05:00:00','2013-09-12','05:00:00','',0),(56,'\t主题','','',2,'',2,'2013-09-19','05:00:00','2013-09-19','05:00:00','',0),(57,'12123','1231231','1',3,'',1,'2013-09-28','05:00:00','2013-09-30','05:00:00','',0),(58,'123123','123123','123',3,'',1,'2013-09-12','05:00:00','2013-09-25','05:00:00','',0),(59,'34134','','',2,'',1,'2013-09-12','05:00:00','2013-09-25','05:00:00','',0),(60,'123123','','',2,'',1,'2013-09-12','05:00:00','2013-09-25','05:00:00','',0),(61,'123123','','',1,'',1,'2013-09-12','05:00:00','2013-09-18','05:00:00','',0),(62,'12312','23123','123',3,'',1,'2013-09-11','05:00:00','2013-09-03','05:00:00','',0),(63,'下午开会','<span style=\"white-space:nowrap;\">下午开会</span>','',3,'',1,'2013-11-12','05:00:00','2013-11-12','05:00:00','',0),(64,'1231','123123123','123',3,'',42,'2013-11-13','05:00:00','2013-11-15','05:00:00','',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data for table "think_supplier"
#

/*!40000 ALTER TABLE `think_supplier` DISABLE KEYS */;
INSERT INTO `think_supplier` VALUES (18,'供应商2','GYS','供应2','4321','4321','ZZ ','联系人','1234','','ABC@QQ.COM','',' XX',1,1,'','',NULL),(19,'供应商1','GY','供应','1234','4321','ZZ ','联系人','1234','','YY@QQ.COM','',' XX',0,1,NULL,NULL,NULL),(20,'1','','1111111','1111111111','1111111111','1111111111111111','111111111111',NULL,'1111111111','111111111','1111111111111111','11111111',1,1,'11111111111111111111','11111111111111111111','管理员');
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
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "think_system_config"
#

/*!40000 ALTER TABLE `think_system_config` DISABLE KEYS */;
INSERT INTO `think_system_config` VALUES (1,'SYSTEM_NAME','系统名称','小微企业信息化',0),(2,'GSM_PORT','GSM端口','COM4',0),(7,'UPLOAD_FILE_TYPE','文件上传类型','doc,dox,xls,xlsx,ppt,pptx,pdf,gif,png,tif,zip,rar,jpg,jpeg',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

#
# Data for table "think_system_folder"
#

/*!40000 ALTER TABLE `think_system_folder` DISABLE KEYS */;
INSERT INTO `think_system_folder` VALUES (21,0,'DocFolder','公司制度','管理员/主管|admin;','','','A1',0,''),(22,0,'DocFolder','公司表格','','','','A3',0,''),(23,0,'DocFolder','系统使用手册','','','管理员/主管|admin;','A2',0,''),(25,0,'ForumFolder','员工之家','演示 / 总监 |demo;员工 / 副总 |member;管理员 / 主管 |admin;','','XX企业|dept_1;','',0,''),(26,0,'NoticeFolder','人事令','管理员 / 总经理 |admin;2001/总监|2001;','','','',0,''),(27,0,'ForumFolder','OA系统错误提交','管理员/主管|admin;','','','',0,''),(28,0,'NoticeFolder','培训通知','管理员 / 主管 |admin;','2001/总监|2001;','','',0,''),(29,0,'NoticeFolder','放假通知','','','2001/总监|2001;','',0,''),(33,25,'ForumFolder','12313123','演示 / 总监 |demo;员工 / 副总 |member;管理员 / 主管 |admin;','','XX企业|dept_1;','',0,'');
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
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

#
# Data for table "think_system_tag"
#

/*!40000 ALTER TABLE `think_system_tag` DISABLE KEYS */;
INSERT INTO `think_system_tag` VALUES (11,0,'Video','所属科室','11',''),(12,11,'Video','外科系统','12',''),(13,11,'Video','内科系统','13',''),(14,12,'Video','普通外科','14',''),(15,12,'Video','肛肠科','15',''),(16,11,'Video','专科中心','16',''),(17,11,'Video','医技辅助','17',''),(18,12,'Video','肝胆外科','18',''),(19,12,'Video','器官移植','19',''),(20,12,'Video','心血管外科','20',''),(21,12,'Video','显微外科','21',''),(22,12,'Video','胸外科','22',''),(23,12,'Video','泌尿生殖','23',''),(24,12,'Video','神经外科','24',''),(25,12,'Video','烧伤外科','25',''),(26,13,'Video','普通内科','26',''),(27,13,'Video','心血管内科','27',''),(28,13,'Video','呼吸内科','28',''),(29,13,'Video','消化内科','29',''),(30,13,'Video','肾内科','30',''),(31,13,'Video','血液科','31',''),(32,13,'Video','神经内科','32',''),(33,13,'Video','心理、精神科','33',''),(34,13,'Video','内分泌科','34',''),(35,13,'Video','感染传染','35',''),(36,16,'Video','妇产科','36',''),(37,16,'Video','儿科','37',''),(38,16,'Video','口腔科','38',''),(39,16,'Video','骨科','39',''),(40,16,'Video','皮肤病与性病科','40',''),(41,16,'Video','眼科','41',''),(42,16,'Video','耳鼻咽喉科','42',''),(43,16,'Video','肿瘤及核医学','43',''),(44,16,'Video','中医及中西医结合','44',''),(45,16,'Video','麻醉科','45',''),(46,16,'Video','美容整形','46',''),(47,17,'Video','门、急诊，ICU','47',''),(48,17,'Video','医学影像','48',''),(49,17,'Video','护理','49',''),(50,17,'Video','检验科','50',''),(51,17,'Video','康复理疗科','51',''),(52,17,'Video','药剂科','52',''),(53,17,'Video','信息科','53',''),(54,17,'Video','医院管理','54',''),(55,17,'Video','基础教学','55',''),(56,17,'Video','其他','56',''),(57,0,'Customer','123','',''),(58,0,'Supplier','123','',''),(59,0,'Doc','123123','123123',''),(60,0,'Doc','123123','',''),(61,0,'Doc','abc','',''),(62,0,'Customer','2345','','');
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
INSERT INTO `think_system_tag_data` VALUES (18,58,'Supplier'),(29,14,'Video'),(18,57,'Customer'),(29,46,'Video'),(30,46,'Video'),(30,47,'Video'),(30,56,'Video'),(64,59,'Doc'),(64,60,'Doc'),(64,61,'Doc'),(65,61,'Doc'),(33,14,'Video'),(18,62,'Customer');
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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#
# Data for table "think_todo"
#

/*!40000 ALTER TABLE `think_todo` DISABLE KEYS */;
INSERT INTO `think_todo` VALUES (11,'邮件整理时显示名称错误','',1,'2013-09-26',4,'',2,NULL),(12,'日历今天样式颜色','日历今天样式颜色',1,'2013-11-02',3,'',3,NULL),(13,'12312','123123',2,'3123123',3,'',1,1),(14,'12312','123123123123123123',2,'3123123',3,'',0,NULL),(15,'待办事项确认','待办事项确认',2,'',3,'',0,NULL),(16,'新建待办事项','123',2,'',3,'',2,3),(17,'新建待办事项1','新建待办事项',2,'2013-09-19',3,'',1,2),(18,'新建待办事项','123',2,'2013-09-19',3,'',1,NULL),(19,'优先级高','',1,'2013-09-26',5,'',2,NULL),(20,'新建待办事项','1131',1,'',2,'',2,NULL),(21,'事项优先级低','',1,'2013-10-06',1,'',3,NULL);
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
INSERT INTO `think_udf_expense` VALUES (152,'1003','201310','张三','业招待费','1500','500','5','','','','','','',''),(153,'1003','201310','张三','通行费','','','','','','','','','',''),(154,'1003','201310','张三','交通费','','','','','','','','','',''),(155,'1003','201310','李四','业招待费','1500','500','5','','','','','','',''),(156,'1003','201310','李四','通行费','','','','','','','','','',''),(157,'1003','201310','李四','交通费','','','','','','','','','','');
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
INSERT INTO `think_udf_salary` VALUES (120,'1001','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(121,'1002','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(122,'1003','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(123,'1004','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(124,'1005','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(125,'1006','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(126,'1007','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(127,'1008','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(128,'1009','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(129,'1010','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(130,'1011','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(131,'1012','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(132,'1013','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(133,'1014','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(134,'1015','201310','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(135,'1016','201310','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(136,'1001','201210','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(137,'1002','201210','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(138,'1003','201210','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(139,'1004','201210','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(140,'1005','201210','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(141,'1006','201210','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(142,'1007','201210','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(143,'1008','201210','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(144,'1009','201210','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(145,'1010','201210','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(146,'1011','201210','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(147,'1012','201210','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(148,'1013','201210','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(149,'1014','201210','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(150,'1015','201210','张三','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL),(151,'1016','201210','李四','1000','500',NULL,'1500','150','100','5','50','100','2200',NULL);
/*!40000 ALTER TABLE `think_udf_salary` ENABLE KEYS */;

#
# Source for table "think_user"
#

DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(10) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`emp_no`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

#
# Data for table "think_user"
#

/*!40000 ALTER TABLE `think_user` DISABLE KEYS */;
INSERT INTO `think_user` VALUES (1,'admin','管理员','GLY','21232f297a57a5a743894a0e4a801fc3',10,1,2,'male','2013-09-18','127.0.0.1',2082,'emp_pic/1.jpeg','smeoa@qq.com','1231254123123','123123','12123123',1222907803,1386666045,0),(2,'demo','演示','YS','fe01ce2a7fbac8fafaed7c982a04e229',9,1,3,'female','1983-03-17','127.0.0.1',117,'emp_pic/2.jpeg','XXXX','asdf','','2',1239783735,1381034084,0),(3,'member','员工','YG','202cb962ac59075b964b07152d234b70',13,1,3,'male','2012-03-15','127.0.0.1',19,'','XXXX','asd','','3',1253514375,1381034067,0),(41,'2002','2002','','81dc9bdb52d04dc20036dbd8313ed055',4,2,0,'male','2013-10-30','127.0.0.1',NULL,'','','','','',1376896154,1381503141,0),(42,'2001','2001','','d0fb963ff976f9c37fc81fe03c21ea7b',6,3,1,'male','2013-10-10','127.0.0.1',NULL,'','','123123123','123','12312312',1380970837,1381034348,0),(43,'2003','2003','','a591024321c5e2bdbd23ed35f0574dde',4,1,3,'male','0000-00-00','127.0.0.1',NULL,'emp_pic/43.jpeg','','','','',1381035116,1383628527,0),(44,'1001','1001','','',4,2,2,'male','0000-00-00',NULL,NULL,'emp_pic/44.jpeg','','','','',1381502796,1386141133,0),(45,'123','123','','',5,0,0,'male','0000-00-00',NULL,NULL,'','','','','',1381502854,0,0),(46,'1111','1111','','',13,0,0,'male','0000-00-00',NULL,NULL,'','','','','',1381503262,1381503329,0),(47,'2222','2222','','934b535800b1cba8f96a5d72f72f1611',13,3,1,'male','0000-00-00','127.0.0.1',NULL,'','werwer','','2222wer','werwer',1381503437,0,0),(48,'1003','1003','','aa68c75c4a77c87f97fb686b2f068676',8,3,2,'female','0000-00-00','127.0.0.1',NULL,'','','','','',1381503490,1384842722,0),(49,'2100','2100','','',5,5,1,'male','2013-12-04',NULL,NULL,'','','','','',1386144041,0,0);
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "think_user_config"
#

/*!40000 ALTER TABLE `think_user_config` DISABLE KEYS */;
INSERT INTO `think_user_config` VALUES (1,'11,22,13,|21,12,23,',5,'49|1384830291_'),(49,NULL,20,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

#
# Data for table "think_user_folder"
#

/*!40000 ALTER TABLE `think_user_folder` DISABLE KEYS */;
INSERT INTO `think_user_folder` VALUES (30,0,'MailFolder',1,'123','',0,'');
/*!40000 ALTER TABLE `think_user_folder` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data for table "think_user_tag"
#

/*!40000 ALTER TABLE `think_user_tag` DISABLE KEYS */;
INSERT INTO `think_user_tag` VALUES (18,0,'Contact',1,'222222','',''),(19,0,'Contact',1,'333333','','');
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
INSERT INTO `think_user_tag_data` VALUES (10,19,'Contact'),(11,19,'Contact'),(9,18,'Contact');
/*!40000 ALTER TABLE `think_user_tag_data` ENABLE KEYS */;

#
# Source for table "think_work_log"
#

DROP TABLE IF EXISTS `think_work_log`;
CREATE TABLE `think_work_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `content` text,
  `plan` text,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "think_work_log"
#

INSERT INTO `think_work_log` VALUES (1,1,NULL,'<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span>\r\n</p>','<p>\r\n\t工作计划\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>',NULL,NULL,0),(2,1,NULL,'<p>\r\n\t新建工作日志\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>','<p>\r\n\t新建工作日志\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>',NULL,NULL,0),(3,1,NULL,'<img title=\"\" alt=\"\" align=\"\" src=\"/Data/Files/worklog/201312/52a7c568a1e33.jpg\" width=\"400\" height=\"710\" />','1231123123',2013,2013,0);
