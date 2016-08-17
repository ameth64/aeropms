-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-08-17 15:43:51
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `h_aoco_me`
--

-- --------------------------------------------------------

--
-- 表的结构 `aeropms_wbs_node`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

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
(11, 1, -1, -1, 10, 0, '重量, 重心计算', 3, 1, 1, 0, 1, 1470475350, 1470475350, '暂无描述', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
