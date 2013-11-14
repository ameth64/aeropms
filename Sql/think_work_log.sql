# Host: localhost  (Version: 5.5.16)
# Date: 2013-11-14 16:53:43
# Generator: MySQL-Front 5.3  (Build 4.4)

/*!40101 SET NAMES utf8 */;

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
  `dept_id` int(255) DEFAULT NULL,
  `work_date` varchar(255) DEFAULT NULL,
  `is_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "think_work_log"
#

INSERT INTO `think_work_log` VALUES (1,1,NULL,'<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-size:14px;\">1. 工作内容</span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span>\r\n</p>','<p>\r\n\t工作计划\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n工作计划工作计划\r\n<p>\r\n\t&nbsp;\r\n</p>',NULL,NULL,0),(2,1,NULL,'<p>\r\n\t新建工作日志\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>','<p>\r\n\t新建工作日志\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>\r\n新建工作日志\r\n<p>\r\n\t&nbsp;\r\n</p>',NULL,NULL,0);
