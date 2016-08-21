-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-08-22 01:35:17
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_configuration_list`
--

DROP TABLE IF EXISTS `aeropms_configuration_list`;
CREATE TABLE `aeropms_configuration_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specific_proj_id` int(11) NOT NULL DEFAULT '-1',
  `type` int(11) NOT NULL DEFAULT '1',
  `name` varchar(512) NOT NULL,
  `desc` varchar(512) NOT NULL DEFAULT '暂无描述',
  `attach_id` int(11) DEFAULT '0',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `aeropms_configuration_list`
--

INSERT INTO `aeropms_configuration_list` (`id`, `specific_proj_id`, `type`, `name`, `desc`, `attach_id`, `remark`) VALUES
(1, -1, 1, '基本型', '暂无描述', 0, NULL),
(2, -1, 1, '水上型专用', '暂无描述', 0, NULL),
(3, -1, 1, '陆上型专用', '暂无描述', 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_contact`
--

DROP TABLE IF EXISTS `aeropms_contact`;
CREATE TABLE `aeropms_contact` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='aeropms_user_info' AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `aeropms_contact`
--

INSERT INTO `aeropms_contact` (`id`, `name`, `letter`, `company`, `dept`, `position`, `email`, `office_tel`, `mobile_tel`, `website`, `im`, `address`, `user_id`, `remark`, `is_del`) VALUES
(9, '马腾化', 'MTH', '腾讯', 'CEO', 'CEO', 'pony@qq.com', '公电话', '手机', '', '', '2', 1, '', 1),
(10, '雷军', 'LJ', '小米', 'CEO', 'CEO', 'yyyyy@yy.com', '010-12341234', '139-1234-1234', 'www.sohu.com', '1234567', '', 1, '', 1),
(11, '张三', 'ZS', '张三', 'IT', 'CEO', 'zhang@zhang.com', '654', '321', '', '12356', '1', 1, '', 1),
(21, '223e23', '', '', '', '', 'abc@sohu.com', '23232', '', '', '', '', 1, '', 1),
(22, '123151', '', '222222222222', '1231', '234', 'abc@sohu.com', '231', '234', '1231231', '234', '2342342', 1, '123123', 1),
(23, '1234124123', '', '123', '1231', '12', '312@sohu.com', '2312', '312', '312', '123', '11231231', 1, '3123', 1),
(24, '132', '', '', '', '', '123@13.com', '21331', '', '', '', '', 1, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_customer`
--

DROP TABLE IF EXISTS `aeropms_customer`;
CREATE TABLE `aeropms_customer` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `aeropms_customer`
--

INSERT INTO `aeropms_customer` (`id`, `name`, `letter`, `biz_license`, `short`, `contact`, `email`, `office_tel`, `mobile_tel`, `fax`, `salesman`, `im`, `address`, `user_id`, `remark`, `is_del`, `payment`) VALUES
(29, '名称', 'MC', '之间', '教程', '路线', '已经', '不敢', '手机', '重装', '因为', '聊天', '定制', 1, '杀杀杀杀杀杀杀杀杀', 1, '是'),
(30, '名称', 'MC', '是', '搜索', '是', '是', '是', '', '', '', '', '', 0, '', 0, '是');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_daily_report`
--

DROP TABLE IF EXISTS `aeropms_daily_report`;
CREATE TABLE `aeropms_daily_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `content` text,
  `plan` text,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `is_submit` tinyint(3) DEFAULT NULL,
  `add_file` text,
  `score_1` tinyint(3) DEFAULT NULL,
  `score_2` tinyint(3) DEFAULT NULL,
  `score_3` tinyint(3) DEFAULT NULL,
  `score_4` tinyint(3) DEFAULT NULL,
  `score_5` tinyint(3) DEFAULT NULL,
  `score_6` tinyint(3) DEFAULT NULL,
  `score_7` tinyint(3) DEFAULT NULL,
  `score_8` tinyint(3) DEFAULT NULL,
  `score_total` tinyint(3) DEFAULT NULL,
  `work_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- 转存表中的数据 `aeropms_daily_report`
--

INSERT INTO `aeropms_daily_report` (`id`, `user_id`, `user_name`, `dept_id`, `dept_name`, `create_time`, `content`, `plan`, `is_del`, `is_submit`, `add_file`, `score_1`, `score_2`, `score_3`, `score_4`, `score_5`, `score_6`, `score_7`, `score_8`, `score_total`, `work_date`) VALUES
(36, 1, '管理员', 1, '小微企业', 1420792495, '今日工作小结', '明日目标：', 0, 1, '', 1, 2, 3, 4, 5, 6, 7, 8, 36, '2015-01-09'),
(37, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 1, '管理员', 1, '小微企业', 1420790236, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-01-09'),
(41, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 1, '管理员', 1, '小微企业', 1420795045, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-01-09'),
(43, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 1, '管理员', 1, '小微企业', 1421377819, 'SSSSSSSSSSSSSSSSS', '', 0, 0, '', 1, 2, 3, 4, 5, 6, 7, 8, 36, '2015-01-16'),
(45, 1, '管理员', 1, '小微企业', 1421215672, 'ssss', NULL, 1, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 1, '管理员', 1, '小微企业', 1421215766, 'asdfa sdf', NULL, 1, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 1, '管理员', 1, '小微企业', 1421215819, 'ssdfsdf', NULL, 1, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_daily_report_comment`
--

DROP TABLE IF EXISTS `aeropms_daily_report_comment`;
CREATE TABLE `aeropms_daily_report_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- 转存表中的数据 `aeropms_daily_report_comment`
--

INSERT INTO `aeropms_daily_report_comment` (`id`, `doc_id`, `name`, `content`, `user_id`, `user_name`, `add_file`, `is_del`, `create_time`, `update_time`, `pid`, `reply`) VALUES
(66, 44, '', 'cccccccccccccc', 1, '管理员', '', 1, 1421216195, 1421218844, NULL, 'CCCCCCCCCCCCC'),
(67, 44, '', 'ccccccccccc', 1, '管理员', '', 0, 1421216195, 0, NULL, NULL),
(68, 44, '', 'XXXXXXXXXXXXXXXX', 1, '管理员', '', 0, 1421216758, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_daily_report_detail`
--

DROP TABLE IF EXISTS `aeropms_daily_report_detail`;
CREATE TABLE `aeropms_daily_report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `seq` tinyint(3) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `item` text,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `is_need_help` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=191 ;

--
-- 转存表中的数据 `aeropms_daily_report_detail`
--

INSERT INTO `aeropms_daily_report_detail` (`id`, `pid`, `seq`, `subject`, `item`, `start_time`, `end_time`, `type`, `status`, `priority`, `is_need_help`) VALUES
(44, 40, NULL, '1111111', '工作内容1|||工作内容2|||工作内容3|||工作内容4|||工作内容5', '||||||||||||', '||||||||||||', 1, NULL, NULL, NULL),
(45, 40, NULL, '2222', '工作内容10|||工作内容11', '|||', '|||', 1, NULL, NULL, NULL),
(46, 40, NULL, '3333333333333333333', '333333333333|||3333333333333333', '|||', '|||', 1, NULL, NULL, NULL),
(147, 36, NULL, '主要工作事项1', '工作内容1|||工作内容2|||工作内容3', '||||||', '||||||', 1, NULL, NULL, NULL),
(148, 36, NULL, '主要工作事项2', '工作内容4|||工作内容5|||工作内容6', '||||||', '||||||', 1, NULL, NULL, NULL),
(149, 36, NULL, '主要工作事项4', '工作内容10|||工作内容11|||工作内容12', '||||||', '||||||', 1, NULL, NULL, NULL),
(150, 36, NULL, '主要工作事项1', '计划推荐目标1', '1', '2', 2, NULL, 'A', NULL),
(151, 36, NULL, '主要工作事项2', '计划推荐目标2', '3', '4', 2, NULL, 'B', NULL),
(152, 36, NULL, '主要工作事项3', '计划推荐目标3', '5', '6', 2, NULL, 'C', NULL),
(153, 36, NULL, '主要工作事项4', '计划推荐目标4', '7', '8', 2, NULL, 'D', NULL),
(154, 36, NULL, '主要工作事项5', '计划推荐目标5', '9', '10', 2, NULL, 'E', NULL),
(155, 36, NULL, '主要工作事项6', '计划推荐目标6', '11', '12', 2, NULL, 'F', NULL),
(156, 36, NULL, '主要工作事项7', '计划推荐目标7', '13', '14', 2, NULL, 'G', NULL),
(157, 36, NULL, '主要工作事项8', '计划推荐目标8', '15', '16', 2, NULL, 'H', NULL),
(161, 42, NULL, '主要工作事项1', '工作内容1|||工作内容2|||工作内容3', '1|||3|||5', '2|||4|||6', 1, NULL, NULL, NULL),
(162, 42, NULL, '主要工作事项2', '工作内容4|||工作内容5|||工作内容6', '7|||9|||11', '8|||10|||12', 1, NULL, NULL, NULL),
(163, 42, NULL, '主要工作事项4', '工作内容10|||工作内容11|||工作内容12', '13|||15|||17', '14|||16|||18', 1, NULL, NULL, NULL),
(168, 43, NULL, '11', '|||', '|||', '|||', 1, NULL, NULL, NULL),
(169, 43, NULL, '22', '|||', '|||', '|||', 1, NULL, NULL, NULL),
(170, 43, NULL, '33', '|||', '|||', '|||', 1, NULL, NULL, NULL),
(171, 43, NULL, '55', '', '', '', 2, NULL, '', 0),
(172, 43, NULL, '66', '', '', '', 2, NULL, '', 0),
(173, 43, NULL, '77', '', '', '', 2, NULL, '', 0),
(174, 43, NULL, '88', '', '', '', 2, NULL, '', 0),
(187, 44, NULL, '主要工作事项1', '工作内容1|||工作内容2|||工作内容3', '01:30|||00:00|||00:00', '00:00|||00:00|||00:00', 1, NULL, NULL, NULL),
(188, 44, NULL, '主要工作事项2', '工作内容4|||工作内容5|||工作内容6', '00:00|||00:00|||00:00', '00:00|||00:00|||00:00', 1, NULL, NULL, NULL),
(189, 44, NULL, '主要工作事项4', '工作内容10|||工作内容11|||工作内容12', '00:00|||00:00|||00:00', '00:00|||00:00|||00:00', 1, NULL, NULL, NULL),
(190, 44, NULL, 'XXXXXXX', '', '00:00', '00:00', 2, NULL, 'A', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_dept`
--

DROP TABLE IF EXISTS `aeropms_dept`;
CREATE TABLE `aeropms_dept` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `aeropms_dept`
--

INSERT INTO `aeropms_dept` (`id`, `pid`, `dept_no`, `dept_grade_id`, `name`, `short`, `sort`, `remark`, `is_del`) VALUES
(1, 0, 'A1', 0, '特飞所', '特飞所', '', '', 0),
(3, 1, 'XXB', 18, 'IT部', 'IT', '4', '', 0),
(6, 1, 'XMB', 18, '项目部', '项目', '2', '', 0),
(7, 1, 'XSB', 18, '销售部', '销售', '3', '', 0),
(8, 1, 'CWB', 18, '财务部', '财务', '2', '', 0),
(21, 1, 'HQB', 18, '后勤部', '后勤', '3', '', 0),
(27, 1, 'AG50GROUP', 13, 'AG50项目团队', 'AG50', '1', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_dept_grade`
--

DROP TABLE IF EXISTS `aeropms_dept_grade`;
CREATE TABLE `aeropms_dept_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_no` varchar(10) NOT NULL DEFAULT '' COMMENT '部门级别编码',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `sort` varchar(10) NOT NULL DEFAULT '' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `aeropms_dept_grade`
--

INSERT INTO `aeropms_dept_grade` (`id`, `grade_no`, `name`, `sort`, `is_del`) VALUES
(13, 'DG3', '部门', '3', 0),
(16, 'DG1', '科', '1', 0),
(18, 'DG2', '部', '2', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_doc`
--

DROP TABLE IF EXISTS `aeropms_doc`;
CREATE TABLE `aeropms_doc` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- 转存表中的数据 `aeropms_doc`
--

INSERT INTO `aeropms_doc` (`id`, `doc_no`, `name`, `content`, `folder`, `add_file`, `user_id`, `user_name`, `create_time`, `update_time`, `is_del`) VALUES
(85, '2014-0001', '1111111', '11111111111111111111', 48, '64dd83526bc113639b405d9317ebc2f4;8b2f6f392af9bb2eac66ce4f3532378b;', 1, '管理员', 1408968417, 1415241046, 0),
(86, '2014-0002', '222222222222222222222222', 'sssssssssssssssssss', 48, '4bd485b02a2b6780f86614b48518da06;', 1, '管理员', 1415241072, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_duty`
--

DROP TABLE IF EXISTS `aeropms_duty`;
CREATE TABLE `aeropms_duty` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `duty_no` varchar(20) NOT NULL DEFAULT '' COMMENT '职责编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `sort` varchar(20) NOT NULL DEFAULT '' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `aeropms_duty`
--

INSERT INTO `aeropms_duty` (`id`, `duty_no`, `name`, `sort`, `is_del`, `remark`) VALUES
(14, 'P001', '采购员', '', 0, '采购员'),
(15, 'S001', '业务员', '', 0, ''),
(16, 'W001', '文员', '', 0, ''),
(17, 'TASK_ASSIGN', '任务分配', '1', 0, ''),
(18, 'SHOW_LOG', '日志查看', '1', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_engineering_phase`
--

DROP TABLE IF EXISTS `aeropms_engineering_phase`;
CREATE TABLE `aeropms_engineering_phase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specific_proj_id` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(512) NOT NULL,
  `desc` varchar(512) NOT NULL DEFAULT '暂无描述',
  `attach_id` int(11) DEFAULT '0',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `aeropms_engineering_phase`
--

INSERT INTO `aeropms_engineering_phase` (`id`, `specific_proj_id`, `name`, `desc`, `attach_id`, `remark`) VALUES
(1, -1, '可行性论证', '暂无描述', 0, NULL),
(2, -1, '总体方案定义', '暂无描述', 0, NULL),
(3, -1, '初步设计', '暂无描述', 0, NULL),
(4, -1, '详细设计', '暂无描述', 0, NULL),
(5, -1, '全面试制', '暂无描述', 0, NULL),
(6, -1, '试飞取证', '暂无描述', 0, NULL),
(10, -1, '通用', '暂无描述', 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_file`
--

DROP TABLE IF EXISTS `aeropms_file`;
CREATE TABLE `aeropms_file` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1732 ;

--
-- 转存表中的数据 `aeropms_file`
--

INSERT INTO `aeropms_file` (`id`, `sid`, `name`, `savename`, `size`, `extension`, `module`, `user_id`, `create_time`, `is_del`) VALUES
(1658, '57839ad7cc408f0b7ab9bb89fc14c9b3', '', 'mail/admin/201408/53eade200734a.', '902849', '', 'Mail', 1, 1407901216, 0),
(1659, 'd54360ef12f510b430575c473a774dd3', 'hrwyds fwbp.png', 'mail/admin/201408/53eade2007cba.png', '634632', 'png', 'Mail', 1, 1407901216, 0),
(1660, '00f1c17ea1b324e9d370ec5d90a8bb8b', '杭州圣桐科技.xlsx', 'mail/admin/201408/53eade20081c4.xlsx', '117669', 'xlsx', 'Mail', 1, 1407901216, 0),
(1661, 'a7e2cb404c0eb4f51b856322bead7189', '小微OA系统商业授权登记表.xlsx', 'mail/admin/201408/53eade202d201.xlsx', '11684', 'xlsx', 'Mail', 1, 1407901216, 0),
(1662, '0feeea5dd85e1aaca1d99230d92ea58b', 'image022.png', 'mail/admin/201408/53eade219a135.png', '166', 'png', 'Mail', 1, 1407901217, 0),
(1663, 'cd9072626972475e9e09e9a9cd52060f', 'image023.gif', 'mail/admin/201408/53eade219a6f4.gif', '10795', 'gif', 'Mail', 1, 1407901217, 0),
(1664, '82f8e43f3744dd09821d5bc9ad031b99', 'image024.jpg', 'mail/admin/201408/53eade219ad5f.jpg', '79213', 'jpg', 'Mail', 1, 1407901217, 0),
(1665, '703aa0078cc46069b67b7919b087f032', 'image025.jpg', 'mail/admin/201408/53eade219b47e.jpg', '1220', 'jpg', 'Mail', 1, 1407901217, 0),
(1666, '87ad9416672a5a753e48724cab166521', 'image026.gif', 'mail/admin/201408/53eade219baab.gif', '51', 'gif', 'Mail', 1, 1407901217, 0),
(1667, '30d2346a7533f4e363307bc60a675361', 'image027.gif', 'mail/admin/201408/53eade219c026.gif', '670', 'gif', 'Mail', 1, 1407901217, 0),
(1668, 'c71871f6229c068aa0743e1762c65589', 'image028.jpg', 'mail/admin/201408/53eade219c5a1.jpg', '1750', 'jpg', 'Mail', 1, 1407901217, 0),
(1669, '8bb3c068ac525dddec5088fa2f25a573', 'image029.jpg', 'mail/admin/201408/53eade219caad.jpg', '1727', 'jpg', 'Mail', 1, 1407901217, 0),
(1670, '36e486522b0c4862b2a1decb9447ccd1', 'image030.jpg', 'mail/admin/201408/53eade219cfa2.jpg', '1204', 'jpg', 'Mail', 1, 1407901217, 0),
(1671, '5ba2d89e0e33136f28295766e8c82178', 'image031.jpg', 'mail/admin/201408/53eade219d5d1.jpg', '1165', 'jpg', 'Mail', 1, 1407901217, 0),
(1672, 'e505be70b9fbdebe37b0c52dd2aee142', 'image032.gif', 'mail/admin/201408/53eade219dc18.gif', '940', 'gif', 'Mail', 1, 1407901217, 0),
(1673, '30ce7038407d6811927b23c27ec82211', 'image033.gif', 'mail/admin/201408/53eade219e277.gif', '975', 'gif', 'Mail', 1, 1407901217, 0),
(1674, 'f363c833d4ca4302adc24bb1c3f49425', 'image034.jpg', 'mail/admin/201408/53eade219e896.jpg', '872', 'jpg', 'Mail', 1, 1407901217, 0),
(1675, 'f39f1ba77577c8969c5bc23f78d4979d', 'image035.jpg', 'mail/admin/201408/53eade219ed8f.jpg', '1458', 'jpg', 'Mail', 1, 1407901217, 0),
(1676, 'edfea06d2653432e8b701258e2083ea7', 'image036.jpg', 'mail/admin/201408/53eade219f490.jpg', '6248', 'jpg', 'Mail', 1, 1407901217, 0),
(1677, 'cdf6e20cf66179ccac11594c961dfe2f', 'image037.jpg', 'mail/admin/201408/53eade219fad7.jpg', '6792', 'jpg', 'Mail', 1, 1407901217, 0),
(1678, '58f2f3a005baef25cc4f0c0c2636a16a', 'image038.gif', 'mail/admin/201408/53eade21a0366.gif', '818', 'gif', 'Mail', 1, 1407901217, 0),
(1679, 'b8fe94b4739e4c9ea3f0da50d7adab6a', 'image039.gif', 'mail/admin/201408/53eade21a08ea.gif', '581', 'gif', 'Mail', 1, 1407901217, 0),
(1680, '7dfe650daa4fe7d7dbb49764c3ddb76a', 'image040.gif', 'mail/admin/201408/53eade21a0ddc.gif', '1826', 'gif', 'Mail', 1, 1407901217, 0),
(1681, 'af8f319cae2c9b7973e871118e482ccd', 'image041.gif', 'mail/admin/201408/53eade21a129c.gif', '1972', 'gif', 'Mail', 1, 1407901217, 0),
(1682, '7353567263c3b864fbca54a45133cd18', 'image042.gif', 'mail/admin/201408/53eade21a1a8f.gif', '2115', 'gif', 'Mail', 1, 1407901217, 0),
(1683, '1ba8945e14fe727682e7372f12c74089', 'image043.gif', 'mail/admin/201408/53eade21a207d.gif', '5310', 'gif', 'Mail', 1, 1407901217, 0),
(1684, '10c5b2f77431dc1fc2261cc6b25dc841', 'image001.png', 'mail/admin/201408/53eade23cce13.png', '166', 'png', 'Mail', 1, 1407901219, 0),
(1685, '3ac1296153c1a21de144c9c14fa152b1', 'image002.gif', 'mail/admin/201408/53eade23cd3c7.gif', '14527', 'gif', 'Mail', 1, 1407901219, 0),
(1686, 'bb0b81ff8c32a135561921b0fa89b22a', 'image003.jpg', 'mail/admin/201408/53eade23cd901.jpg', '119576', 'jpg', 'Mail', 1, 1407901219, 0),
(1687, '88bb4ec13b9e0f78b882f8e6082a6e74', 'image004.gif', 'mail/admin/201408/53eade23cde96.gif', '7196', 'gif', 'Mail', 1, 1407901219, 0),
(1688, '64b3fdb0541eeec5e3c0b357a2bc03c1', 'image005.gif', 'mail/admin/201408/53eade23ce4ed.gif', '7789', 'gif', 'Mail', 1, 1407901219, 0),
(1689, '3e8c6570511a42e55c30d37ac4cefb18', 'image006.gif', 'mail/admin/201408/53eade23cea5c.gif', '6179', 'gif', 'Mail', 1, 1407901219, 0),
(1690, '64b6279e3b59221e7f75c937af3da549', 'image007.gif', 'mail/admin/201408/53eade23cef5c.gif', '4721', 'gif', 'Mail', 1, 1407901219, 0),
(1691, 'bb85b58bda82e149f62e20954087423e', 'image008.gif', 'mail/admin/201408/53eade23cf42e.gif', '1649', 'gif', 'Mail', 1, 1407901219, 0),
(1692, '5a14c63133120d4bc98ef0cd9d8bb923', 'image009.gif', 'mail/admin/201408/53eade23cf9c0.gif', '4796', 'gif', 'Mail', 1, 1407901219, 0),
(1693, '3e0d20d0ceaf4cb6e08590c0221dbadd', 'image010.gif', 'mail/admin/201408/53eade23d000e.gif', '4460', 'gif', 'Mail', 1, 1407901219, 0),
(1694, 'a7a5fa272b65b699003806a840eb49ae', 'image011.gif', 'mail/admin/201408/53eade23d052b.gif', '5282', 'gif', 'Mail', 1, 1407901219, 0),
(1695, '1402f58c070ff0015d84edbfa4e424ef', 'image012.gif', 'mail/admin/201408/53eade23d0a36.gif', '5116', 'gif', 'Mail', 1, 1407901219, 0),
(1696, '418abcc17e19324ccde435f8145cb849', 'image013.gif', 'mail/admin/201408/53eade23d1171.gif', '137', 'gif', 'Mail', 1, 1407901219, 0),
(1697, '57a7a66a559b9d1e51d6d72fd4753a4e', 'image014.gif', 'mail/admin/201408/53eade23d1737.gif', '10347', 'gif', 'Mail', 1, 1407901219, 0),
(1698, 'ff6e733e734961ce771b1669ec13cb69', 'image015.gif', 'mail/admin/201408/53eade23d1c52.gif', '19629', 'gif', 'Mail', 1, 1407901219, 0),
(1699, '05e11d7b2566ea040e87783a43cf069d', 'image016.gif', 'mail/admin/201408/53eade23d239a.gif', '5102', 'gif', 'Mail', 1, 1407901219, 0),
(1700, '41e74d2b1b530bc60e6d98d8d90f0da9', 'image017.gif', 'mail/admin/201408/53eade23d28e7.gif', '46919', 'gif', 'Mail', 1, 1407901219, 0),
(1701, '671125e269a72ca33b883674e508c7b4', 'image018.gif', 'mail/admin/201408/53eade23d2dac.gif', '435', 'gif', 'Mail', 1, 1407901219, 0),
(1702, '04861927e91adc2af55dbc1858bdf344', 'image019.gif', 'mail/admin/201408/53eade23d3361.gif', '730', 'gif', 'Mail', 1, 1407901219, 0),
(1703, '5bacbb543f4c3579a4a2ced42af27381', 'image020.gif', 'mail/admin/201408/53eade23d38cd.gif', '704', 'gif', 'Mail', 1, 1407901219, 0),
(1704, 'd3e99cbd1fd0857bec6c3bec6aa20c29', 'image021.gif', 'mail/admin/201408/53eade23d3db8.gif', '666', 'gif', 'Mail', 1, 1407901219, 0),
(1705, '2cf0ffffe815fbeaa1d7f1da5cd8a561', 'image022.gif', 'mail/admin/201408/53eade23d429f.gif', '707', 'gif', 'Mail', 1, 1407901219, 0),
(1706, 'ee16b8a22b4ebc04c9d048f2409d3910', 'image023.gif', 'mail/admin/201408/53eade23d4844.gif', '706', 'gif', 'Mail', 1, 1407901219, 0),
(1707, '2ffcc2baab1e8c065b1e58ae609987db', 'image024.gif', 'mail/admin/201408/53eade23d4dcb.gif', '13178', 'gif', 'Mail', 1, 1407901219, 0),
(1708, '34e739721443c9aa23c9ec1836aafad8', 'image025.gif', 'mail/admin/201408/53eade23d52cf.gif', '1826', 'gif', 'Mail', 1, 1407901219, 0),
(1709, '2a203b5678e5f73e96005919f4e7e654', 'image026.gif', 'mail/admin/201408/53eade23d57a4.gif', '1972', 'gif', 'Mail', 1, 1407901219, 0),
(1710, 'af713c1b78b49394797a2b88bc48945c', 'image027.gif', 'mail/admin/201408/53eade23d5c52.gif', '2115', 'gif', 'Mail', 1, 1407901219, 0),
(1711, 'b7223f470fab50d3e2a12843fc076fd7', 'image028.gif', 'mail/admin/201408/53eade23d62b8.gif', '5310', 'gif', 'Mail', 1, 1407901219, 0),
(1712, '5e3d654d3376a624291045c565253db7', '永中软件产品配置对外报价书5.19（永中对外）.xlsx', 'mail/admin/201408/53eade252d27e.xlsx', '98356', 'xlsx', 'Mail', 1, 1407901221, 0),
(1713, '656fad224989617dd4c71b63e88ba134', '小微OA系统商业授权登记表-fjzgtx.cn.xlsx', 'mail/admin/201408/53eade2618446.xlsx', '11985', 'xlsx', 'Mail', 1, 1407901222, 0),
(1714, '2345f607f362e639229a3937b8c56529', 'xEustf Dcpy.bmp', 'mail/admin/201408/53eade2a592bf.bmp', '906134', 'bmp', 'Mail', 1, 1407901226, 0),
(1715, 'd2e9a380b28629840fb8054d4401356c', '杭州圣桐科技.xlsx', 'mail/admin/201408/53eb27b9cb0a3.xlsx', '117669', 'xlsx', 'Mail', 1, 1407920057, 0),
(1716, '64dd83526bc113639b405d9317ebc2f4', 'a60a32f214b2ef6bfba2ed170b68fbfd.jpg', 'doc/201408/53fb26ddb781d.jpg', '224478', 'jpg', 'Doc', 1, 1408968413, 0),
(1717, '5319ac0b0c8e0ed14ebcc3b8bda66b40', '1.jpg', 'slide/201408/53fc86377dfd4.jpg', '7213', 'jpg', 'Slide', 1, 1409058359, 0),
(1718, 'bf74728da8af89c2eb8443953286cdb3', 'a60a32f214b2ef6bfba2ed170b68fbfd.jpg', 'slide/201408/53fc866e1dd7b.jpg', '224478', 'jpg', 'Slide', 1, 1409058414, 0),
(1719, '9edcec5a421d35682aff66c8ee6cda5e', '7451884_132645827000_2.jpg', 'slide/201408/53fc8675c1eb6.jpg', '208585', 'jpg', 'Slide', 1, 1409058421, 0),
(1720, '6b67e16313d4f26670da48ec3ef450b3', '4.jpg', 'slide/201408/53fc872a720b3.jpg', '8948', 'jpg', 'Slide', 1, 1409058602, 0),
(1721, '65a17fc70e9a22eaef906416ff8bfbce', '4.jpg', 'slide/201408/53fc875ebd7b5.jpg', '8948', 'jpg', 'Slide', 1, 1409058654, 0),
(1722, '3da7ad68086327419e216ce1250f08f6', '7451884_132645827000_2.jpg', 'slide/201408/53fc89347f26e.jpg', '208585', 'jpg', 'Slide', 1, 1409059124, 0),
(1723, '7805b90ce705f12c6c037b5c71fe3068', 'image.jpg', 'mail/201409/541aeaa8e9a56.jpg', '725115', 'jpg', 'Mail', 1, 1411050152, 0),
(1724, '8b2f6f392af9bb2eac66ce4f3532378b', 'sp_hall.xls', 'doc/201411/545add5453ab0.xls', '145408', 'xls', 'Doc', 1, 1415241044, 0),
(1725, '4bd485b02a2b6780f86614b48518da06', '1亟待解决的问题10.30.docx', 'doc/201411/545add6e184c3.docx', '729540', 'docx', 'Doc', 1, 1415241070, 0),
(1727, '4f7d787f8b2d6f40fc029957f09d2f3b', '2.jpg', 'dailyreport/201501/54af90e3d5155.jpg', '432862', 'jpg', 'DailyReport', 1, 1420792035, 0),
(1728, 'c0098814bbd816de8c17b1e6e00aea42', '1.jpg', 'dailyreport/201501/54af915c0cade.jpg', '601946', 'jpg', 'DailyReport', 1, 1420792156, 0),
(1729, '2ebf10ceda0c80714685f81bc660965f', '2.jpg', 'dailyreport/201501/54af915c5ad15.jpg', '432862', 'jpg', 'DailyReport', 1, 1420792156, 0),
(1730, 'eda6c74034ffc698dbd7e2d58f871344', '3.jpg', 'dailyreport/201501/54af915ca2eb6.jpg', '453267', 'jpg', 'DailyReport', 1, 1420792156, 0),
(1731, '60823b8b99b29e228a972637f1872cac', '4.jpg', 'dailyreport/201501/54af915ce9020.jpg', '600890', 'jpg', 'DailyReport', 1, 1420792156, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_finance`
--

DROP TABLE IF EXISTS `aeropms_finance`;
CREATE TABLE `aeropms_finance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(10) DEFAULT NULL COMMENT '单据编号',
  `input_date` date DEFAULT NULL COMMENT '录入日期',
  `account_id` int(11) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `partner` varchar(50) DEFAULT NULL,
  `actor_user_id` int(11) DEFAULT NULL,
  `actor_user_name` varchar(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(10) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `add_file` varchar(255) DEFAULT NULL,
  `doc_type` tinyint(3) DEFAULT NULL,
  `is_del` tinyint(3) DEFAULT '0',
  `transfer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `aeropms_finance`
--

INSERT INTO `aeropms_finance` (`id`, `doc_no`, `input_date`, `account_id`, `income`, `payment`, `amount`, `type`, `partner`, `actor_user_id`, `actor_user_name`, `user_id`, `user_name`, `create_time`, `update_time`, `remark`, `add_file`, `doc_type`, `is_del`, `transfer_id`) VALUES
(30, '123123', '2014-10-29', 3, NULL, 11, NULL, '转账', NULL, NULL, '11', 1, '管理员', 1415004900, NULL, '向[民生]转出[11]', '', 3, 0, NULL),
(31, '123123', '2014-10-29', 4, 11, NULL, NULL, '转账', NULL, NULL, '11', 1, '管理员', 1415004900, NULL, '由[农行]转入[11]', '', 3, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_finance_account`
--

DROP TABLE IF EXISTS `aeropms_finance_account`;
CREATE TABLE `aeropms_finance_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `no` varchar(50) DEFAULT NULL,
  `init` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `is_del` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `aeropms_finance_account`
--

INSERT INTO `aeropms_finance_account` (`id`, `name`, `bank`, `no`, `init`, `balance`, `remark`, `is_del`) VALUES
(1, '22222', '2222222222', '22222233333', 0, 1, '33333333333', 1),
(2, '招行', '333333333333', '3333333333', 111, 2, '33333333333333333333333333', 0),
(3, '农行', '11111', '111111', 0, 3, '', 0),
(4, '民生', '1', '2', 0, 4, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_flow`
--

DROP TABLE IF EXISTS `aeropms_flow`;
CREATE TABLE `aeropms_flow` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=231 ;

--
-- 转存表中的数据 `aeropms_flow`
--

INSERT INTO `aeropms_flow` (`id`, `doc_no`, `name`, `content`, `confirm`, `confirm_name`, `consult`, `consult_name`, `refer`, `refer_name`, `type`, `add_file`, `user_id`, `emp_no`, `user_name`, `dept_id`, `dept_name`, `create_date`, `create_time`, `update_time`, `step`, `is_del`) VALUES
(230, '2014-12-17', '斯蒂芬', '笑嘻嘻笑嘻嘻系速度&nbsp;', '2001|', '\r\n				<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>			', '2001|', '\r\n				<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>			', '2001|', '\r\n				<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b><a class="del" title="删除"><i class="fa fa-times"></i></a></nobr></span>			', '35', '', 1, 'admin', '管理员', 1, '小微企业', '', 1418830595, 0, 20, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_flow_field`
--

DROP TABLE IF EXISTS `aeropms_flow_field`;
CREATE TABLE `aeropms_flow_field` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `aeropms_flow_field`
--

INSERT INTO `aeropms_flow_field` (`id`, `name`, `type_id`, `sort`, `msg`, `control_type`, `control_layout`, `control_data`, `validate`) VALUES
(12, '所属部门', 33, '1', '', 'text', '1', '病假|病假,事假|事假,婚假|婚假|丧假|丧假,产假|产假,年休假|年休假', ''),
(14, '申请人', 33, '1', '', 'text', '1', 'a|1,b|2,c|3,d|4,e|5', 'require'),
(26, '离职原因', 33, '2', '', 'textarea', '1', '', ''),
(27, '类别', 33, '2', '', 'radio', '1', '1|个人,2|工作,3|其他', ''),
(28, '日期', 33, '2', '', 'date', '1', '', ''),
(29, '所属部门', 35, '1', '', 'text', '1', '', ''),
(30, '申请人', 35, '1', '', 'text', '1', '', ''),
(31, '当前薪资', 35, '1', '', 'text', '1', '', ''),
(32, '调薪额度', 35, '1', '', 'text', '1', '', ''),
(33, '调薪明细', 35, '1', '', 'textarea', '1', '', ''),
(34, '类别', 35, '1', '', 'radio', '1', '1|表现佳,2|提升业绩,3|专业技术,4|工作差,5|重大错误', ''),
(35, '日期', 35, '1', '', 'date', '1', '', ''),
(36, '所属部门', 34, '1', '', 'text', '1', '', ''),
(37, '申请人', 34, '1', '', 'text', '1', '', ''),
(38, '类别', 34, '1', '', 'radio', '1', '1|事假,2|病假,3|婚嫁,4|丧假,5|其他', ''),
(39, '请假时间', 34, '1', '', 'radio', '1', '1|1天,2|2天,3|3天,4|3天以上需提交总经理批示', ''),
(40, '请假明细', 34, '1', '', 'textarea', '1', '', ''),
(41, '日期', 34, '1', '', 'date', '1', '', ''),
(42, '所属部门', 8, '1', '', 'text', '1', '', ''),
(43, '申请人', 8, '1', '', 'text', '1', '', ''),
(44, '报销额度', 8, '1', '', 'text', '1', '', ''),
(45, '报销类型', 8, '1', '', 'radio', '1', '1|公干,2|个人,3|其他', ''),
(46, '补充', 8, '1', '', 'textarea', '1', '', ''),
(47, '日期', 8, '1', '', 'date', '1', '', ''),
(48, '所属部门', 36, '1', '', 'text', '1', '', ''),
(49, '申请人', 36, '1', '', 'text', '1', '', ''),
(50, '外出理由', 36, '1', '', 'radio', '1', '1|个人,2|公干,3|其他', ''),
(51, '日期', 36, '1', '', 'date', '1', '', ''),
(52, '补充', 36, '2', '', 'simple', '2', '', ''),
(53, '多行文本', 37, '', '', 'textarea', '2', '', ''),
(54, '简易编辑器', 37, '', '', 'simple', '2', '', ''),
(55, '编辑器', 37, '', '', 'editor', '2', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_flow_field_data`
--

DROP TABLE IF EXISTS `aeropms_flow_field_data`;
CREATE TABLE `aeropms_flow_field_data` (
  `flow_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL DEFAULT '0',
  `val` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aeropms_flow_field_data`
--

INSERT INTO `aeropms_flow_field_data` (`flow_id`, `field_id`, `val`) VALUES
(190, 12, '病假'),
(190, 14, '2014-06-10'),
(190, 13, '2014-06-10'),
(190, 11, 'ssssssssssssss'),
(191, 12, '事假'),
(191, 14, '2014-06-04'),
(191, 13, ''),
(191, 11, '11111111111'),
(192, 14, ''),
(192, 13, ''),
(192, 11, 'sdf sdf'),
(221, 12, '病假'),
(221, 14, '2014-07-16'),
(221, 13, '2014-07-31'),
(221, 11, '1111111'),
(222, 12, '事假'),
(222, 14, '2014-07-22'),
(222, 13, '2014-07-25'),
(222, 11, '22222222222222'),
(223, 13, '2014-07-23'),
(223, 14, '2014-07-30'),
(223, 11, '123123'),
(230, 29, '斯蒂芬'),
(230, 30, '斯蒂芬'),
(230, 31, '速度发 '),
(230, 32, '速度 '),
(230, 33, '是 发射点发'),
(230, 34, '1'),
(230, 35, '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_flow_log`
--

DROP TABLE IF EXISTS `aeropms_flow_log`;
CREATE TABLE `aeropms_flow_log` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=313 ;

--
-- 转存表中的数据 `aeropms_flow_log`
--

INSERT INTO `aeropms_flow_log` (`id`, `flow_id`, `emp_no`, `user_id`, `user_name`, `step`, `result`, `create_time`, `update_time`, `comment`, `is_read`) VALUES
(312, 230, '2001', 42, '总监2001', 21, NULL, 1418830595, 0, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_flow_type`
--

DROP TABLE IF EXISTS `aeropms_flow_type`;
CREATE TABLE `aeropms_flow_type` (
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
  `request_duty` int(11) DEFAULT NULL,
  `report_duty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `aeropms_flow_type`
--

INSERT INTO `aeropms_flow_type` (`id`, `tag`, `doc_no_format`, `name`, `short`, `content`, `confirm`, `confirm_name`, `consult`, `consult_name`, `refer`, `refer_name`, `create_time`, `update_time`, `sort`, `is_edit`, `is_lock`, `is_del`, `request_duty`, `report_duty`) VALUES
(8, '69', '{DEPT}{SHORT}{YYYY}-{###}', '费用报销单', 'FY', '<table border="1" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<span>部    门</span> \r\n				</p>\r\n			</td>\r\n			<td colspan="3">\r\n				<p>\r\n					{DEPT}<span><br />\r\n</span> \r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span>使用人</span> \r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span>12312 </span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<span>通讯工具类别</span> \r\n				</p>\r\n			</td>\r\n			<td colspan="3">\r\n				<p>\r\n					<span>（ ）固定电话  （ ）移动电话  （ ）其他</span> \r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span>号  码</span> \r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span>1231231123 </span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<span>费用（合计）</span> \r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span>123123 </span>\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span>人民币（大写）123123</span>\r\n				</p>\r\n			</td>\r\n			<td colspan="3">\r\n				<p>\r\n					<span>123123 </span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<span>费用明细</span> \r\n				</p>\r\n			</td>\r\n			<td colspan="5">\r\n				<p>\r\n					<span><br />\r\n</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b><a class="del" title="删除"><i class="fa fa-times"></i></a></nobr></span>', 1391697983, 1413296677, 1, 1, 0, 0, 14, 15),
(18, '72', '{DEPT}{SHORT}{YYYY}-{###}', '通讯费用报销单', '通讯', '<table border="1" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<span>部&nbsp;&nbsp;&nbsp;&nbsp;门</span>\r\n				</p>\r\n			</td>\r\n			<td colspan="3">\r\n				<p>\r\n					{DEPT}<span><br />\r\n</span>\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span>使用人</span>\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span><br />\r\n</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<span>通讯工具类别</span>\r\n				</p>\r\n			</td>\r\n			<td colspan="3">\r\n				<p>\r\n					<span>（&nbsp;）固定电话&nbsp;&nbsp;（&nbsp;）移动电话&nbsp;&nbsp;（&nbsp;）其他</span>\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span>号&nbsp;&nbsp;码</span>\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span><br />\r\n</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<span>费用（合计）</span>\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span><br />\r\n</span>\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<span>人民币（大写）</span>\r\n				</p>\r\n			</td>\r\n			<td colspan="3">\r\n				<p>\r\n					<span><br />\r\n</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<span>费用明细</span>\r\n				</p>\r\n			</td>\r\n			<td colspan="5">\r\n				<p>\r\n					<span><br />\r\n</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', '', 'dept_10|', '<span data="dept_10" id="dept_10"><nobr><b title="会计科">会计科</b></nobr></span>', 'emp_2001|emp_2003|emp_1001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b><a class="del" title="删除"><i class="icon-remove"></i></a></nobr></span><span data="emp_2003" id="emp_2003"><nobr><b title="总监2003/总监<>">总监2003/总监&lt;&gt;</b><a class="del" title="删除"><i class="icon-remove"></i></a></nobr></span><span data="emp_1001" id="emp_1001"><nobr><b title="总经理1001/总经理<>">总经理1001/总经理&lt;&gt;</b><a class="del" title="删除"><i class="icon-remove"></i></a></nobr></span>', 1391697983, 1401184122, 1, 1, 0, 0, NULL, NULL),
(19, '72', '{DEPT}{SHORT}{YYYY}-{###}', '招待费用报销单', '招待', '<table border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					姓&nbsp;&nbsp;&nbsp;&nbsp;名\r\n				</p>\r\n			</td>\r\n			<td colspan="4">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					职务\r\n				</p>\r\n			</td>\r\n			<td colspan="4">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="4" rowspan="2">\r\n				<p>\r\n					招待事由\r\n				</p>\r\n			</td>\r\n			<td colspan="9" rowspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td rowspan="11">\r\n				<p>\r\n					附件\r\n				</p>\r\n				<p>\r\n					<br />\r\n				</p>\r\n				<p>\r\n					张\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					部&nbsp;&nbsp;&nbsp;门\r\n				</p>\r\n			</td>\r\n			<td colspan="10">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					招待对象\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="5">\r\n				<p>\r\n					招待人数\r\n				</p>\r\n			</td>\r\n			<td colspan="7">\r\n				<p>\r\n					客人&nbsp;&nbsp;&nbsp;人，陪同&nbsp;&nbsp;&nbsp;人\r\n				</p>\r\n			</td>\r\n			<td colspan="3">\r\n				<p>\r\n					备注\r\n				</p>\r\n			</td>\r\n			<td colspan="6">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="2">\r\n				<p>\r\n					日&nbsp;&nbsp;&nbsp;期\r\n				</p>\r\n			</td>\r\n			<td colspan="2" rowspan="2">\r\n				<p>\r\n					招待地点\r\n				</p>\r\n			</td>\r\n			<td colspan="3" rowspan="2">\r\n				<p>\r\n					餐饮费\r\n				</p>\r\n			</td>\r\n			<td colspan="2" rowspan="2">\r\n				<p>\r\n					住宿费\r\n				</p>\r\n			</td>\r\n			<td colspan="2" rowspan="2">\r\n				<p>\r\n					礼品礼金\r\n				</p>\r\n			</td>\r\n			<td colspan="2" rowspan="2">\r\n				<p>\r\n					其他费用\r\n				</p>\r\n			</td>\r\n			<td colspan="12">\r\n				<p>\r\n					金额合计\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n				<p>\r\n					十\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					万\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					千\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					百\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					十\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					元\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					角\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					分\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="3">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="3">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="3">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					金额\r\n				</p>\r\n				<p>\r\n					（大写）\r\n				</p>\r\n			</td>\r\n			<td colspan="9">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					合计\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n				<p>\r\n					财务审批\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					部门主管审批\r\n				</p>\r\n			</td>\r\n			<td colspan="5">\r\n				<p>\r\n					财务复核\r\n				</p>\r\n			</td>\r\n			<td colspan="4">\r\n				<p>\r\n					部门经理审核\r\n				</p>\r\n			</td>\r\n			<td colspan="7">\r\n				<p>\r\n					经办人签名\r\n				</p>\r\n			</td>\r\n			<td colspan="4">\r\n				<p>\r\n					报销人签名\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="2">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="5">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="4">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="7">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n			<td colspan="4">\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'dgp_9_2|dgp_7_3|', '<span data="dgp_9_2" id="dgp_9_2"><nobr><b title="科-经理">科-经理</b></nobr><b><i class="icon-arrow-right"></i></b></span><span data="dgp_7_3" id="dgp_7_3"><nobr><b title="部-总监">部-总监</b></nobr></span>', 'dept_10|', '<span data="dept_10" id="dept_10"><nobr><b title="会计科">会计科</b></nobr></span>', '', '', 1391698060, 1391699220, 1, 1, 0, 0, NULL, NULL),
(33, '69', '{YYYY}-{M}-{D}', '离职申请单', 'LZ', '请假人员，需经过！', 'emp_2001|', '<span id="emp_2001" data="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>', 'emp_2001|', '<span id="emp_2001" data="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>', 'emp_2001|', '<span id="emp_2001" data="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b><a title="删除" class="del"><i class="fa fa-times"></i></a></nobr></span>', 1399709992, 1415165116, 0, 0, 0, 0, 16, 15),
(34, '69', '{YYYY}-{M}-{D}', '个人请假单', 'QJ', '请假申请样式', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b><a class="del" title="删除"><i class="fa fa-times"></i></a></nobr></span>', 1401288825, 1413296655, 1, 1, 0, 0, 14, 14),
(35, '69', '{YYYY}-{M}-{D}', '调薪申请单', 'TX', '笑嘻嘻笑嘻嘻系', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b><a class="del" title="删除"><i class="fa fa-times"></i></a></nobr></span>', 1408251287, 1412776203, 0, 1, 0, 0, 15, 14),
(36, '69', '{YYYY}-{M}-{D}', '外出申请', 'WC', '123', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b></nobr></span>', 'emp_2001|', '<span data="emp_2001" id="emp_2001"><nobr><b title="总监2001/总监<>">总监2001/总监&lt;&gt;</b><a class="del" title="删除"><i class="fa fa-times"></i></a></nobr></span>', 1412777631, 1413296642, 0, 1, 0, 0, 14, 14),
(37, '69', 'BUG', '表格测试BUG', 'BUG', '<p>\r\n	你在干什么那？\r\n</p>\r\n<p>\r\n	你在干什么那？\r\n</p>\r\n<p>\r\n	你在干什么那？\r\n</p>\r\n<p>\r\n	你在干什么那？\r\n</p>\r\n<p>\r\n	你在干什么那？\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '', '', '', 1413531766, 0, 0, 0, 0, 0, 14, 14);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_forum`
--

DROP TABLE IF EXISTS `aeropms_forum`;
CREATE TABLE `aeropms_forum` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `aeropms_forum`
--

INSERT INTO `aeropms_forum` (`id`, `folder`, `user_id`, `user_name`, `name`, `content`, `views`, `reply`, `order`, `add_file`, `last_post`, `create_time`, `update_time`, `is_del`, `is_top`) VALUES
(25, 53, 1, '管理员', 'sssssss', 'sssssssssssssssssssss', 9, 2, 0, '', 0, 1401541641, 0, 0, 0),
(26, 52, 1, '管理员', '123', '456789', 38, 1, 0, '', 0, 1405338400, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_forum_post`
--

DROP TABLE IF EXISTS `aeropms_forum_post`;
CREATE TABLE `aeropms_forum_post` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- 转存表中的数据 `aeropms_forum_post`
--

INSERT INTO `aeropms_forum_post` (`id`, `forum_id`, `name`, `content`, `user_id`, `user_name`, `add_file`, `is_del`, `create_time`, `update_time`) VALUES
(53, 25, '', '123211111111111', 1, '管理员', '', 0, 1401543445, 0),
(54, 25, '', '<img src="/Data/Files/forum/201406/53a66bcd99f10.jpg" alt="" />', 1, '管理员', '', 0, 1403415506, 0),
(55, 26, '', '<p>\r\n	111111111111\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 1, '管理员', '', 1, 1405338494, 0),
(56, 26, '', 'asdf adsf', 0, '', '', 0, 0, 0),
(57, 26, '', 'asdfasdf', 0, '', '', 0, 0, 0),
(58, 26, '465465465', '<p>\r\n	<img src="/Data/Files/forum/201407/53c3d6855b0ee.jpg" alt="" />11111111111\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	1111111\r\n</p>', 1, '管理员', '', 1, 1405341713, 1405343556);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_info`
--

DROP TABLE IF EXISTS `aeropms_info`;
CREATE TABLE `aeropms_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `folder` int(11) NOT NULL DEFAULT '0',
  `add_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `is_sign` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- 转存表中的数据 `aeropms_info`
--

INSERT INTO `aeropms_info` (`id`, `doc_no`, `name`, `content`, `folder`, `add_file`, `user_id`, `user_name`, `create_time`, `update_time`, `is_del`, `is_sign`) VALUES
(60, '2014-0001', '不不不不不不不不不不不不不不不不不不不', '&nbsp;不不不不不不不不不不不不不不不不', 66, '', 1, '管理员', 1417183873, 0, 0, 0),
(61, '2014-0002', '踩踩踩踩踩踩踩踩踩踩踩踩踩踩踩踩踩踩踩', '顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶', 66, '', 1, '管理员', 1417183950, 0, 0, 0),
(62, '2014-0003', '呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃', '呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃', 66, '', 1, '管理员', 1417183987, 0, 0, 0),
(63, '2014-0004', '烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦', '烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦', 66, '', 1, '管理员', 1417184078, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_info_sign`
--

DROP TABLE IF EXISTS `aeropms_info_sign`;
CREATE TABLE `aeropms_info_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info_id` int(11) NOT NULL DEFAULT '0',
  `folder` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `is_sign` tinyint(3) NOT NULL DEFAULT '0',
  `sign_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_mail`
--

DROP TABLE IF EXISTS `aeropms_mail`;
CREATE TABLE `aeropms_mail` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_mail_account`
--

DROP TABLE IF EXISTS `aeropms_mail_account`;
CREATE TABLE `aeropms_mail_account` (
  `id` mediumint(6) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mail_name` varchar(50) NOT NULL,
  `pop3svr` varchar(50) NOT NULL,
  `smtpsvr` varchar(50) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `mail_pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='aeropms_user_info';

--
-- 转存表中的数据 `aeropms_mail_account`
--

INSERT INTO `aeropms_mail_account` (`id`, `email`, `mail_name`, `pop3svr`, `smtpsvr`, `mail_id`, `mail_pwd`) VALUES
(1, '123', '小微OA', '123', '23', '23', '123');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_mail_organize`
--

DROP TABLE IF EXISTS `aeropms_mail_organize`;
CREATE TABLE `aeropms_mail_organize` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_message`
--

DROP TABLE IF EXISTS `aeropms_message`;
CREATE TABLE `aeropms_message` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- 转存表中的数据 `aeropms_message`
--

INSERT INTO `aeropms_message` (`id`, `content`, `add_file`, `sender_id`, `sender_name`, `receiver_id`, `receiver_name`, `create_time`, `owner_id`, `is_del`, `is_read`) VALUES
(52, '1111111111', '', 1, '管理员', 42, '总监2001', 1399885849, 1, 0, 1),
(53, '1111111111', '', 1, '管理员', 42, '总监2001', 1399885849, 42, 0, 1),
(54, '2222222222222', '', 42, '总监2001', 1, '管理员', 1399885894, 42, 0, 1),
(55, '2222222222222', '', 42, '总监2001', 1, '管理员', 1399885894, 1, 0, 1),
(56, '123333333333', '', 1, '管理员', 42, '总监2001', 1402727322, 1, 0, 1),
(57, '123333333333', '', 1, '管理员', 42, '总监2001', 1402727322, 42, 0, 0),
(58, 'XXXXXXXXXXXXXXXXXXXXXX', '', 1, '管理员', 0, '小微企业', 1402727412, 1, 0, 1),
(59, 'XXXXXXXXXXXXXXXXXXXXXX', '', 1, '管理员', 0, '小微企业', 1402727412, 0, 0, 0),
(60, 'sssssssssssssssssssssssssssssssssssss', '', 60, '员工5005', 0, '管理员', 1402727449, 60, 0, 1),
(61, 'sssssssssssssssssssssssssssssssssssss', '', 60, '员工5005', 0, '管理员', 1402727449, 0, 0, 0),
(62, 'sssssssssssssssssss', '', 1, '管理员', 67, '李白/副总', 1402727541, 1, 0, 0),
(63, 'sssssssssssssssssss', '', 1, '管理员', 67, '李白/副总', 1402727541, 67, 0, 0),
(64, 'XXXXXXXXXXXXXXXXXXXXX', '', 60, '员工5005', 41, '总监2002/总监', 1402727613, 60, 0, 0),
(65, 'XXXXXXXXXXXXXXXXXXXXX', '', 60, '员工5005', 41, '总监2002/总监', 1402727613, 41, 0, 0),
(66, 'XXXXXXXXXXXXXXXXXXXXX', '', 60, '员工5005', 48, '副总1003/副总', 1402727613, 60, 0, 0),
(67, 'XXXXXXXXXXXXXXXXXXXXX', '', 60, '员工5005', 48, '副总1003/副总', 1402727613, 48, 0, 0),
(68, 'XXXXXXXXXXXXXXXXXXXXX', '', 60, '员工5005', 1, '管理员/主管', 1402727613, 60, 0, 1),
(69, 'XXXXXXXXXXXXXXXXXXXXX', '', 60, '员工5005', 1, '管理员/主管', 1402727613, 1, 0, 1),
(70, 'asfasdfasdf', '', 60, '员工5005', 1, '管理员', 1402727969, 60, 0, 1),
(71, 'asfasdfasdf', '', 60, '员工5005', 1, '管理员', 1402727969, 1, 0, 1),
(72, 'xxxxxxxxxxxxxxxx', '', 1, '管理员', 60, '员工5005', 1402727992, 1, 0, 1),
(73, 'xxxxxxxxxxxxxxxx', '', 1, '管理员', 60, '员工5005', 1402727992, 60, 0, 1),
(74, 'sssssssssssss', '', 1, '管理员', 41, '总监2002', 1404046714, NULL, 0, 0),
(75, 'sssssssssssss', '', 1, '管理员', 41, '总监2002', 1404046714, NULL, 0, 0),
(76, 'asdfasdfasdf', '', 1, '管理员', 1, '管理员', 1415006873, 1, 0, 0),
(77, 'asdfasdfasdf', '', 1, '管理员', 1, '管理员', 1415006873, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_monthly_report`
--

DROP TABLE IF EXISTS `aeropms_monthly_report`;
CREATE TABLE `aeropms_monthly_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `content` text,
  `plan` text,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `is_submit` tinyint(3) DEFAULT NULL,
  `add_file` text,
  `work_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `aeropms_monthly_report`
--

INSERT INTO `aeropms_monthly_report` (`id`, `user_id`, `user_name`, `dept_id`, `dept_name`, `create_time`, `content`, `plan`, `is_del`, `is_submit`, `add_file`, `work_date`) VALUES
(43, 1, '管理员', 1, '小微企业', 1421056094, '444', '', 0, 0, '', '2015-01-12');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_monthly_report_comment`
--

DROP TABLE IF EXISTS `aeropms_monthly_report_comment`;
CREATE TABLE `aeropms_monthly_report_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_monthly_report_detail`
--

DROP TABLE IF EXISTS `aeropms_monthly_report_detail`;
CREATE TABLE `aeropms_monthly_report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `seq` tinyint(3) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `item` text,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `is_need_help` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=170 ;

--
-- 转存表中的数据 `aeropms_monthly_report_detail`
--

INSERT INTO `aeropms_monthly_report_detail` (`id`, `pid`, `seq`, `subject`, `item`, `start_time`, `end_time`, `type`, `status`, `priority`, `is_need_help`) VALUES
(164, 43, NULL, '11', '|||', '|||', '|||', 1, NULL, NULL, NULL),
(165, 43, NULL, '22', '|||', '|||', '|||', 1, NULL, NULL, NULL),
(166, 43, NULL, '33', '|||', '|||', '|||', 1, NULL, NULL, NULL),
(167, 43, NULL, '556666', '', '', '', 2, NULL, '', 0),
(168, 43, NULL, '66', '', '', '', 2, NULL, '', 0),
(169, 43, NULL, '66', '', '', '', 2, NULL, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_news`
--

DROP TABLE IF EXISTS `aeropms_news`;
CREATE TABLE `aeropms_news` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- 转存表中的数据 `aeropms_news`
--

INSERT INTO `aeropms_news` (`id`, `doc_no`, `name`, `content`, `folder`, `add_file`, `user_id`, `user_name`, `create_time`, `update_time`, `is_del`) VALUES
(85, '2014-0001', '产品名称', '<p>\r\n	111111111156523169321564856351\r\n</p>\r\n<p>\r\n	325156635132541586352158163541\r\n</p>\r\n<p>\r\n	3541854163558416548546541854654\r\n</p>\r\n<p>\r\n	3548565496854654854654854654853\r\n</p>\r\n<p>\r\n	65416584165863521654165841652146854136524685\r\n</p>\r\n<p>\r\n	5496854968549685496854851465\r\n</p>', 64, '', 1, '管理员', 1408888474, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_node`
--

DROP TABLE IF EXISTS `aeropms_node`;
CREATE TABLE `aeropms_node` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=908 ;

--
-- 转存表中的数据 `aeropms_node`
--

INSERT INTO `aeropms_node` (`id`, `name`, `url`, `icon`, `sub_folder`, `remark`, `sort`, `pid`, `is_del`) VALUES
(900, '项目', 'project/select', 'fa fa-bars bc-notice', '', '', '1', 0, 0),
(901, 'PBS', 'pbs/index', 'fa fa-cubes', '', '', '2', 0, 0),
(902, 'WBS', 'wbs/index', 'fa fa-sitemap', '', '', '3', 0, 0),
(903, '构型', '#', 'fa fa-code-fork', '', '', '4', 0, 0),
(904, '里程碑', '#', 'fa fa-calendar', '', '', '5', 0, 0),
(905, '统计', '#', 'fa fa-bar-chart-o', '', '', '6', 0, 0),
(906, '个人', '#', 'fa fa-user', '', '', '7', 0, 0),
(907, '管理', 'user/index', 'fa fa-cogs', '', '', '8', 0, 0),
(110, '组织信息管理', '', NULL, NULL, '', '1', 907, 0),
(112, '权限管理', '', NULL, NULL, '', '3', 907, 0),
(113, '系统设定', '', NULL, NULL, '', '4', 907, 0),
(114, '系统参数设置', 'system_config/index', '', '', '', '1', 113, 0),
(115, '组织图', 'dept/index', '', '', '', '1', 110, 0),
(116, '员工登记', 'user/index', NULL, '', '', '5', 110, 0),
(118, '权限组管理', 'role/index', '', '', '', '1', 112, 0),
(119, '权限设置', 'role/node', '', '', '', '2', 112, 0),
(120, '权限分配', 'role/user', '', '', '', '3', 112, 0),
(121, '菜单管理', 'node/index', '', '', '', '1', 113, 0),
(122, '职级', 'rank/index', NULL, '', '', '3', 110, 0),
(123, '职位', 'position/index', NULL, '', '', '2', 110, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_notice`
--

DROP TABLE IF EXISTS `aeropms_notice`;
CREATE TABLE `aeropms_notice` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- 转存表中的数据 `aeropms_notice`
--

INSERT INTO `aeropms_notice` (`id`, `notice_no`, `name`, `content`, `folder`, `add_file`, `user_id`, `user_name`, `create_time`, `update_time`, `is_del`) VALUES
(50, '2014-0001', '公司今年因引进了小微OA系统，提高了业务效率', '公司今年因引进了小微OA系统，提高了业务效率', 45, '', 67, '李白', 1401324394, 0, 0),
(51, '2014-0002', '小微OA上市倒计时小微OA上市倒计时', '小微OA上市倒计时小微OA上市倒计时', 45, '', 0, '', 1404047106, 0, 1),
(52, '2014-0003', '121111111111', '11111111111111111111', 45, '', 0, '', 1404221877, 0, 1),
(53, '2014-0004', '新建公告', '<h1 style="font-size:24px;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-weight:lighter;color:#2679B5;background-color:#FFFFFF;">\r\n	新建公告\r\n</h1>', 45, '', 1, '管理员', 1404222033, 0, 0),
(54, '2014-0005', '111111', '11111111111111111111111', 45, '', 1, '管理员', 1408968612, 0, 0),
(55, '2014-0006', '2222222', '22222222222222222222', 65, '', 1, '管理员', 1408973412, 0, 0),
(56, '2014-0007', '3333333', '33333333333333333333', 65, '', 1, '管理员', 1408974743, 0, 0),
(57, '2014-0008', '44444444444444', '4444444444444444444444444444', 65, '', 1, '管理员', 1408974860, 0, 0),
(58, '2014-0009', '555555', '55555555555555555555', 65, '', 1, '管理员', 1408974910, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_notice_sign`
--

DROP TABLE IF EXISTS `aeropms_notice_sign`;
CREATE TABLE `aeropms_notice_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `folder` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `is_sign` tinyint(3) NOT NULL DEFAULT '0',
  `sign_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- 转存表中的数据 `aeropms_notice_sign`
--

INSERT INTO `aeropms_notice_sign` (`id`, `notice_id`, `user_id`, `folder`, `user_name`, `is_sign`, `sign_time`) VALUES
(68, 50, 60, 45, '员工5005', 1, 1401324707),
(69, 50, 1, 45, '管理员', 1, 1403947325),
(70, 54, 1, 45, '管理员', 1, 1408971416);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_pbs_node`
--

DROP TABLE IF EXISTS `aeropms_pbs_node`;
CREATE TABLE `aeropms_pbs_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `node_level` int(11) NOT NULL,
  `inner_index` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL DEFAULT '暂无名称',
  `agent_id` int(11) DEFAULT '0',
  `wbs_id` int(11) DEFAULT '0',
  `creator` int(11) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=183 ;

--
-- 转存表中的数据 `aeropms_pbs_node`
--

INSERT INTO `aeropms_pbs_node` (`id`, `parent_id`, `node_level`, `inner_index`, `project_id`, `name`, `agent_id`, `wbs_id`, `creator`, `create_time`, `update_time`, `remark`) VALUES
(1, -1, 0, 1, 1, '轻型运动类飞机', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(2, 1, 1, 1, 1, '机体结构', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(3, 2, 2, 1, 1, '机身结构', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(4, 3, 3, 1, 1, '机身壳体', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(5, 3, 3, 2, 1, '地板', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(6, 3, 3, 3, 1, '框', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(7, 6, 4, 1, 1, '1框（短舱、前起）', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(8, 6, 4, 2, 1, '2框（机翼前梁、驾驶舱）', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(9, 6, 4, 3, 1, '3框（机翼后墙、驾驶舱、主起、斜撑）', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(10, 6, 4, 4, 1, '4框（尾段）', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(11, 6, 4, 5, 1, '5框（尾翼）', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(12, 3, 3, 4, 1, '垂尾梁', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(13, 3, 3, 5, 1, '窗', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(14, 3, 3, 6, 1, '机身与机翼的对接', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(15, 3, 3, 7, 1, '机身与平尾的对接', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(16, 3, 3, 8, 1, '防火墙', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(17, 2, 2, 2, 1, '机翼结构', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(18, 17, 3, 1, 1, '机翼壳体', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(19, 17, 3, 2, 1, '前梁', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(20, 17, 3, 3, 1, '后墙', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(21, 17, 3, 4, 1, '肋', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(22, 17, 3, 5, 1, '翼尖', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(23, 17, 3, 6, 1, '襟翼', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(24, 17, 3, 7, 1, '副翼', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(25, 17, 3, 8, 1, '机翼撑杆', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(26, 17, 3, 9, 1, '机翼部件对接', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(27, 2, 2, 3, 1, '尾翼', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(28, 27, 3, 1, 1, '水平安定面', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(29, 28, 4, 1, 1, '水平安定面壳体', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(30, 28, 4, 2, 1, '水平安定面肋', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(31, 28, 4, 3, 1, '水平安定面梁', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(32, 27, 3, 2, 1, '升降舵', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(33, 32, 4, 1, 1, '升降舵壳体', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(34, 32, 4, 2, 1, '升降舵填充泡沫', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(35, 27, 3, 3, 1, '方向舵', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(36, 35, 4, 1, 1, '方向舵壳体', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(37, 35, 4, 2, 1, '方向舵填充泡沫', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(38, 27, 3, 4, 1, '尾翼部件对接', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(39, 2, 2, 4, 1, '全机喷涂面漆', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(40, 1, 1, 2, 1, '起落架系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(41, 40, 2, 1, 1, '前起落架', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(42, 41, 3, 1, 1, '弹簧钢管', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(43, 41, 3, 2, 1, '轮叉', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(44, 41, 3, 3, 1, '轮轴', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(45, 41, 3, 4, 1, '标准件', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(46, 41, 3, 5, 1, '机轮', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(47, 41, 3, 6, 1, '轮胎', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(48, 40, 2, 2, 1, '主起落架', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(49, 48, 3, 1, 1, '弹簧钢板', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(50, 48, 3, 2, 1, '锁紧螺母', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(51, 48, 3, 3, 1, '法兰盘', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(52, 48, 3, 4, 1, '轮轴', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(53, 48, 3, 5, 1, '刹车连接装置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(54, 48, 3, 6, 1, '标准件', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(55, 48, 3, 7, 1, '机轮', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(56, 48, 3, 8, 1, '轮胎', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(57, 1, 1, 2, 1, '浮筒', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(58, 1, 1, 3, 1, '动力系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(59, 58, 2, 1, 1, '动力装置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(60, 59, 3, 1, 1, 'Rotax912ULS发动机标准配置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(61, 59, 3, 2, 1, '空气滤', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(62, 59, 3, 3, 1, '冷却液散热器', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(63, 59, 3, 4, 1, '排气系统（带消音器）', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(64, 59, 3, 5, 1, '溢流瓶', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(65, 59, 3, 6, 1, '滑油散热器', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(66, 59, 3, 7, 1, '滑油', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(67, 59, 3, 8, 1, '动力装置加工件', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(68, 58, 2, 2, 1, '发动机安装', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(69, 68, 3, 1, 1, '发动机安装支架', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(70, 58, 2, 3, 1, '螺旋桨装置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(71, 70, 3, 1, 1, '螺旋桨', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(72, 70, 3, 2, 1, '桨帽', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(73, 70, 3, 3, 1, '桨毂', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(74, 1, 1, 4, 1, '燃油系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(75, 74, 2, 1, 1, '燃油箱', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(76, 74, 2, 2, 1, '油滤', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(77, 74, 2, 3, 1, '燃油泵', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(78, 74, 2, 4, 1, '放油开关', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(79, 74, 2, 5, 1, '翻板单向阀', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(80, 74, 2, 6, 1, '燃油切断阀', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(81, 74, 2, 7, 1, '油量指示', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(82, 74, 2, 8, 1, '通气管路', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(83, 74, 2, 9, 1, '供油管', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(84, 74, 2, 10, 1, '放油管', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(85, 74, 2, 11, 1, '死油', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(86, 1, 1, 5, 1, '防灭火系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(87, 86, 2, 1, 1, '座舱灭火装置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(88, 87, 3, 1, 1, '灭火瓶', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(89, 87, 3, 2, 1, '安装架', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(90, 86, 2, 2, 1, '发动机舱防火铺层', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(91, 1, 1, 6, 1, '环控救生系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(92, 91, 2, 1, 1, '环控系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(93, 92, 3, 1, 1, '通风系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(94, 93, 4, 1, 1, '舱盖通风口', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(95, 93, 4, 2, 1, '舱内通风口', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(96, 93, 4, 3, 1, '机翼进气口', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(97, 92, 3, 2, 1, '座舱加温系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(98, 97, 4, 1, 1, '排气热交换器', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(99, 97, 4, 2, 1, '安装支架', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(100, 97, 4, 3, 1, '混合箱', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(101, 97, 4, 4, 1, '控制面板', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(102, 97, 4, 5, 1, '控制活门及钢索', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(103, 97, 4, 6, 1, '管路及喷嘴', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(104, 92, 3, 3, 1, '风挡除雾系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(105, 104, 4, 1, 1, '软管及安装支架', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(106, 104, 4, 2, 1, '除雾喷口', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(107, 104, 4, 3, 1, '控制活门及其附件', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(108, 91, 2, 2, 1, '设备与内饰', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(109, 108, 3, 1, 1, '座椅及约束系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(110, 109, 4, 1, 1, '整体式结构座椅', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(111, 109, 4, 2, 1, '约束系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(112, 109, 4, 3, 1, '座椅固定装置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(113, 108, 3, 2, 1, '座舱内部装饰', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(114, 113, 4, 1, 1, '装饰板', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(115, 113, 4, 2, 1, '储物袋', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(116, 113, 4, 3, 1, '地毯', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(117, 108, 3, 3, 1, '应急定位发射机', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(118, 108, 3, 4, 1, ' 救生衣', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(119, 1, 1, 7, 1, '航电系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(120, 119, 2, 1, 1, '综合航电系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(121, 120, 3, 1, 1, '综合处理模块（集成定位、姿态、航向、大气数据、VHF通信、空管、发动机参数采集）', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(122, 120, 3, 2, 1, '音频控制', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(123, 120, 3, 3, 1, 'VHF天线', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(124, 120, 3, 4, 1, 'GPS天线', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(125, 120, 3, 5, 1, '耳机话筒', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(126, 120, 3, 6, 1, '显示器', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(127, 119, 2, 2, 1, '空速管', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(128, 119, 2, 2, 1, '磁罗盘', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(129, 119, 2, 2, 1, '空速表', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(130, 119, 2, 2, 1, '高度表', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(131, 119, 2, 2, 1, '地平表', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(132, 1, 1, 8, 1, '飞行操纵系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(133, 132, 2, 1, 1, '主操纵系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(134, 133, 3, 1, 1, '副翼操纵', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(135, 134, 4, 1, 1, '限位装置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(136, 134, 4, 2, 1, '拉杆', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(137, 134, 4, 3, 1, '复位装置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(138, 134, 4, 4, 1, '摇臂', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(139, 133, 3, 2, 1, '方向舵操纵', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(140, 139, 4, 1, 1, '脚蹬', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(141, 139, 4, 2, 1, '摇臂', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(142, 139, 4, 3, 1, '限位装置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(143, 139, 4, 4, 1, '钢索', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(144, 133, 3, 3, 1, '升降舵操纵', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(145, 144, 4, 1, 1, '操纵杆', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(146, 144, 4, 2, 1, '扭力管', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(147, 144, 4, 3, 1, '摇臂', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(148, 144, 4, 4, 1, '限位装置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(149, 144, 4, 5, 1, '拉杆', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(150, 133, 3, 4, 1, '水舵操纵', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(151, 150, 4, 1, 1, '收放钢索', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(152, 150, 4, 2, 1, '操纵钢索', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(153, 150, 4, 3, 1, '弹簧', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(154, 150, 4, 4, 1, '滑轮', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(155, 150, 4, 5, 1, '平衡钢索', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(156, 132, 2, 2, 1, '辅助操纵系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(157, 156, 3, 1, 1, '襟翼操纵系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(158, 157, 4, 1, 1, '襟翼控制单元', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(159, 157, 4, 2, 1, '襟翼电机', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(160, 157, 4, 3, 1, '摇臂', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(161, 157, 4, 4, 1, '拉杆', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(162, 156, 3, 2, 1, '刹车操纵系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(163, 162, 4, 1, 1, '操纵手柄', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(164, 162, 4, 2, 1, '钢索', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(165, 162, 4, 3, 1, '刹车装置', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(166, 156, 3, 3, 1, '转弯操纵系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(167, 166, 4, 1, 1, '拉杆', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(168, 166, 4, 2, 1, '接头', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(169, 1, 1, 9, 1, '电气系统', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(170, 169, 2, 1, 1, '电源', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(171, 170, 3, 1, 1, '起动发电机', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(172, 170, 3, 2, 1, '整流稳压器', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(173, 170, 3, 3, 1, '蓄电池', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(174, 169, 2, 2, 1, '电气互联', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(175, 174, 3, 1, 1, '电线、电缆', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(176, 174, 3, 2, 1, '连接器', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(177, 174, 3, 3, 1, '配电盒（保险、断路器）', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(178, 174, 3, 4, 1, '开关', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(179, 174, 3, 5, 1, '继电器', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(180, 169, 2, 3, 1, '照明', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(181, 180, 3, 1, 1, '航行灯/防撞灯', 0, 0, NULL, 1469686469, 1469686469, '暂无描述'),
(182, 180, 3, 2, 1, '着陆灯', 0, 0, NULL, 1469686469, 1469686469, '暂无描述');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_position`
--

DROP TABLE IF EXISTS `aeropms_position`;
CREATE TABLE `aeropms_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` varchar(10) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `aeropms_position`
--

INSERT INTO `aeropms_position` (`id`, `position_no`, `name`, `sort`, `is_del`) VALUES
(1, '01', '项目经理', '1', 0),
(2, '02', '总师', '2', 0),
(3, '03', '副总师', '3', 0),
(4, '04', '主任设计师', '4', 0),
(5, '05', '设计师', '5', 0),
(6, '06', '助理设计师', '6', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_product`
--

DROP TABLE IF EXISTS `aeropms_product`;
CREATE TABLE `aeropms_product` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=233 ;

--
-- 转存表中的数据 `aeropms_product`
--

INSERT INTO `aeropms_product` (`id`, `product_no`, `name`, `content`, `type`, `add_file`, `user_id`, `user_name`, `create_time`, `update_time`, `is_del`, `folder`, `size`, `color`, `material`, `price`) VALUES
(218, '', 'SSSSSSSSS', 'SSSSSSSSSSSSSSSSSSSSSS', '', '', 1, '管理员', 1403186815, 0, 0, 59, NULL, NULL, NULL, NULL),
(219, '', '1', '1', '36', '', 1, '管理员', 1403340387, 0, 0, 59, NULL, NULL, NULL, NULL),
(220, '', '2', '2', '35', '', 1, '管理员', 1403340396, 0, 0, 59, NULL, NULL, NULL, NULL),
(221, '', '3', '3', '36', '', 1, '管理员', 1403340405, 0, 0, 59, NULL, NULL, NULL, NULL),
(222, '', '22', '22', '36', '', 1, '管理员', 1403340415, 0, 0, 59, NULL, NULL, NULL, NULL),
(223, '', 'd', 'ddd', '36', '', 1, '管理员', 1403340426, 0, 0, 59, NULL, NULL, NULL, NULL),
(224, '1111111111', 's', 'sss', '36', '', 1, '管理员', 1403340435, 1407570478, 0, 59, NULL, '', '', ''),
(225, 'bbbbbbbbbb', 'ss', 'sss', '36', '', 1, '管理员', 1403340447, 1407570500, 0, 59, NULL, '', '', ''),
(226, 'aaaaaaaaaaa', 'fasd', 'asdfasdf', '36', '', 1, '管理员', 1403340457, 1407570491, 0, 59, NULL, '', '', ''),
(227, 'QWEQWEQWE', '产品编号*：', '<span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：<span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span><span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*：</span></span>', '36', 'bf89a18b5955160b8f62cf38381212b4;eb00d6a11f085151d886fba7ad9eb402;c6c42d9492b9674aa69f08dc9d9ee199;', 1, '管理员', 1403348213, 1404047614, 0, 59, NULL, NULL, NULL, NULL),
(228, '123123123123', '产品编号*', '<span style="color:#393939;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:21px;background-color:#F5F5F5;">产品编号*</span>', '36', 'ffaae993a750f4aa45d198019f5ef66f;282c71ce150bab45683bb8b718ab370c;2b0241987e0d9c07d55c9ae102a7d8a5;1866cde2785e6eb34c6456efe3eee813;', 1, '管理员', 1403348296, 1404047591, 0, 59, NULL, NULL, NULL, NULL),
(229, 'ad', 'asd', 'asdfasdfASDFASDF', '36', '3ad0d8533a1f194c925737b7feca7355;523923d6b3876d22923c62710c74c136;', 1, '管理员', 1403350005, 1404047570, 0, 59, NULL, NULL, NULL, NULL),
(230, '产品编号', '产品名称', 'asdfasdfasdfasdf', '36', '5ffa4e733a6a8144a7e1897e0c37a809;f3456c53d8f0ce2b5c81a2a7b3c058a4;', 1, '管理员', 1403350672, 1404047547, 0, 59, NULL, NULL, NULL, NULL),
(231, '111111111111111', '11111111111111111', '111111111111111111111111111', '35', '', 1, '管理员', 1407569307, 1407569832, 0, 59, 'XXL,XL', '1111111', '11111111111111111', 'price'),
(232, '22222222222222', '22222222222222222222222222', '22222222222222222222', '35', '4b7a0a7899d63f4d178e2aca1919daca;f90ecfe0c2f227a0c3ed406d5a54b8f4;', 1, '管理员', 1407570156, 0, 0, 59, 'XXL,XL', '2222222', '222222222', '222222222222222222222222222');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_product_field`
--

DROP TABLE IF EXISTS `aeropms_product_field`;
CREATE TABLE `aeropms_product_field` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_product_field_data`
--

DROP TABLE IF EXISTS `aeropms_product_field_data`;
CREATE TABLE `aeropms_product_field_data` (
  `product_id` int(11) NOT NULL,
  `field_id` varchar(50) NOT NULL,
  `val` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aeropms_product_field_data`
--

INSERT INTO `aeropms_product_field_data` (`product_id`, `field_id`, `val`) VALUES
(230, '27', 'xxxxxxxxxxxxxxxx'),
(230, '26', 'yyyyyyyyyyyyyy'),
(230, '25', 'zzzzzzzzzzzzzzzzzz'),
(227, '27', 'X'),
(227, '26', 'X'),
(227, '25', 'X');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_product_type`
--

DROP TABLE IF EXISTS `aeropms_product_type`;
CREATE TABLE `aeropms_product_type` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `aeropms_product_type`
--

INSERT INTO `aeropms_product_type` (`id`, `name`, `short`, `create_time`, `update_time`, `sort`, `is_del`) VALUES
(35, '上衣', '上衣', 1403185924, 1403187883, 0, 0),
(36, '裤子', '裤子', 1403186100, 1403187896, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_project_list`
--

DROP TABLE IF EXISTS `aeropms_project_list`;
CREATE TABLE `aeropms_project_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `agent_id` int(11) DEFAULT '0',
  `creator` varchar(20) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `proj_type` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `aeropms_project_list`
--

INSERT INTO `aeropms_project_list` (`id`, `name`, `desc`, `agent_id`, `creator`, `add_file`, `proj_type`, `create_time`, `update_time`, `remark`) VALUES
(1, 'AG50', '轻型运动飞机', 0, 'AG50项目部', '无', 1, '2016-06-02 12:07:00', '2016-06-02 12:07:00', '无'),
(2, 'LH150', '轻型高速公务机', 0, '领航项目部', '无', 2, '2016-06-02 12:07:00', '2016-06-02 12:07:00', '无');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_push`
--

DROP TABLE IF EXISTS `aeropms_push`;
CREATE TABLE `aeropms_push` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `status` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_rank`
--

DROP TABLE IF EXISTS `aeropms_rank`;
CREATE TABLE `aeropms_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` varchar(10) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `aeropms_rank`
--

INSERT INTO `aeropms_rank` (`id`, `rank_no`, `name`, `sort`, `is_del`) VALUES
(1, 'RG40', '部长', '1', 0),
(2, 'RG30', '科长', '2', 0),
(3, 'RG20', '主管', '3', 0),
(4, 'RG10', '助理', '4', 0),
(5, 'RG00', '总经理', '0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_recent`
--

DROP TABLE IF EXISTS `aeropms_recent`;
CREATE TABLE `aeropms_recent` (
  `user_id` int(11) NOT NULL,
  `recent` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aeropms_recent`
--

INSERT INTO `aeropms_recent` (`user_id`, `recent`) VALUES
(1, '管理员|smeoa@qq.com;');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_relation`
--

DROP TABLE IF EXISTS `aeropms_relation`;
CREATE TABLE `aeropms_relation` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `relation_id` int(11) NOT NULL DEFAULT '0',
  `relation` varchar(20) NOT NULL DEFAULT '',
  KEY `row_id` (`row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aeropms_relation`
--

INSERT INTO `aeropms_relation` (`row_id`, `relation_id`, `relation`) VALUES
(17, 31, 'Course|Video'),
(16, 29, 'Course|Video'),
(16, 28, 'Course|Video'),
(14, 29, 'Course|Video'),
(14, 28, 'Course|Video'),
(14, 27, 'Course|Video'),
(14, 4, 'Course|Position'),
(14, 3, 'Course|Position'),
(14, 2, 'Course|Position'),
(14, 10, 'Course|Dept'),
(14, 6, 'Course|Dept'),
(14, 5, 'Course|Dept'),
(13, 29, 'Course|Video'),
(13, 28, 'Course|Video'),
(13, 27, 'Course|Video'),
(13, 4, 'Course|Position'),
(13, 3, 'Course|Position'),
(13, 2, 'Course|Position'),
(13, 10, 'Course|Dept'),
(13, 6, 'Course|Dept'),
(13, 5, 'Course|Dept'),
(17, 30, 'Course|Video'),
(17, 28, 'Course|Video'),
(24, 30, 'Course|Video'),
(24, 31, 'Course|Video'),
(22, 32, 'Course|Video'),
(23, 31, 'Course|Video'),
(21, 32, 'Course|Video'),
(21, 31, 'Course|Video'),
(21, 30, 'Course|Video'),
(22, 31, 'Course|Video');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_resource_unit`
--

DROP TABLE IF EXISTS `aeropms_resource_unit`;
CREATE TABLE `aeropms_resource_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `save_path` varchar(512) NOT NULL,
  `file_name` varchar(512) NOT NULL,
  `save_name` varchar(512) NOT NULL,
  `size` int(11) NOT NULL DEFAULT '0',
  `extension` varchar(32) DEFAULT NULL,
  `hash` varchar(1024) NOT NULL,
  `creator_id` int(11) NOT NULL DEFAULT '1',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `aeropms_resource_unit`
--

INSERT INTO `aeropms_resource_unit` (`id`, `project_id`, `type`, `save_path`, `file_name`, `save_name`, `size`, `extension`, `hash`, `creator_id`, `create_time`, `update_time`, `remark`) VALUES
(1, 1, 1, './Public/Uploads/', 'date10-日历控件.rar', 'date10-日历控件.rar', 15433, 'rar', '76b62e4262f34f49e76505ed019dae9b', 1, 1466994978, 1466994978, '-资源'),
(2, 1, 1, './Public/Uploads/', 'font-awesome-4.6.3.zip', 'font-awesome-4.6.3.zip', 601201, 'zip', 'a2058024a022e661b3d1c51de85f6def', 1, 1466994978, 1466994978, '-资源'),
(3, 1, 1, './Public/Uploads/', 'date10-日历控件.rar', 'date10-日历控件.rar', 15433, 'rar', '76b62e4262f34f49e76505ed019dae9b', 1, 1467018948, 1467018948, '-资源'),
(4, 1, 1, './Public/Uploads/', 'font-awesome-4.6.3.zip', 'font-awesome-4.6.3.zip', 601201, 'zip', 'a2058024a022e661b3d1c51de85f6def', 1, 1467018948, 1467018948, '-资源');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_role`
--

DROP TABLE IF EXISTS `aeropms_role`;
CREATE TABLE `aeropms_role` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `aeropms_role`
--

INSERT INTO `aeropms_role` (`id`, `name`, `pid`, `remark`, `sort`, `create_time`, `update_time`, `is_del`) VALUES
(1, '系统管理员', 0, '', '1', 1208784792, 1368507168, 0),
(2, '基本业务权限', 0, '', '2', 1215496283, 1368507164, 0),
(7, '高级业务权限', 0, '', '2', 1254325787, 1401288337, 0),
(10, '日志查看', NULL, '', '', 1421221316, 1421221316, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_role_duty`
--

DROP TABLE IF EXISTS `aeropms_role_duty`;
CREATE TABLE `aeropms_role_duty` (
  `role_id` smallint(6) unsigned NOT NULL,
  `duty_id` smallint(6) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aeropms_role_duty`
--

INSERT INTO `aeropms_role_duty` (`role_id`, `duty_id`) VALUES
(1, 15),
(7, 14),
(1, 14),
(7, 15),
(2, 14),
(2, 15),
(10, 18);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_role_node`
--

DROP TABLE IF EXISTS `aeropms_role_node`;
CREATE TABLE `aeropms_role_node` (
  `role_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `write` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aeropms_role_node`
--

INSERT INTO `aeropms_role_node` (`role_id`, `node_id`, `admin`, `read`, `write`) VALUES
(1, 119, 1, 1, 1),
(1, 118, 1, 1, 1),
(1, 116, 1, 1, 1),
(1, 115, 1, 1, 1),
(1, 114, 1, 1, 1),
(1, 113, 1, 1, 1),
(1, 112, 1, 1, 1),
(1, 110, 1, 1, 1),
(2, 900, 0, 1, 1),
(2, 901, 0, 1, 1),
(2, 902, 0, 1, 1),
(2, 903, 0, 1, 1),
(2, 904, 0, 1, 1),
(2, 905, 0, 1, 1),
(2, 906, 0, 1, 1),
(2, 907, 0, 1, 1),
(1, 120, 1, 1, 1),
(1, 121, 1, 1, 1),
(1, 122, 1, 1, 1),
(1, 123, 1, 1, 1),
(1, 900, 1, 1, 1),
(1, 901, 1, 1, 1),
(1, 902, 1, 1, 1),
(1, 903, 1, 1, 1),
(1, 904, 1, 1, 1),
(1, 905, 1, 1, 1),
(1, 906, 1, 1, 1),
(1, 907, 1, 1, 1),
(7, 901, 1, 1, 1),
(7, 902, 1, 1, 1),
(7, 906, NULL, NULL, NULL),
(7, 900, NULL, NULL, NULL),
(7, 903, NULL, NULL, NULL),
(7, 904, NULL, NULL, NULL),
(7, 905, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_role_user`
--

DROP TABLE IF EXISTS `aeropms_role_user`;
CREATE TABLE `aeropms_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aeropms_role_user`
--

INSERT INTO `aeropms_role_user` (`role_id`, `user_id`) VALUES
(2, '1'),
(1, '1'),
(2, '41'),
(7, '41'),
(2, '42'),
(2, '43'),
(2, '44'),
(2, '48'),
(2, '49'),
(2, '50'),
(7, '69'),
(2, '69'),
(2, '70'),
(2, '71'),
(2, '72'),
(2, '73'),
(2, '74'),
(2, '75'),
(7, '1');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_schedule`
--

DROP TABLE IF EXISTS `aeropms_schedule`;
CREATE TABLE `aeropms_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `content` text,
  `location` varchar(50) DEFAULT '',
  `priority` int(11) DEFAULT NULL,
  `actor` varchar(200) DEFAULT '',
  `user_id` int(11) DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `add_file` varchar(200) DEFAULT '',
  `is_del` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- 转存表中的数据 `aeropms_schedule`
--

INSERT INTO `aeropms_schedule` (`id`, `name`, `content`, `location`, `priority`, `actor`, `user_id`, `start_time`, `end_time`, `add_file`, `is_del`) VALUES
(74, 'aaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaa', '', 3, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(75, 'aaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaa', '', 3, '', 1, '2014-12-27 22:33:57', '2014-12-04 03:20:00', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_slide`
--

DROP TABLE IF EXISTS `aeropms_slide`;
CREATE TABLE `aeropms_slide` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '文档编号',
  `link` varchar(200) NOT NULL DEFAULT '' COMMENT '名称',
  `color` varchar(10) NOT NULL DEFAULT '' COMMENT '内容',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- 转存表中的数据 `aeropms_slide`
--

INSERT INTO `aeropms_slide` (`id`, `name`, `link`, `color`, `sort`, `add_file`, `user_id`, `user_name`, `create_time`, `update_time`, `is_del`, `content`) VALUES
(86, '222222222222222222222', '222222222222222222222222222', '2222222222', 2, '9edcec5a421d35682aff66c8ee6cda5e;3da7ad68086327419e216ce1250f08f6;', 0, '', 0, 0, 0, '222222222222222222222222222');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_supplier`
--

DROP TABLE IF EXISTS `aeropms_supplier`;
CREATE TABLE `aeropms_supplier` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `aeropms_supplier`
--

INSERT INTO `aeropms_supplier` (`id`, `name`, `letter`, `short`, `account`, `tax_no`, `payment`, `contact`, `office_tel`, `mobile_tel`, `email`, `im`, `address`, `user_id`, `is_del`, `remark`, `fax`, `user_name`) VALUES
(21, '11111111', '', '111111111111', '1111111111', '11111111111', '1111111111111111', '1111111', NULL, '1111111111111', '11111111111', '', '111111111', 1, 1, '11111111111111', '11111111111', NULL),
(22, '1', '', '2', '3', '4', '5', '7', '1231231', '10', '9', '12', '6', 1, 1, '13', '11', NULL),
(23, '234234', '', '112', '312', '3123', '3123', '12', NULL, '312', '31', '12', '3123', 1, 0, '3123', '231', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_system_config`
--

DROP TABLE IF EXISTS `aeropms_system_config`;
CREATE TABLE `aeropms_system_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `sort` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `aeropms_system_config`
--

INSERT INTO `aeropms_system_config` (`id`, `code`, `name`, `val`, `is_del`, `sort`) VALUES
(1, 'SYSTEM_NAME', '系统名称', '航空项目管理系统', 1, ''),
(7, 'UPLOAD_FILE_TYPE', '上传文件类型', 'doc,docx,xls,xlsx,ppt,pptx,pdf,gif,png,tif,zip,rar,jpg,jpeg,txt', 0, NULL),
(8, 'IS_VERIFY_CODE', '验证码', '0', 0, NULL),
(9, 'XMK_LEVEL', '项目级别1', '1', 0, '1'),
(10, 'XMK_LEVEL', '项目级别2', '2', 0, '2'),
(11, 'XMK_LEVEL', '项目级别3', '3', 0, '3'),
(12, 'XMK_STATUS', '项目状态1', '1', 0, '1'),
(13, 'XMK_STATUS', '2', '2', 0, '2'),
(14, 'XMK_STATUS', '3', '3', 0, '3'),
(15, 'FINANCE_INCOME_TYPE', '办公费', '办公费', 0, '1'),
(16, 'FINANCE_INCOME_TYPE', '通讯费', '通讯费', 0, '2'),
(17, 'FINANCE_PAYMENT_TYPE', '办公费', '办公费', 0, ''),
(18, 'FINANCE_PAYMENT_TYPE', '通讯费', '通讯费', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_system_folder`
--

DROP TABLE IF EXISTS `aeropms_system_folder`;
CREATE TABLE `aeropms_system_folder` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- 转存表中的数据 `aeropms_system_folder`
--

INSERT INTO `aeropms_system_folder` (`id`, `pid`, `folder`, `name`, `admin`, `write`, `read`, `sort`, `is_del`, `remark`) VALUES
(44, 0, 'XmkFolder', '1111111111111', '微澜企业|dept_1;', '', '', '', 0, ''),
(45, 0, 'NoticeFolder', '公司公告2', '总经办|dept_5;总经理1001/总经理|1001;小微企业|dept_1;', '', '小微企业|dept_1;', '', 0, ''),
(46, 0, 'NoticeFolder', '培训通知', '人事科|dept_23;', '', '小微企业|dept_1;', '', 0, ''),
(47, 0, 'NoticeFolder', '人事通知', '人事科|dept_23;', '', '小微企业|dept_1;', '', 0, ''),
(48, 0, 'DocFolder', '公司规定', '总经办|dept_5;小微企业|dept_1;', '', '小微企业|dept_1;', '', 0, ''),
(49, 0, 'DocFolder', '合同管理', '总经办|dept_5;', '', '小微企业|dept_1;', '', 0, ''),
(50, 0, 'DocFolder', '财务报表', '财务部|dept_8;', '', '小微企业|dept_1;总监2002/总监|2002;总监2001/总监|2001;总监2003/总监|2003;副总1003/副总|1003;test1/总经理|test1;李白/副总|1002;', '', 0, ''),
(51, 0, 'DocFolder', '常用表格', '总经办|dept_5;', '', '小微企业|dept_1;', '', 0, ''),
(52, 0, 'ForumFolder', '公司动态', '总经办|dept_5;小微企业|dept_1;', '小微企业|dept_1;', '', '', 0, ''),
(53, 0, 'ForumFolder', '兴趣小组', '总经办|dept_5;', '小微企业|dept_1;', '', '', 0, ''),
(54, 0, 'ProductFolder', '2014年', '', '', '', '1', 0, ''),
(55, 0, 'ProductFolder', '2015年', '', '', '', '2', 0, ''),
(56, 54, 'ProductFolder', '2014春装', '', '', '', '', 0, ''),
(57, 54, 'ProductFolder', '2014夏装', '', '', '', '', 0, ''),
(58, 54, 'ProductFolder', '2014秋装', '', '', '', '', 0, ''),
(59, 54, 'ProductFolder', '2014冬装', '小微企业|dept_1;', '', '', '', 0, ''),
(60, 55, 'ProductFolder', '2015春装', '', '', '', '', 0, ''),
(61, 55, 'ProductFolder', '2015夏装', '', '', '', '', 0, ''),
(62, 55, 'ProductFolder', '2015秋装', '', '', '', '', 0, ''),
(63, 55, 'ProductFolder', '2015冬装', '', '', '', '', 0, ''),
(64, 0, 'NewsFolder', '111111111111', '管理员/主管|admin;', '', '', '', 0, ''),
(65, 0, 'NoticeFolder', '公司公告1', '总经理1001/总经理|1001;小微企业|dept_1;', '', '小微企业|dept_1;', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_system_tag`
--

DROP TABLE IF EXISTS `aeropms_system_tag`;
CREATE TABLE `aeropms_system_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- 转存表中的数据 `aeropms_system_tag`
--

INSERT INTO `aeropms_system_tag` (`id`, `pid`, `module`, `name`, `sort`, `remark`) VALUES
(11, 0, 'Video', '所属科室', '11', ''),
(12, 11, 'Video', '外科系统', '12', ''),
(13, 11, 'Video', '内科系统', '13', ''),
(14, 12, 'Video', '普通外科', '14', ''),
(15, 12, 'Video', '肛肠科', '15', ''),
(16, 11, 'Video', '专科中心', '16', ''),
(17, 11, 'Video', '医技辅助', '17', ''),
(18, 12, 'Video', '肝胆外科', '18', ''),
(19, 12, 'Video', '器官移植', '19', ''),
(20, 12, 'Video', '心血管外科', '20', ''),
(21, 12, 'Video', '显微外科', '21', ''),
(22, 12, 'Video', '胸外科', '22', ''),
(23, 12, 'Video', '泌尿生殖', '23', ''),
(24, 12, 'Video', '神经外科', '24', ''),
(25, 12, 'Video', '烧伤外科', '25', ''),
(26, 13, 'Video', '普通内科', '26', ''),
(27, 13, 'Video', '心血管内科', '27', ''),
(28, 13, 'Video', '呼吸内科', '28', ''),
(29, 13, 'Video', '消化内科', '29', ''),
(30, 13, 'Video', '肾内科', '30', ''),
(31, 13, 'Video', '血液科', '31', ''),
(32, 13, 'Video', '神经内科', '32', ''),
(33, 13, 'Video', '心理、精神科', '33', ''),
(34, 13, 'Video', '内分泌科', '34', ''),
(35, 13, 'Video', '感染传染', '35', ''),
(36, 16, 'Video', '妇产科', '36', ''),
(37, 16, 'Video', '儿科', '37', ''),
(38, 16, 'Video', '口腔科', '38', ''),
(39, 16, 'Video', '骨科', '39', ''),
(40, 16, 'Video', '皮肤病与性病科', '40', ''),
(41, 16, 'Video', '眼科', '41', ''),
(42, 16, 'Video', '耳鼻咽喉科', '42', ''),
(43, 16, 'Video', '肿瘤及核医学', '43', ''),
(44, 16, 'Video', '中医及中西医结合', '44', ''),
(45, 16, 'Video', '麻醉科', '45', ''),
(46, 16, 'Video', '美容整形', '46', ''),
(47, 17, 'Video', '门、急诊，ICU', '47', ''),
(48, 17, 'Video', '医学影像', '48', ''),
(49, 17, 'Video', '护理', '49', ''),
(50, 17, 'Video', '检验科', '50', ''),
(51, 17, 'Video', '康复理疗科', '51', ''),
(52, 17, 'Video', '药剂科', '52', ''),
(53, 17, 'Video', '信息科', '53', ''),
(54, 17, 'Video', '医院管理', '54', ''),
(55, 17, 'Video', '基础教学', '55', ''),
(56, 17, 'Video', '其他', '56', ''),
(57, 0, 'Customer', '123', '', ''),
(58, 0, 'Supplier', '123', '', ''),
(59, 0, 'Doc', '123123', '123123', ''),
(60, 0, 'Doc', '123123', '', ''),
(61, 0, 'Doc', 'abc', '', ''),
(62, 0, 'Customer', '2345', '', ''),
(63, 0, 'Customer', 'qqqqqq', '', ''),
(64, 0, 'Customer', '22222', '', ''),
(65, 0, 'Customer', '22222', '', ''),
(66, 0, 'Flow', '人事', '', ''),
(67, 0, 'Flow', 'IT', '', ''),
(68, 0, 'Flow', '公告', '', ''),
(69, 0, 'FlowType', '人事', '1', ''),
(70, 0, 'FlowType', '行政', '2', ''),
(71, 0, 'FlowType', '采购', '3', ''),
(72, 0, 'FlowType', '出差', '4', ''),
(74, 75, 'ProductType', '红色', '', ''),
(75, 0, 'ProductType', '颜色', '', ''),
(76, 75, 'ProductType', '蓝色', '', ''),
(77, 0, 'ProductType', '面料', '', ''),
(78, 77, 'ProductType', 'A', '', ''),
(79, 77, 'ProductType', 'B', '', ''),
(80, 0, 'FlowType', '车辆管理', '5', '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_system_tag_data`
--

DROP TABLE IF EXISTS `aeropms_system_tag_data`;
CREATE TABLE `aeropms_system_tag_data` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL DEFAULT '',
  KEY `row_id` (`row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aeropms_system_tag_data`
--

INSERT INTO `aeropms_system_tag_data` (`row_id`, `tag_id`, `module`) VALUES
(18, 58, 'Supplier'),
(29, 14, 'Video'),
(18, 57, 'Customer'),
(29, 46, 'Video'),
(30, 46, 'Video'),
(30, 47, 'Video'),
(30, 56, 'Video'),
(64, 59, 'Doc'),
(64, 60, 'Doc'),
(64, 61, 'Doc'),
(65, 61, 'Doc'),
(33, 14, 'Video'),
(18, 62, 'Customer'),
(17, 66, 'Flow'),
(18, 66, 'Flow'),
(19, 66, 'Flow'),
(20, 66, 'Flow'),
(21, 66, 'Flow'),
(22, 66, 'Flow'),
(23, 66, 'Flow'),
(17, 66, 'Flow'),
(18, 66, 'Flow'),
(19, 66, 'Flow'),
(20, 66, 'Flow'),
(21, 66, 'Flow'),
(22, 66, 'Flow'),
(23, 66, 'Flow'),
(17, 70, 'FlowType'),
(23, 72, 'FlowType'),
(22, 72, 'FlowType'),
(21, 72, 'FlowType'),
(20, 72, 'FlowType'),
(19, 71, 'FlowType'),
(18, 71, 'FlowType'),
(24, 70, 'FlowType');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_task`
--

DROP TABLE IF EXISTS `aeropms_task`;
CREATE TABLE `aeropms_task` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `task_no` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `executor` varchar(200) DEFAULT NULL,
  `add_file` varchar(255) DEFAULT NULL,
  `expected_time` datetime DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT '0',
  `user_name` varchar(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `update_user_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=195 ;

--
-- 转存表中的数据 `aeropms_task`
--

INSERT INTO `aeropms_task` (`id`, `task_no`, `pid`, `name`, `content`, `executor`, `add_file`, `expected_time`, `user_id`, `user_name`, `dept_id`, `dept_name`, `create_time`, `update_time`, `update_user_id`, `update_user_name`) VALUES
(162, '2014-0001', NULL, '产品名称', 'ASDF&nbsp;', '小微企业|dept_1;总监2001/总', '', '1899-11-29 02:10:00', 1, '管理员', NULL, NULL, 1418833392, NULL, NULL, NULL),
(163, '2014-0002', NULL, '任务测试1', '任务测试1 没有指定执行人', '小微企业|dept_1;总监2001/总监|2001;', '', '2014-12-04 11:20:00', 1, '管理员', NULL, NULL, 1418873819, NULL, NULL, NULL),
(164, '2014-0003', NULL, '1111111111111111111', '士大夫士大夫', NULL, '', '2014-12-03 08:50:00', 1, '管理员', NULL, NULL, 1419231558, NULL, NULL, NULL),
(165, '2014-0004', NULL, 'aaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaa', '管理员|1', '', '2014-12-04 03:20:00', 1, '管理员', NULL, NULL, 1419690337, NULL, NULL, NULL),
(166, '2014-0005', NULL, '22222222', 'xxxxxxxxxxxxxxx', '总监2001|42;', '', '2014-12-11 08:10:00', 1, '管理员', NULL, NULL, 1419696708, NULL, NULL, NULL),
(167, '2014-0006', NULL, 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', 'SSSSSSSSSSSSSSSSSSS', '总监2001|42;', '', '2014-12-18 02:10:00', 1, '管理员', NULL, NULL, 1419696774, NULL, NULL, NULL),
(168, '2014-0007', NULL, 'sssssssssss ', 'xxxxxxxxxxxxxxxx', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419696879, NULL, NULL, NULL),
(169, '2014-0008', NULL, 'sssssssssss ', 'xxxxxxxxxxxxxxxx', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419696894, NULL, NULL, NULL),
(170, '2014-0009', NULL, 'sssssssssss ', 'xxxxxxxxxxxxxxxx', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419696899, NULL, NULL, NULL),
(171, '2014-0010', NULL, 'sssssssssss ', 'xxxxxxxxxxxxxxxx', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419696905, NULL, NULL, NULL),
(172, '2014-0011', NULL, 'sssssssssss ', 'xxxxxxxxxxxxxxxx', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419696939, NULL, NULL, NULL),
(173, '2014-0012', NULL, 'sssssssssss ', 'xxxxxxxxxxxxxxxx', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419696947, NULL, NULL, NULL),
(174, '2014-0013', NULL, 'XXXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXXXXXXXXXX', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419696974, NULL, NULL, NULL),
(175, '2014-0014', NULL, 'XXXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXXXXXXXXXX', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697035, NULL, NULL, NULL),
(176, '2014-0015', NULL, 'XXXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXXXXXXXXXX', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697374, NULL, NULL, NULL),
(177, '2014-0016', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697423, NULL, NULL, NULL),
(178, '2014-0017', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697454, NULL, NULL, NULL),
(179, '2014-0018', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697469, NULL, NULL, NULL),
(180, '2014-0019', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697474, NULL, NULL, NULL),
(181, '2014-0020', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697476, NULL, NULL, NULL),
(182, '2014-0021', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697495, NULL, NULL, NULL),
(183, '2014-0022', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697511, NULL, NULL, NULL),
(184, '2014-0023', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697550, NULL, NULL, NULL),
(185, '2014-0024', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697622, NULL, NULL, NULL),
(186, '2014-0025', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697636, NULL, NULL, NULL),
(187, '2014-0026', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697706, NULL, NULL, NULL),
(188, '2014-0027', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697825, NULL, NULL, NULL),
(189, '2014-0028', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697860, NULL, NULL, NULL),
(190, '2014-0029', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697925, NULL, NULL, NULL),
(191, '2014-0030', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697963, NULL, NULL, NULL),
(192, '2014-0031', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419697997, NULL, NULL, NULL),
(193, '2014-0032', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419698055, NULL, NULL, NULL),
(194, '2014-0033', NULL, 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', '总监2001|42;', '', '0000-00-00 00:00:00', 1, '管理员', NULL, NULL, 1419698107, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_task_detail`
--

DROP TABLE IF EXISTS `aeropms_task_detail`;
CREATE TABLE `aeropms_task_detail` (
  `taskid` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `appoint` int(4) unsigned NOT NULL DEFAULT '0',
  `finishstatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plantime` int(10) unsigned NOT NULL DEFAULT '0',
  `realitytime` int(10) unsigned NOT NULL DEFAULT '0',
  `bestresult` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`taskid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_task_log`
--

DROP TABLE IF EXISTS `aeropms_task_log`;
CREATE TABLE `aeropms_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `assigner` int(11) DEFAULT NULL COMMENT '分配任务的人',
  `executor` varchar(20) DEFAULT NULL,
  `executor_name` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `plan_time` datetime DEFAULT NULL,
  `transactor_name` varchar(20) DEFAULT NULL,
  `transactor` int(11) DEFAULT NULL COMMENT '由谁处理的',
  `finish_rate` tinyint(3) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `feed_back` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=188 ;

--
-- 转存表中的数据 `aeropms_task_log`
--

INSERT INTO `aeropms_task_log` (`id`, `task_id`, `type`, `assigner`, `executor`, `executor_name`, `status`, `plan_time`, `transactor_name`, `transactor`, `finish_rate`, `finish_time`, `feed_back`) VALUES
(162, 162, 1, 1, '1', '小微企业', 2, '2014-11-28 04:30:00', '管理员', 1, 100, '2014-12-22 22:28:30', 'CCCCCCCCCCCCC'),
(163, 162, 2, 1, '42', '总监2001', 0, NULL, NULL, NULL, NULL, '1901-01-06 09:20:00', NULL),
(164, 163, 1, 1, '1', '小微企业', 4, '0000-00-00 00:00:00', '管理员', 1, 0, '1901-01-06 09:20:00', '啊手动阀手动阀'),
(165, 163, 2, 1, '42', '总监2001', 2, '1901-01-06 09:20:00', '总监2001', 42, 0, '1901-01-06 09:20:00', '<p>\r\n	feed_back<span>feed_back</span><span>feed_back</span><span>feed_back</span><span>feed</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span>_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span><span>_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span><span>_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>'),
(166, 163, 2, 1, '44', '总经理1001', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 162, 2, 1, '44', '总经理1001', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 164, NULL, NULL, '1', '管理员', 1, NULL, '管理员', 1, NULL, NULL, NULL),
(182, 165, NULL, NULL, '1', '管理员', 1, NULL, '管理员', 1, NULL, NULL, NULL),
(183, 166, 1, 1, '42', '总监2001', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 167, 1, 1, '42', '总监2001', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 173, 1, 1, '42', '总监2001', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 176, 1, 1, '42', '总监2001', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 194, 1, 1, '42', '总监2001', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_todo`
--

DROP TABLE IF EXISTS `aeropms_todo`;
CREATE TABLE `aeropms_todo` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `aeropms_todo`
--

INSERT INTO `aeropms_todo` (`id`, `name`, `content`, `user_id`, `end_date`, `priority`, `add_file`, `status`, `sort`) VALUES
(11, '邮件整理时显示名称错误', '', 1, '2014-05-08', 2, '', 3, 3),
(12, '日历今天样式颜色', '日历今天样式颜色', 1, '2014-05-08', 3, '', 2, 1),
(13, '12312', '123123', 2, '3123123', 3, '', 1, 1),
(14, '12312', '123123123123123123', 2, '3123123', 3, '', 0, NULL),
(15, '待办事项确认', '待办事项确认', 2, '', 3, '', 0, NULL),
(16, '新建待办事项', '123', 2, '', 3, '', 2, 3),
(17, '新建待办事项1', '新建待办事项', 2, '2013-09-19', 3, '', 1, 2),
(18, '新建待办事项', '123', 2, '2013-09-19', 3, '', 1, NULL),
(21, '事项优先级低', '', 1, '2014-05-08', 5, '', 2, 1),
(22, '查看服务器是否正常', '查看服务器是否正常', 1, '2014-05-10', 3, '', 3, 2),
(23, '22222222', 'ssssssss', 1, '2014-08-20', 3, '8d1f3251d40bc4132d9bd4646eec4ee7;', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_udf_expense`
--

DROP TABLE IF EXISTS `aeropms_udf_expense`;
CREATE TABLE `aeropms_udf_expense` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=158 ;

--
-- 转存表中的数据 `aeropms_udf_expense`
--

INSERT INTO `aeropms_udf_expense` (`id`, `emp_no`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`, `M`, `N`) VALUES
(152, '1003', '201310', '张三', '业招待费', '1500', '500', '5', '', '', '', '', '', '', ''),
(153, '1003', '201310', '张三', '通行费', '', '', '', '', '', '', '', '', '', ''),
(154, '1003', '201310', '张三', '交通费', '', '', '', '', '', '', '', '', '', ''),
(155, '1003', '201310', '李四', '业招待费', '1500', '500', '5', '', '', '', '', '', '', ''),
(157, '1003', '201310', '李四', '交通费', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_udf_field`
--

DROP TABLE IF EXISTS `aeropms_udf_field`;
CREATE TABLE `aeropms_udf_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `row_type` int(11) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `msg` varchar(50) DEFAULT NULL,
  `control_type` varchar(255) DEFAULT NULL,
  `control_layout` varchar(255) DEFAULT NULL,
  `control_data` varchar(255) DEFAULT NULL,
  `validate` varchar(20) DEFAULT NULL,
  `controller` varchar(20) DEFAULT NULL,
  `is_del` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- 转存表中的数据 `aeropms_udf_field`
--

INSERT INTO `aeropms_udf_field` (`id`, `name`, `row_type`, `sort`, `msg`, `control_type`, `control_layout`, `control_data`, `validate`, `controller`, `is_del`) VALUES
(56, 'A11', 1, '', '', 'text', '3', '', '', 'Flow', 0),
(57, 'A2', 1, '', '', 'select', '4', '', '', 'Flow', 0),
(58, '呵 3 ', 1, '', '', 'select', '1', '', '', 'Flow', 0),
(59, 'A1', 33, '', '', 'text', '1', '', '', 'Flow', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_udf_field_data`
--

DROP TABLE IF EXISTS `aeropms_udf_field_data`;
CREATE TABLE `aeropms_udf_field_data` (
  `row_id` int(11) NOT NULL,
  `field_id` varchar(50) NOT NULL,
  `val` varchar(50) DEFAULT NULL,
  `controller` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aeropms_udf_field_data`
--

INSERT INTO `aeropms_udf_field_data` (`row_id`, `field_id`, `val`, `controller`) VALUES
(0, '59', 'A1', 'Flow'),
(0, '59', 'A2', 'Flow'),
(0, '59', 'A3', 'Flow'),
(242, '59', 'A4', 'Flow'),
(243, '59', 'a6', 'Flow');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_udf_salary`
--

DROP TABLE IF EXISTS `aeropms_udf_salary`;
CREATE TABLE `aeropms_udf_salary` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=139 ;

--
-- 转存表中的数据 `aeropms_udf_salary`
--

INSERT INTO `aeropms_udf_salary` (`id`, `emp_no`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`, `M`, `N`) VALUES
(120, '1001', '201310', '张三', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(121, '1002', '201310', '李四', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(122, '1003', '201310', '张三', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(123, '1004', '201310', '李四', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(124, '1005', '201310', '张三', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(125, '1006', '201310', '李四', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(126, '1007', '201310', '张三', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(127, '1008', '201310', '李四', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(128, '1009', '201310', '张三', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(129, '1010', '201310', '李四', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(130, '1011', '201310', '张三', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(131, '1012', '201310', '李四', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(132, '1013', '201310', '张三', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(133, '1014', '201310', '李四', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(134, '1015', '201310', '张三', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(135, '1016', '201310', '李四', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(136, '1001', '201210', '张三', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(137, '1002', '201210', '李四', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL),
(138, '1003', '201210', '张三', '1000', '500', NULL, '1500', '150', '100', '5', '50', '100', '2200', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_user`
--

DROP TABLE IF EXISTS `aeropms_user`;
CREATE TABLE `aeropms_user` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- 转存表中的数据 `aeropms_user`
--

INSERT INTO `aeropms_user` (`id`, `emp_no`, `name`, `letter`, `password`, `dept_id`, `position_id`, `rank_id`, `sex`, `birthday`, `last_login_ip`, `login_count`, `pic`, `email`, `duty`, `office_tel`, `mobile_tel`, `create_time`, `update_time`, `is_del`, `openid`, `westatus`) VALUES
(1, 'admin', '管理员', 'GLY', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 2, 'male', '2013-09-18', '0.0.0.0', 2840, 'emp_pic/1.jpeg', '123', '1231254123123', '5086-2222-2222', '12123123', 1222907803, 1404047349, 0, '1231512315123', 1),
(50, 'sunfan', '孙帆', 'SF', '1a8fb1e5b7113812532a5cad777d9ebc', 27, 5, 2, 'male', '0000-00-00', '127.0.0.1', NULL, '', '', '孙帆', '123', '12312312', 1391694170, 1471486864, 0, NULL, 1),
(69, 'zengyoubing', '曾友兵', 'ZYB', '21232f297a57a5a743894a0e4a801fc3', 27, 1, 1, 'male', '0000-00-00', '127.0.0.1', NULL, '', '', '', '', '', 1470392902, 0, 0, NULL, 0),
(70, 'longfei', '龙飞', 'LF', '21232f297a57a5a743894a0e4a801fc3', 27, 3, 3, 'male', '0000-00-00', NULL, NULL, '', '', '', '', '', 1470392995, 0, 0, NULL, 0),
(71, 'anbinghui', '安兵辉', 'ABH', '70f9babd4cb5db673c6078178194c1b6', 27, 4, 3, 'male', '0000-00-00', NULL, NULL, '', '', '', '', '', 1470393079, 0, 0, NULL, 0),
(72, 'yanguangfu', '闫光富', 'GF', '21232f297a57a5a743894a0e4a801fc3', 27, 3, 2, 'male', '0000-00-00', NULL, NULL, '', '', '', '', '', 1470393145, 0, 0, NULL, 0),
(73, 'gutianchen', '谷天琛', 'GT', '21232f297a57a5a743894a0e4a801fc3', 27, 5, 3, 'male', '0000-00-00', NULL, NULL, '', '', '', '', '', 1470445388, 0, 0, NULL, 0),
(74, 'tangjie', '唐洁', 'TJ', '21232f297a57a5a743894a0e4a801fc3', 27, 5, 3, 'male', '0000-00-00', NULL, NULL, '', '', '', '', '', 1470445562, 0, 0, NULL, 0),
(75, 'zhangchao', '张超', 'ZC', '21232f297a57a5a743894a0e4a801fc3', 27, 4, 3, 'male', '0000-00-00', NULL, NULL, '', '', '', '', '', 1470473717, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_user_config`
--

DROP TABLE IF EXISTS `aeropms_user_config`;
CREATE TABLE `aeropms_user_config` (
  `id` int(11) NOT NULL DEFAULT '0',
  `home_sort` varchar(255) DEFAULT NULL,
  `list_rows` int(11) DEFAULT '20',
  `readed_notice` text,
  `push_web` varchar(255) DEFAULT NULL,
  `push_wechat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aeropms_user_config`
--

INSERT INTO `aeropms_user_config` (`id`, `home_sort`, `list_rows`, `readed_notice`, `push_web`, `push_wechat`) VALUES
(1, 'undefined,14,11,12,22,|undefined,24,21,23,13,', 12, '54,55,56,57,58', NULL, NULL),
(49, NULL, 20, '54,55,56', NULL, NULL),
(50, NULL, 20, '54,55,56', NULL, NULL),
(51, NULL, 20, '54,55,56', NULL, NULL),
(52, NULL, 20, '54,55,56', NULL, NULL),
(53, NULL, 20, '54,55,56', NULL, NULL),
(54, NULL, 20, '54,55,56', NULL, NULL),
(55, NULL, 20, '54,55,56', NULL, NULL),
(56, NULL, 20, '54,55,56', NULL, NULL),
(57, NULL, 20, '54,55,56', NULL, NULL),
(58, NULL, 20, '54,55,56', NULL, NULL),
(59, NULL, 20, '54,55,56', NULL, NULL),
(60, 'undefined,22,13,23,|undefined,12,21,11,', 20, '54,55,56', NULL, NULL),
(61, NULL, 20, '54,55,56', NULL, NULL),
(62, NULL, 20, '54,55,56', NULL, NULL),
(63, NULL, 20, '54,55,56', NULL, NULL),
(64, NULL, 20, '54,55,56', NULL, NULL),
(65, NULL, 20, '54,55,56', NULL, NULL),
(66, '11,12,13,|21,22,23,', 20, '54,55,56', NULL, NULL),
(67, NULL, 20, '54,55,56', NULL, NULL),
(68, NULL, 20, '54,55,56', NULL, NULL),
(69, NULL, 20, NULL, NULL, NULL),
(70, NULL, 20, NULL, NULL, NULL),
(71, NULL, 20, NULL, NULL, NULL),
(72, NULL, 20, NULL, NULL, NULL),
(73, NULL, 20, NULL, NULL, NULL),
(74, NULL, 20, NULL, NULL, NULL),
(75, NULL, 20, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_user_folder`
--

DROP TABLE IF EXISTS `aeropms_user_folder`;
CREATE TABLE `aeropms_user_folder` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `aeropms_user_folder`
--

INSERT INTO `aeropms_user_folder` (`id`, `pid`, `folder`, `user_id`, `name`, `sort`, `is_del`, `remark`) VALUES
(31, 0, 'MailFolder', 1, '自定义文件夹1', '', 0, ''),
(32, 0, 'MailFolder', 1, '自定义文件夹1', '', 0, ''),
(33, 0, 'MailFolder', 1, '自定义文件夹2', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_user_info_base`
--

DROP TABLE IF EXISTS `aeropms_user_info_base`;
CREATE TABLE `aeropms_user_info_base` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_user_info_tab1`
--

DROP TABLE IF EXISTS `aeropms_user_info_tab1`;
CREATE TABLE `aeropms_user_info_tab1` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_user_info_tab2`
--

DROP TABLE IF EXISTS `aeropms_user_info_tab2`;
CREATE TABLE `aeropms_user_info_tab2` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_user_info_tab3`
--

DROP TABLE IF EXISTS `aeropms_user_info_tab3`;
CREATE TABLE `aeropms_user_info_tab3` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_user_tag`
--

DROP TABLE IF EXISTS `aeropms_user_tag`;
CREATE TABLE `aeropms_user_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `aeropms_user_tag`
--

INSERT INTO `aeropms_user_tag` (`id`, `pid`, `module`, `user_id`, `name`, `sort`, `remark`) VALUES
(21, 0, 'Contact', 1, '123', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_user_tag_data`
--

DROP TABLE IF EXISTS `aeropms_user_tag_data`;
CREATE TABLE `aeropms_user_tag_data` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL DEFAULT '',
  KEY `row_id` (`row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_vip`
--

DROP TABLE IF EXISTS `aeropms_vip`;
CREATE TABLE `aeropms_vip` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `aeropms_vip`
--

INSERT INTO `aeropms_vip` (`id`, `name`, `english_name`, `office_tel`, `mobile_tel`, `wechat_no`, `address`, `remark`, `is_del`, `vip_type`, `vip_no`, `area`, `active_shop`, `active_date`, `birthday`, `sex`, `paper_type`, `paper_no`, `dressing_style`, `wechat_vip_no`, `top_size`, `bottom_size`, `like_color`, `like_shop`, `like_brand`) VALUES
(1, '123123', '', '', '', '', '', '', 1, '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
(2, '222222', '', '', '', '', '', '', 1, '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', '7', '', NULL, NULL, NULL, NULL, NULL),
(3, '1231231', '', '', '', '', '', '', 1, '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
(4, '11111111111111111111', '', '', '', '', '', '', 1, '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', '2,3', '', NULL, NULL, NULL, NULL, NULL),
(5, '55555555555555', '', '', '', '', '', '', 1, '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', '1,2', '', NULL, NULL, NULL, NULL, NULL),
(6, '77777777', '', '', '', '', '', '', 1, '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', '1,8,9,9,10', '', NULL, NULL, NULL, NULL, NULL),
(7, '王大立', 'eNGLISH', '+86-654654-546545', '134-1253-4565', '11', '10', '', 0, '白金卡', 'VIP卡号', '地区', '开卡店铺', '0000-11-30', '0000-00-00', 'female', '身份证', '7', '休闲,性感', '微信VIP', 'XL', 'XL', '蓝色系,豹纹系', '', ''),
(8, '11111111111111', '', '', '2222222', '', '', '', 0, '金卡', '', '22222222222', '222222', '0000-00-00', '0000-00-00', 'male', '', '', NULL, '', NULL, NULL, NULL, '', ''),
(9, '333333333', '', '', '333333', '', '', '', 0, '金卡', '', '3', '33333333333333333', '0000-00-00', '0000-00-00', 'male', '', '', NULL, '', NULL, NULL, NULL, '', ''),
(10, '444444444444444', '', '', '4444444444444444', '', '', '', 0, '金卡', '4444444444', '444444444444444444', '444444', '0000-00-00', '0000-00-00', 'male', '', '', NULL, '44444', NULL, NULL, NULL, '', ''),
(11, '5555555555', '', '', '55555555555555555', '', '', '', 1, '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '', '55555555', NULL, '', NULL, NULL, NULL, '', ''),
(12, '66666666', '', '', '6666666666666666', '', '', '', 1, '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '', '6666666666', NULL, '', NULL, NULL, NULL, '', ''),
(13, '777777', '', '', '777777777777777', '', '', '', 1, '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '', '77777777777777777777', NULL, '', NULL, NULL, NULL, '', ''),
(14, '88888888', '', '', '88888888888888', '', '', '', 1, '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', NULL, '', NULL, NULL, NULL, '', ''),
(15, '9999999', '', '', '999999999999999', '', '', '', 1, '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', NULL, '', NULL, NULL, NULL, '', ''),
(16, '1212121212', '', '', '1212121212', '', '', '', 0, '金卡', '', '北京', '百盛', '0000-00-00', '0000-00-00', 'male', '身份证', '', NULL, '', NULL, NULL, NULL, '', ''),
(17, '1313131313131313', '', '', '13131313131131313', '', '', '', 1, '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '身份证', '123', NULL, '', NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_vip_sales`
--

DROP TABLE IF EXISTS `aeropms_vip_sales`;
CREATE TABLE `aeropms_vip_sales` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `aeropms_vip_sales`
--

INSERT INTO `aeropms_vip_sales` (`id`, `vip_id`, `product`, `sales_date`, `size`, `qty`, `discount`, `amount`, `point`) VALUES
(1, 16, '123123', '1900-12-31', 'XL', '2', '3', '400', '100'),
(2, 16, '1', '2014-05-05', 'XXL', '4', '4', '654789', '-20'),
(3, 14, 'Djfjcjdhdhh', '2014-04-29', 'L,XS', '18', '12', '33', '33'),
(4, 16, 'LA41pl55', '2014-04-30', 'L', '1', '', '1000', ''),
(5, 7, 'LA41pl55', '2014-05-19', 'XL', '2', '', '2000', '2000'),
(6, 7, '', '0000-00-00', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_wbs_depart`
--

DROP TABLE IF EXISTS `aeropms_wbs_depart`;
CREATE TABLE `aeropms_wbs_depart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specific_proj_id` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(512) NOT NULL,
  `desc` varchar(512) NOT NULL DEFAULT '暂无描述',
  `attach_id` int(11) DEFAULT '0',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `aeropms_wbs_depart`
--

INSERT INTO `aeropms_wbs_depart` (`id`, `specific_proj_id`, `name`, `desc`, `attach_id`, `remark`) VALUES
(1, -1, '产品设计', '暂无描述', 0, NULL),
(2, -1, '生产制造', '暂无描述', 0, NULL),
(3, -1, '试验', '暂无描述', 0, NULL),
(4, -1, '试飞', '暂无描述', 0, NULL),
(5, -1, '适航取证', '暂无描述', 0, NULL),
(6, -1, '项目管理', '暂无描述', 0, NULL),
(10, -1, '通用', '暂无描述', 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_wbs_node`
--

DROP TABLE IF EXISTS `aeropms_wbs_node`;
CREATE TABLE `aeropms_wbs_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `node_level` int(11) DEFAULT '-1',
  `inner_index` int(11) DEFAULT '-1',
  `parent_id` int(11) NOT NULL,
  `pbs_id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `type` int(10) DEFAULT '1',
  `depart` int(11) NOT NULL,
  `engineering_phase` int(10) DEFAULT '1',
  `agent_id` int(11) DEFAULT '0',
  `creator_id` int(11) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `remark` text,
  `attach_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `aeropms_wbs_node`
--

INSERT INTO `aeropms_wbs_node` (`id`, `project_id`, `node_level`, `inner_index`, `parent_id`, `pbs_id`, `name`, `type`, `depart`, `engineering_phase`, `agent_id`, `creator_id`, `create_time`, `update_time`, `remark`, `attach_id`) VALUES
(1, 1, 0, 0, -1, -1, 'AG50 - WBS', 1, 0, 1, 0, 1, 1470411171, 1470411171, 'AG50项目WBS根节点', NULL),
(2, 1, -1, -1, 1, 0, '飞机工程', 1, 10, 10, 0, 1, 1470411199, 1470411199, '暂无描述', NULL),
(3, 1, -1, -1, 2, 0, '飞机总体设计', 2, 1, 10, 0, 1, 1470412497, 1470412497, '暂无描述', NULL),
(4, 1, -1, -1, 3, 0, '总体设计', 2, 1, 10, 0, 1, 1470412577, 1470412577, '暂无描述', NULL),
(5, 1, -1, -1, 4, 0, '需求分析与指标论证', 2, 1, 1, 0, 1, 1470445647, 1470445647, '需求分析与指标论证.', NULL),
(6, 1, -1, -1, 4, 0, '参数外形', 2, 1, 1, 0, 1, 1470445740, 1470445740, '参数外形', NULL),
(7, 1, -1, -1, 4, 0, '布置', 2, 1, 3, 0, 1, 1470445973, 1470445973, '暂无描述', NULL),
(8, 1, -1, -1, 2, 0, '气动力设计', 2, 1, 3, 0, 1, 1470473625, 1470473625, '暂无描述', NULL),
(9, 1, -1, -1, 8, 0, '气动特性', 2, 1, 3, 0, 1, 1470473769, 1470473769, '暂无描述', NULL),
(10, 1, -1, -1, 4, 0, '重量', 2, 1, 10, 0, 1, 1470473864, 1470473864, '暂无描述', NULL),
(21, 1, -1, -1, 10, 0, '重量, 重心计算', 3, 1, 1, 0, 1, 1471502039, 1471819946, '暂无描述', -1);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_wbs_node_input`
--

DROP TABLE IF EXISTS `aeropms_wbs_node_input`;
CREATE TABLE `aeropms_wbs_node_input` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `input_node_id` int(11) NOT NULL,
  `input_node_item_id` int(11) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `aeropms_wbs_node_input`
--

INSERT INTO `aeropms_wbs_node_input` (`id`, `project_id`, `node_id`, `input_node_id`, `input_node_item_id`, `create_time`, `update_time`) VALUES
(6, 1, 21, 6, NULL, 1471502039, 1471502039);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_wbs_node_output`
--

DROP TABLE IF EXISTS `aeropms_wbs_node_output`;
CREATE TABLE `aeropms_wbs_node_output` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `item_name` varchar(512) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  `assignee_id` int(11) DEFAULT '-1',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `remark` text,
  `attach_id` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `aeropms_wbs_node_output`
--

INSERT INTO `aeropms_wbs_node_output` (`id`, `project_id`, `node_id`, `item_name`, `type`, `status`, `assignee_id`, `create_time`, `update_time`, `remark`, `attach_id`) VALUES
(6, 1, 21, '计算报告', 2, 1, -1, 1471819946, 1471819946, NULL, -1);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_wbs_node_schedule`
--

DROP TABLE IF EXISTS `aeropms_wbs_node_schedule`;
CREATE TABLE `aeropms_wbs_node_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '5',
  `charger_id` int(11) NOT NULL DEFAULT '1',
  `planning_begin_time` int(11) NOT NULL,
  `planning_end_time` int(11) NOT NULL,
  `planning_working_day` int(11) NOT NULL,
  `planning_working_hour` int(11) NOT NULL,
  `actual_begin_time` int(11) DEFAULT NULL,
  `actual_end_time` int(11) DEFAULT NULL,
  `actual_working_day` int(11) DEFAULT NULL,
  `actual_working_hour` int(11) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `aeropms_wbs_node_schedule`
--

INSERT INTO `aeropms_wbs_node_schedule` (`id`, `node_id`, `priority`, `charger_id`, `planning_begin_time`, `planning_end_time`, `planning_working_day`, `planning_working_hour`, `actual_begin_time`, `actual_end_time`, `actual_working_day`, `actual_working_hour`, `create_time`, `update_time`) VALUES
(7, 21, 5, 72, 1471449600, 1471622400, 2, 8, NULL, NULL, NULL, NULL, 1471502039, 1471502039);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_wbs_schedule`
--

DROP TABLE IF EXISTS `aeropms_wbs_schedule`;
CREATE TABLE `aeropms_wbs_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '5',
  `charger_id` int(11) NOT NULL DEFAULT '1',
  `planning_begin_time` int(11) NOT NULL,
  `planning_end_time` int(11) NOT NULL,
  `planning_working_day` int(11) NOT NULL,
  `planning_working_hour` int(11) NOT NULL,
  `actual_begin_time` int(11) DEFAULT NULL,
  `actual_end_time` int(11) DEFAULT NULL,
  `actual_working_day` int(11) DEFAULT NULL,
  `actual_working_hour` int(11) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_wbs_type`
--

DROP TABLE IF EXISTS `aeropms_wbs_type`;
CREATE TABLE `aeropms_wbs_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specific_proj_id` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(512) NOT NULL,
  `desc` varchar(512) NOT NULL DEFAULT '暂无描述',
  `attach_id` int(11) DEFAULT '0',
  `is_hideable` int(2) DEFAULT '1',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `aeropms_wbs_type`
--

INSERT INTO `aeropms_wbs_type` (`id`, `specific_proj_id`, `name`, `desc`, `attach_id`, `is_hideable`, `remark`) VALUES
(1, -1, '工作单元', '顶层WBS类型, 可包含任意数量的类型为工作包或工作任务的子单元', 0, 0, NULL),
(2, -1, '工作包', '仅次于顶层工作单元的WBS类型, 可包含任意数量的类型为工作任务的子单元', 0, 0, NULL),
(3, -1, '工作任务', '不可再细分的WBS类型, 描述某一具体任务', 0, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_weekly_report`
--

DROP TABLE IF EXISTS `aeropms_weekly_report`;
CREATE TABLE `aeropms_weekly_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `content` text,
  `plan` text,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `is_submit` tinyint(3) DEFAULT NULL,
  `add_file` text,
  `score_total` tinyint(3) DEFAULT NULL,
  `work_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `aeropms_weekly_report`
--

INSERT INTO `aeropms_weekly_report` (`id`, `user_id`, `user_name`, `dept_id`, `dept_name`, `create_time`, `content`, `plan`, `is_del`, `is_submit`, `add_file`, `score_total`, `work_date`) VALUES
(43, 1, '管理员', 1, '小微企业', 1421213978, '44', '', 0, 0, '', 0, '2014-12'),
(44, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_weekly_report_comment`
--

DROP TABLE IF EXISTS `aeropms_weekly_report_comment`;
CREATE TABLE `aeropms_weekly_report_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- 转存表中的数据 `aeropms_weekly_report_comment`
--

INSERT INTO `aeropms_weekly_report_comment` (`id`, `doc_id`, `name`, `content`, `user_id`, `user_name`, `add_file`, `is_del`, `create_time`, `update_time`, `pid`, `reply`) VALUES
(66, 43, '', 'ddddddddddddddd', 1, '管理员', '', 1, 1421220460, 1421220479, NULL, 'bbbbbbbbbbbbbb'),
(67, 43, '', 'AAAAAAAAAAAA', 1, '管理员', '', 0, 1421220490, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_weekly_report_detail`
--

DROP TABLE IF EXISTS `aeropms_weekly_report_detail`;
CREATE TABLE `aeropms_weekly_report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `seq` tinyint(3) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `item` text,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `is_need_help` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=191 ;

--
-- 转存表中的数据 `aeropms_weekly_report_detail`
--

INSERT INTO `aeropms_weekly_report_detail` (`id`, `pid`, `seq`, `subject`, `item`, `start_time`, `end_time`, `type`, `status`, `priority`, `is_need_help`) VALUES
(182, 43, NULL, '11', '|||', '|||', '|||', 1, NULL, NULL, NULL),
(183, 43, NULL, '22', '|||', '|||', '|||', 1, NULL, NULL, NULL),
(184, 43, NULL, '33', '|||', '|||', '|||', 1, NULL, NULL, NULL),
(185, 43, NULL, '55', '', '', '', 2, NULL, '', 0),
(186, 43, NULL, '66', '', '', '', 2, NULL, '', 0),
(187, 43, NULL, '77', '', '', '', 2, NULL, '', 0),
(188, 43, NULL, '88', '', '', '', 2, NULL, '', 0),
(189, 43, NULL, '99', '', '', '', 2, NULL, '', 0),
(190, 43, NULL, '00', '', '', '', 2, NULL, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_work_log`
--

DROP TABLE IF EXISTS `aeropms_work_log`;
CREATE TABLE `aeropms_work_log` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `aeropms_work_log`
--

INSERT INTO `aeropms_work_log` (`id`, `user_id`, `user_name`, `dept_id`, `dept_name`, `create_time`, `content`, `plan`, `start_date`, `end_date`, `is_del`, `add_file`) VALUES
(13, 42, '总监2001', 8, '财务部', 1401288260, '小微，加油', '小微，加油', '2014-05-28', '2014-05-28', 0, NULL),
(14, 60, '员工5005', 25, '会计科', 1401288467, '小微，加油', '小微，加油', '2014-05-28', '2014-05-28', 0, NULL),
(15, 1, '管理员', 1, '小微企业', 1406248659, '1', '1111111111111111', '2014-07-10', '2014-07-05', 0, 'a871f007f8ba395c27fc065c19c62454;');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_xmk`
--

DROP TABLE IF EXISTS `aeropms_xmk`;
CREATE TABLE `aeropms_xmk` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `aeropms_xmk`
--

INSERT INTO `aeropms_xmk` (`id`, `xm_no`, `name`, `content`, `folder`, `add_file`, `user_id`, `user_name`, `create_time`, `update_time`, `is_del`, `type`, `progress`, `start_date`, `status`, `level`, `end_date`) VALUES
(6, '2014-0001', '阿斯蒂芬', '阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬', 44, '', 1, '管理员', 1401331513, 1401760236, 0, NULL, NULL, '2014-05-06', 1, '1', '2014-05-05'),
(7, '2014-0002', 'sssssssssss', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 44, '50b0175704ba66576275d4c65b592af1;5725d6e09f73ee774fa68b80023677aa;1b0cacecdd098dec6a231058a9a39d78;', 1, '管理员', 1401550024, 1401630240, 0, NULL, NULL, '2014-05-31', 2, '1', '2014-05-21');

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_xmk_report`
--

DROP TABLE IF EXISTS `aeropms_xmk_report`;
CREATE TABLE `aeropms_xmk_report` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- 转存表中的数据 `aeropms_xmk_report`
--

INSERT INTO `aeropms_xmk_report` (`id`, `xid`, `name`, `content`, `user_id`, `user_name`, `add_file`, `is_del`, `create_time`, `update_time`, `pid`, `reply`) VALUES
(53, 6, '', 'sssssssssss', 1, '管理员', '', 0, 1401544598, 1401634439, NULL, 'QQQQQQQQQQQQQQQQ'),
(54, 6, '', 'qqqqqqqqqqqqqq', 1, '管理员', 'b2479f420535a859504c301285dc28f2', 0, 1401544598, 0, NULL, NULL),
(55, 6, '', 'aaaaaaaaaaaaaaaaa', 1, '管理员', '', 0, 1401544598, 0, NULL, NULL),
(56, 6, '', 'QQQQQQQQQQQQQQQQQQQ', 1, '管理员', '', 0, 1401544694, 1401632192, NULL, NULL),
(57, 6, '', '&lt;div class="form-group"&gt;<br />\r\n&lt;div class="col-sm-12"&gt;<br />\r\n&lt;div class="content_wrap"&gt;<br />\r\n&lt;iframe class="content_iframe"&gt;&lt;/iframe&gt;<br />\r\n&lt;textarea class="content" name="content" style="width:100%;display:none"&gt;{$vo_report.content}&lt;/textarea&gt;<br />\r\n&lt;/div&gt; <br />\r\n&lt;/div&gt; <br />\r\n&lt;/div&gt;<br />', 1, '管理员', 'b2479f420535a859504c301285dc28f2', 1, 1401547161, 0, NULL, NULL),
(58, 6, '', 'XXXXXXXXXXXXXXXXXXXXXXX', 1, '管理员', '', 0, 1401547253, 1401634062, NULL, NULL),
(59, 6, '', '&lt;div class="form-group"&gt;<br />\r\n&lt;div class="col-sm-12"&gt;<br />\r\n&lt;div class="content_wrap"&gt;<br />\r\n&lt;iframe class="content_iframe"&gt;&lt;/iframe&gt;<br />\r\n&lt;textarea class="content" name="content" style="width:100%;display:none"&gt;{$vo_report.content}&lt;/textarea&gt;<br />\r\n&lt;/div&gt; <br />\r\n&lt;/div&gt; <br />\r\n&lt;/div&gt;<br />', 1, '管理员', 'b2479f420535a859504c301285dc28f2', 1, 1401547287, 0, NULL, NULL),
(60, 6, '', '<div class="page-wrapper" style="box-sizing:border-box;">\r\n	<div class="panel" style="box-sizing:border-box;margin-bottom:20px;background-color:#FFFFFF;border:1px solid #DDDDDD;border-top-left-radius:4px;border-top-right-radius:4px;border-bottom-right-radius:4px;border-bottom-left-radius:4px;-webkit-box-shadow:rgba(0, 0, 0, 0.0470588) 0px 1px 1px;box-shadow:rgba(0, 0, 0, 0.0470588) 0px 1px 1px;">\r\n		<table class="table table-hover table-striped" style="box-sizing:border-box;border-spacing:0px;max-width:100%;background-color:transparent;width:1138px;margin-bottom:0px;">\r\n			<thead style="box-sizing:border-box;">\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<th colspan="2" style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;">\r\n						标题\r\n					</th>\r\n					<th style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;width:120px;">\r\n						作者\r\n					</th>\r\n					<th style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;width:100px;">\r\n						发表于\r\n					</th>\r\n					<th style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;width:50px;">\r\n						阅读\r\n					</th>\r\n					<th style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;width:50px;">\r\n						回帖\r\n					</th>\r\n					<th style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:bottom;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:transparent;width:200px;">\r\n						最后回帖\r\n					</th>\r\n				</tr>\r\n			</thead>\r\n			<tbody style="box-sizing:border-box;">\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:10px;">\r\n						<span class="text-success" style="box-sizing:border-box;color:#229F24;"><span class="icon-comment-alt icon-large" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span></span>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;">\r\n						<a href="http://www.smeoa.com/thread/60.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">流程提示</a>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:120px;">\r\n						<strong style="box-sizing:border-box;">linkai</strong>\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:100px;">\r\n						05-29 14:01\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;">\r\n						12\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;">\r\n						0\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:150px;">\r\n					</td>\r\n				</tr>\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:10px;">\r\n						<span class="text-muted" style="box-sizing:border-box;color:#808080;"><span class="icon-comment-alt icon-large" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span></span>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);">\r\n						<a href="http://www.smeoa.com/thread/56.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">编辑器兼容问题</a>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:120px;">\r\n						<strong style="box-sizing:border-box;">linkai</strong>\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:100px;">\r\n						05-21 16:07\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;">\r\n						39\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;">\r\n						0\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:150px;">\r\n					</td>\r\n				</tr>\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:10px;">\r\n						<span class="text-muted" style="box-sizing:border-box;color:#808080;"><span class="icon-comment-alt icon-large" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span></span>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;">\r\n						<a href="http://www.smeoa.com/thread/53.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">权限组设置，新建权限组无法保存</a>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:120px;">\r\n						<strong style="box-sizing:border-box;">林大福</strong>\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:100px;">\r\n						05-19 11:36\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;">\r\n						58\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;">\r\n						1\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:150px;">\r\n						05-21 09:09&nbsp;<a href="http://www.smeoa.com/thread-locate-53-73.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">admin</a>\r\n					</td>\r\n				</tr>\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:10px;">\r\n						<span class="text-muted" style="box-sizing:border-box;color:#808080;"><span class="icon-comment-alt icon-large" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span></span>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);">\r\n						<a href="http://www.smeoa.com/thread/50.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">关于小微流程的讨论！</a>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:120px;">\r\n						<strong style="box-sizing:border-box;">赵旭</strong>\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:100px;">\r\n						05-10 11:03\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;">\r\n						134\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;">\r\n						3\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:150px;">\r\n						05-14 16:55&nbsp;<a href="http://www.smeoa.com/thread-locate-50-70.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">鹿其鹿粦</a>\r\n					</td>\r\n				</tr>\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:10px;">\r\n						<span class="text-muted" style="box-sizing:border-box;color:#808080;"><span class="icon-comment-alt icon-large" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span></span>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;">\r\n						<a href="http://www.smeoa.com/thread/51.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">demo数据清除</a>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:120px;">\r\n						<strong style="box-sizing:border-box;">金云</strong>\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:100px;">\r\n						05-13 13:35\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;">\r\n						55\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;">\r\n						0\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:150px;">\r\n					</td>\r\n				</tr>\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:10px;">\r\n						<span class="text-muted" style="box-sizing:border-box;color:#808080;"><span class="icon-comment-alt icon-large" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span></span>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);">\r\n						<a href="http://www.smeoa.com/thread/48.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">流程回退时所遇到的问题。</a>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:120px;">\r\n						<strong style="box-sizing:border-box;">林风</strong>\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:100px;">\r\n						05-09 22:03\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;">\r\n						44\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;">\r\n						0\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:150px;">\r\n					</td>\r\n				</tr>\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:10px;">\r\n						<span class="text-muted" style="box-sizing:border-box;color:#808080;"><span class="icon-comment-alt icon-large" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span></span>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;">\r\n						<a href="http://www.smeoa.com/thread/47.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">能否在流程审批中增加同一级别选多个人审批</a>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:120px;">\r\n						<strong style="box-sizing:border-box;">彭</strong>\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:100px;">\r\n						05-09 10:25\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;">\r\n						55\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;">\r\n						1\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:150px;">\r\n						05-09 14:37&nbsp;<a href="http://www.smeoa.com/thread-locate-47-66.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">admin</a>\r\n					</td>\r\n				</tr>\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:10px;">\r\n						<span class="text-muted" style="box-sizing:border-box;color:#808080;"><span class="icon-comment-alt icon-large" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span></span>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);">\r\n						<a href="http://www.smeoa.com/thread/46.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">删除流程分组时提示错误</a>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:120px;">\r\n						<strong style="box-sizing:border-box;">彭</strong>\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:100px;">\r\n						05-09 10:20\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;">\r\n						48\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;">\r\n						1\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:150px;">\r\n						05-09 14:34&nbsp;<a href="http://www.smeoa.com/thread-locate-46-65.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">admin</a>\r\n					</td>\r\n				</tr>\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:10px;">\r\n						<span class="text-muted" style="box-sizing:border-box;color:#808080;"><span class="icon-comment-alt icon-large" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span></span>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;">\r\n						<a href="http://www.smeoa.com/thread/44.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">如何修改主页栏目</a>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:120px;">\r\n						<strong style="box-sizing:border-box;">兔子</strong>\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:100px;">\r\n						05-08 09:24\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;">\r\n						64\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:30px;">\r\n						1\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);background-color:#F9F9F9;width:150px;">\r\n						05-08 20:24&nbsp;<a href="http://www.smeoa.com/thread-locate-44-64.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">admin</a>\r\n					</td>\r\n				</tr>\r\n				<tr class="text-center" style="box-sizing:border-box;text-align:center;">\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:10px;">\r\n						<span class="text-muted" style="box-sizing:border-box;color:#808080;"><span class="icon-comment-alt icon-large" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span></span>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);">\r\n						<a href="http://www.smeoa.com/thread/35.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">体验两天的建议</a>\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:120px;">\r\n						<strong style="box-sizing:border-box;">刘伟</strong>\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:100px;">\r\n						04-03 10:24\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;">\r\n						301\r\n					</td>\r\n					<td style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:30px;">\r\n						3\r\n					</td>\r\n					<td class="text-left" style="box-sizing:border-box;text-align:left;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);width:150px;">\r\n						05-04 12:40&nbsp;<a href="http://www.smeoa.com/thread-locate-35-63.html" style="box-sizing:border-box;background-color:transparent;color:#145CCD;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">刘伟</a>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n			<tfoot style="box-sizing:border-box;">\r\n				<tr style="box-sizing:border-box;">\r\n					<td colspan="7" style="box-sizing:border-box;padding:8px;line-height:1.428571429;vertical-align:top;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#DDDDDD;transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1);">\r\n						<div class="page form-inline" style="box-sizing:border-box;padding:0px;color:#999999;text-align:right;margin:0px;float:right;clear:none;">\r\n							共&nbsp;<strong style="box-sizing:border-box;">31</strong>&nbsp;条主题，每页&nbsp;<strong style="box-sizing:border-box;">10</strong>&nbsp;条，页面：<strong style="box-sizing:border-box;">1/4</strong>&nbsp;首页 上页&nbsp;<a href="http://www.smeoa.com/forum/c10/p2.html" style="box-sizing:border-box;background-color:transparent;color:#666666;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">下页</a>&nbsp;<a href="http://www.smeoa.com/forum/c10/p4.html" style="box-sizing:border-box;background-color:transparent;color:#666666;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);background-position:initial initial;background-repeat:initial initial;">末页</a>\r\n						</div>\r\n					</td>\r\n				</tr>\r\n			</tfoot>\r\n		</table>\r\n	</div>\r\n</div>\r\n<footer id="footer" class="clearfix" style="box-sizing:border-box;background-color:#F7F7F7;padding:20px 15px;border:1px solid #DDDDDD;border-top-left-radius:4px;border-top-right-radius:4px;border-bottom-right-radius:4px;border-bottom-left-radius:4px;text-align:center;position:relative;">\r\n<div id="footNav" style="box-sizing:border-box;position:absolute;left:15px;top:20px;color:#333333;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:20px;white-space:normal;">\r\n	<a href="http://www.smeoa.com/sitemap/" style="box-sizing:border-box;background-color:transparent;color:#777777;text-decoration:none;transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);-webkit-transition:all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1);display:inline-block;margin-right:10px;background-position:initial initial;background-repeat:initial initial;"><span class="icon-sitemap" style="box-sizing:border-box;font-family:ZenIcon;text-decoration:inherit;-webkit-font-smoothing:antialiased;display:inline;width:auto;height:auto;line-height:normal;vertical-align:baseline;background-image:none;margin-top:0px;background-position:0px 0px;background-repeat:repeat repeat;"></span>&nbsp;站点地图</a>\r\n</div>\r\n<div>\r\n	<br />\r\n</div>\r\n<span id="copyright" style="box-sizing:border-box;color:#333333;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-size:14px;line-height:20px;white-space:normal;"></span></footer>', 1, '管理员', 'b2479f420535a859504c301285dc28f2', 1, 1401547333, 0, NULL, NULL),
(61, 7, '', 'XXXXXXXXXX', 1, '管理员', '', 0, 1401630240, 1401631478, NULL, NULL),
(62, 6, '', '<h1 style="font-size:24px;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-weight:lighter;color:#2679B5;background-color:#FFFFFF;">\r\n	项目进展1\r\n</h1>', 1, '管理员', '', 0, 1401634981, 1401635017, NULL, '<h1 style="font-size:24px;font-family:''Microsoft YaHei'', simsun, Arial, sans-serif;font-weight:lighter;color:#2679B5;background-color:#FFFFFF;">\r\n	回复项目进展\r\n</h1>'),
(63, 6, '', '123123123', 1, '管理员', '', 0, 1401760228, 0, NULL, NULL),
(64, 6, '', '1231212315123', 1, '管理员', '', 0, 1401760236, 0, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
