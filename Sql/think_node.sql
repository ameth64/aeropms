# Host: localhost  (Version: 5.5.16)
# Date: 2013-10-23 20:09:18
# Generator: MySQL-Front 5.3  (Build 4.4)

/*!40101 SET NAMES utf8 */;

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
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

#
# Data for table "think_node"
#

/*!40000 ALTER TABLE `think_node` DISABLE KEYS */;
INSERT INTO `think_node` VALUES (83,'公告',0,'notice/index','icon-compass','','','7',0),(84,'管理',0,'user/index','icon-cogs','','','999',0),(85,'邮件',0,'mail/folder?fid=inbox','icon-envelope-alt','','','1',0),(87,'审批',0,'flow/index','icon-pencil','','','2',0),(88,'文档',0,'doc/index','icon-file','','','3',0),(91,'日程',0,'schedule/index','icon-calendar','','','4',0),(94,'职位',0,'position/index',NULL,NULL,'','',1),(97,'部门',0,'dept/index',NULL,NULL,'','',1),(100,'写信',0,'mail/add',NULL,'','','1',85),(101,'收件箱',0,'mail/index',NULL,'MailFolder','','3',85),(102,'邮件设置',0,'',NULL,'','','4',85),(104,'垃圾箱',0,'mail/folder?fid=spambox',NULL,'','','5',101),(105,'发件箱',0,'mail/folder?fid=outbox',NULL,'','','2',101),(106,'已删除',0,'mail/folder?fid=delbox',NULL,'','','3',101),(107,'草稿箱',0,'mail/folder?fid=darftbox',NULL,'','','4',101),(108,'邮件帐户设置',0,'mail_account/index',NULL,'','','1',102),(110,'公司信息管理',0,'',NULL,NULL,'','1',84),(112,'权限管理',0,'',NULL,NULL,'','3',84),(113,'系统设定',0,'',NULL,NULL,'','4',84),(114,'系统设置',0,'system_config/index',NULL,'','','1',113),(115,'组织图管理',0,'dept/index',NULL,'','','1',110),(116,'员工登记',0,'user/index',NULL,'','','5',110),(118,'权限编码登记',0,'role/index',NULL,NULL,'','1',112),(119,'权限编码-菜单映射',0,'role/node',NULL,NULL,'','2',112),(120,'权限编码-用户映射',0,'role/user',NULL,NULL,'','3',112),(121,'菜单信息设置',0,'node/index',NULL,NULL,'','1',113),(122,'职级',0,'rank/index',NULL,'','','3',110),(123,'职位',0,'position/index',NULL,'','','2',110),(124,'文件夹设置',0,'mail_folder/index',NULL,'','','2',102),(125,'联系人',0,'contact/index',NULL,'','','1',157),(126,'文档搜索',0,'doc/index',NULL,'','','1',88),(127,'文档库管理',0,'',NULL,NULL,'','4',88),(131,'公用文档库管理',0,'doc_folder/index',NULL,'','','',127),(132,'公用文档库',0,'',NULL,'DocFolder','','2',88),(134,'公告',0,'',NULL,'NoticeFolder','','1',83),(137,'论坛',0,'forum/index','icon-comments-alt','ForumFolder','','3',0),(138,'公告管理',0,'notice_folder/index',NULL,'','','4',134),(139,'论坛管理',0,'forum_folder/index',NULL,'','','',137),(140,'按月查看',0,'schedule/index',NULL,'','','1',91),(141,'日程查询',0,'schedule/search',NULL,'','','2',91),(142,'按日查看',0,'schedule/day_view',NULL,'','','2',91),(143,'邮件分类',0,'mail_organize/index',NULL,'','','',102),(144,'起案',0,'flow/index',NULL,'','','1',87),(145,'审批箱',0,'',NULL,'','','2',87),(146,'流程管理',0,'flow_type/index',NULL,'','','3',87),(147,'待审批',0,'flow/folder?fid=confirm',NULL,'','','3',145),(148,'已办理',0,'flow/folder?fid=finish',NULL,'','','1',145),(149,'草稿箱',0,'flow/folder?fid=darft',NULL,'','','2',145),(150,'已提交',0,'flow/folder?fid=submit',NULL,'','','4',145),(151,'收信',0,'mail/folder?fid=receve',NULL,'','','2',85),(152,'待办事项',0,'todo/index',NULL,'','','4',91),(153,'部门级别',0,'dept_grade/index',NULL,'','','4',110),(154,'业务权限',1,'duty/index',NULL,'','','4',112),(155,'权限编码-业务权限',1,'role/duty',NULL,'','','5',112),(156,'客户',0,'customer/index',NULL,'','','2',157),(157,'人脉',0,'contact/index','icon-group','','','5',0),(158,'供应商',0,'supplier/index',NULL,'','','3',157),(169,'职员',0,'staff/index',NULL,'','','',157);
/*!40000 ALTER TABLE `think_node` ENABLE KEYS */;
