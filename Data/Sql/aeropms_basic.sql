# Host: 127.0.0.1  (Version: 5.6.12-log)
# Date: 2016-07-21 11:01:33
# Generator: MySQL-Front 5.3  (Build 1.27)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


/* added by MobiuS@2016.05.31*/
/*航空项目列表*/
DROP TABLE IF EXISTS `aeropms_project_list`;
CREATE TABLE `aeropms_project_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '', /*项目名称*/
  `desc` text NOT NULL, /*项目描述*/
  `agent_id` int(11) NULL DEFAULT '0', /*项目代理类的ID*/
  `creator` varchar(20) NOT NULL, /*项目创建者*/
  `add_file` varchar(200) NOT NULL,
  `proj_type` tinyint(3) NOT NULL DEFAULT '0', /*项目类型*/
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `remark` text null,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "aeropms_project_list"
#
/*!40000 ALTER TABLE `aeropms_project_list` DISABLE KEYS */;
INSERT INTO `aeropms_project_list` VALUES (1,'AG50','轻型运动飞机',0,'AG50项目部','无',1,now(),now(),'无'),
(2,'LH150', '轻型高速公务机', 0, '领航项目部', '无', 2, now(), now(), '无');
/*!40000 ALTER TABLE `aeropms_project_list` ENABLE KEYS */;

/*PBS节点表*/
DROP TABLE IF EXISTS aeropms_pbs_node;
CREATE TABLE aeropms_pbs_node (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `node_level` int(11) NOT NULL,
  `inner_index` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL DEFAULT '暂无名称', /*节点名称*/
  `agent_id` int(11) NULL DEFAULT '0', /*节点的代理类的ID*/
  `wbs_id` int(11) NULL DEFAULT '0', /*节点对应WBS的ID*/
  `creator` int(11)  NULL, /*项目创建者*/
  `create_time` int NOT NULL,
  `update_time` int NOT NULL,
  `remark` text null,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


/*PBS节点明细表*/
DROP TABLE IF EXISTS aeropms_pbs_node_agent;
CREATE TABLE aeropms_pbs_node_agent (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,  /*归属节点id*/
  `project_id` int(11) NOT NULL,  /*项目id*/
  `desc` varchar(512) NOT NULL DEFAULT '暂无描述', /*节点描述*/
  `prototype` int(10) NULL default '0', /*构型, 值取自构型管理表*/
  `weight` float default '0.0',  /*单件重量*/
  `amount` int(11) NULL DEFAULT '0', /*装机数量*/
  `total_weight` float NULL DEFAULT '0', /*总装机重量*/
  `manufacturer` varchar(256)  NULL, /*制造商*/
  `material_type` varchar(256) NULL,  /*材料类型*/
  `material_usage` float NULL,  /*材料利用率*/
  `attach_id` int(11) null,  /*附件资源表ID*/
  `remark` text null,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "aeropms_pbs_node_agent"
#
/*!40000 ALTER TABLE `aeropms_pbs_node_agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `aeropms_pbs_node_agent` ENABLE KEYS */;


/*
 * WBS单元类型表
 */
DROP TABLE IF EXISTS aeropms_wbs_type;
CREATE TABLE aeropms_wbs_type (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specific_proj_id` int(11) NOT NULL DEFAULT -1, /*是否为特定于项目的类型*/
  `name` varchar(512) not null,
  `desc` varchar(512) NOT NULL DEFAULT '暂无描述', /*节点描述*/
  `attach_id` int(11) NULL DEFAULT '0', /*类型定义文件的资源ID*/
  `is_hideable` int(2) NULL DEFAULT 1,
  `remark` text null,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "aeropms_wbs_type"
#
/*!40000 ALTER TABLE `aeropms_wbs_type` DISABLE KEYS */;
insert into `aeropms_wbs_type` values
  (1, -1, '工作包', '顶层WBS类型, 可包含任意数量的类型为工作单元或工作任务的子单元', 0, 0 , null),
  (2, -1, '工作单元', '仅次于顶层工作包的WBS类型, 可包含任意数量的类型为工作任务的子单元', 0, 0 , null),
  (3, -1, '工作任务', '不可再细分的WBS类型, 描述某一具体任务', 0, 1 , null);
/*!40000 ALTER TABLE `aeropms_wbs_type` ENABLE KEYS */;


/** WBS节点表*/
DROP TABLE IF EXISTS aeropms_wbs_node;
CREATE TABLE aeropms_wbs_node (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,  /*项目id*/
  `node_level` int(11) NULL default -1,
  `inner_index` int(11) NULL default -1,
  `parent_id` int(11) NOT NULL,  /*父级WBS单元id*/
  `pbs_id` int(11) NULL DEFAULT -1,  /*归属PBS单元id*/
  `name` varchar(512) not null,
  `type` int(10) NULL default '1', /*WBS类型, 值取自WBS类型列表*/
  `depart` int(11) NOT NULL, /*WBS任务分工类型, 值取自wbs_depart表*/
  `engineering_phase` int(10) NULL default '1', /*WBS所属工程阶段, 值取自工程阶段类型表*/
  `status` int(10) NOT NULL default 1,  /*任务状态, 分未开始, 进行中和已完成等, 取值见wbs_status_def表*/
  `agent_id` int(11) NULL DEFAULT '0', /*节点的代理类的ID*/
  `has_input` boolean not null default true, /*是否有输入依赖*/
  `has_output` boolean not null default true, /*是否有输出成果*/
  `creator_id` int(11)  NULL, /*项目创建者*/
  `create_time` INT NOT NULL,
  `update_time` INT NOT NULL,
  `remark` text null,
  `attach_id` int(11) null,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "aeropms_wbs_node"
#
/*!40000 ALTER TABLE `aeropms_wbs_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `aeropms_wbs_node` ENABLE KEYS */;


/**
WBS节点工时记录表
 */
DROP TABLE IF EXISTS aeropms_wbs_node_schedule;
CREATE TABLE aeropms_wbs_node_schedule (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,  /*WBS项目id*/
  `priority` int NOT NULL default 5, /*任务优先级, 0为最高, 默认为5*/
  `charger_id` int(11) not NULL DEFAULT 1, /*任务负责人的用户ID, 默认为1即管理员*/
  `planning_begin_time` int not null, /*任务的计划开始时间*/
  `planning_end_time` int not null, /*任务的计划完成时间*/
  `planning_working_day` int NOT NULL, /*任务计划包含的工作日*/
  `planning_working_hour` int NOT NULL, /*任务计划包含的每日平均工时*/
  `actual_begin_time` int null, /*任务的计划开始时间*/
  `actual_end_time` int null, /*任务的计划完成时间*/
  `actual_working_day` int NULL, /*任务实际包含的工作日*/
  `actual_working_hour` int NULL, /*任务计划包含的每日平均工时*/
  `create_time` INT NOT NULL,
  `update_time` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "aeropms_wbs_node_schedule"
#
/*!40000 ALTER TABLE `aeropms_wbs_node_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `aeropms_wbs_node_schedule` ENABLE KEYS */;


/*WBS节点输出关系表*/
DROP TABLE IF EXISTS aeropms_wbs_node_output;
CREATE TABLE aeropms_wbs_node_output (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,  /*项目id*/
  `node_id` int(11) NOT NULL, /*产生输出的WBS节点ID*/
  `item_name` varchar(512) not null, /*输出项名称*/
  `type` int(11) not null default 1, /*输出项类型, 暂分为文档=1, 图像=2, 其它=3*/
  `status` int(11) not null default 1, /*输出项状态, 暂分为未就绪=1, 已就绪=2, 无效=3*/
  `assignee_id` int(11) null DEFAULT -1, /*输出项的被指派者的用户ID, 暂未启用, 默认值-1*/
  `create_time` INT NOT NULL,
  `update_time` INT NOT NULL,
  `remark` text null,
  `attach_id` int(11) not null DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
#
# Data for table "aeropms_wbs_node_output"
#
/*!40000 ALTER TABLE `aeropms_wbs_node_output` DISABLE KEYS */;
/*!40000 ALTER TABLE `aeropms_wbs_node_output` ENABLE KEYS */;



/*WBS节点输入依赖关系表*/
DROP TABLE IF EXISTS aeropms_wbs_node_input;
CREATE TABLE aeropms_wbs_node_input (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,  /*项目id*/
  `node_id` int(11) NOT NULL, /*需要输入的WBS节点ID*/
  `input_node_id` int(11) not NULL, /*所依赖输入的节点ID*/
  `input_node_item_id` int(11) null, /*所依赖输入节点的资源ID*/
  `create_time` INT NOT NULL,
  `update_time` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "aeropms_wbs_node_input"
#
/*!40000 ALTER TABLE `aeropms_wbs_node_input` DISABLE KEYS */;
/*!40000 ALTER TABLE `aeropms_wbs_node_input` ENABLE KEYS */;


/*工程阶段类型表*/
DROP TABLE IF EXISTS aeropms_engineering_phase;
CREATE TABLE aeropms_engineering_phase (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specific_proj_id` int(11) NOT NULL DEFAULT -1, /*是否为特定于项目的类型*/
  `name` varchar(512) not null,
  `desc` varchar(512) NOT NULL DEFAULT '暂无描述', /*节点描述*/
  `attach_id` int(11) NULL DEFAULT '0', /*类型定义文件的资源ID*/
  `remark` text null,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "aeropms_engineering_phase"
#
/*!40000 ALTER TABLE `aeropms_engineering_phase` DISABLE KEYS */;
insert into `aeropms_engineering_phase` values
  (1, -1, '可行性论证', '暂无描述', 0, null),
  (2, -1, '总体方案定义', '暂无描述', 0, null),
  (3, -1, '初步设计', '暂无描述', 0, null),
  (4, -1, '详细设计', '暂无描述', 0, null),
  (5, -1, '全面试制', '暂无描述', 0, null),
  (6, -1, '试飞取证', '暂无描述', 0, null),
  (10, -1, '通用', '暂无描述', 0, null);
/*!40000 ALTER TABLE `aeropms_engineering_phase` ENABLE KEYS */;

/*任务分工类型表*/
DROP TABLE IF EXISTS aeropms_wbs_depart;
CREATE TABLE aeropms_wbs_depart (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specific_proj_id` int(11) NOT NULL DEFAULT -1, /*是否为特定于项目的类型*/
  `name` varchar(512) not null,
  `desc` varchar(512) NOT NULL DEFAULT '暂无描述', /*节点描述*/
  `attach_id` int(11) NULL DEFAULT '0', /*类型定义文件的资源ID*/
  `remark` text null,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "aeropms_wbs_depart"
#
/*!40000 ALTER TABLE `aeropms_wbs_depart` DISABLE KEYS */;
insert into `aeropms_wbs_depart` values
  (1, -1, '产品设计', '暂无描述', 0, null),
  (2, -1, '生产制造', '暂无描述', 0, null),
  (3, -1, '试验', '暂无描述', 0, null),
  (4, -1, '试飞', '暂无描述', 0, null),
  (5, -1, '适航取证', '暂无描述', 0, null);
/*!40000 ALTER TABLE `aeropms_wbs_depart` ENABLE KEYS */;


/*飞机构型列表*/
DROP TABLE IF EXISTS aeropms_configuration_list;
CREATE TABLE aeropms_configuration_list (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specific_proj_id` int(11) NOT NULL DEFAULT -1, /*是否为特定于项目的类型*/
  `type` int(11) NOT NULL DEFAULT 1, /*构型类别, 研制构型=1, 客户构型=2*/
  `name` varchar(512) not null,
  `desc` varchar(512) NOT NULL DEFAULT '暂无描述', /*节点描述*/
  `attach_id` int(11) NULL DEFAULT '0', /*类型定义文件的资源ID*/
  `remark` text null,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "aeropms_configuration_list"
#
/*!40000 ALTER TABLE `aeropms_configuration_list` DISABLE KEYS */;
insert into `aeropms_configuration_list` values
  (1, -1, 1, '基本型', '暂无描述', 0, null),
  (2, -1, 1, '水上型专用', '暂无描述', 0, null),
  (3, -1, 1, '陆上型专用', '暂无描述', 0, null);
/*!40000 ALTER TABLE `aeropms_configuration_list` ENABLE KEYS */;


/*
统一资源管理表, 用于记录上传数据的ID
 */
DROP TABLE IF EXISTS aeropms_resource_unit;
CREATE TABLE aeropms_resource_unit (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,  /*项目id*/
  `type` int NOT NULL DEFAULT 1,  /*资源类型, 1=文件, 2=图像*/
  `save_path` varchar(512) NOT NULL, /*资源在服务器上的保存路径*/
  `file_name` varchar(512) NOT NULL, /*资源原始文件名*/
  `save_name` varchar(512) NOT NULL, /*资源的保存文件名*/
  `size` int not null DEFAULT 0, /*资源文件大小, 单位为字节*/
  `extension` VARCHAR(32), /*文件后缀*/
  `hash` varchar(1024) not null, /*资源文件hash值, 默认为MD5*/
  `creator_id` int(11) not NULL DEFAULT 1, /*资源创建用户ID*/
  `create_time` int not null, /*资源的创建时间*/
  `update_time` int not null, /*资源的最后更新时间*/
  `remark` text null,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

#
# Data for table "aeropms_resource_unit"
#
/*!40000 ALTER TABLE `aeropms_resource_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aeropms_resource_unit` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
