<?php
/*---------------------------------------------------------------------------
 小微OA系统 - 让工作更轻松快乐

 Copyright (c) 2013 http://www.smeoa.com All rights reserved.

 Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )

 Author:  jinzhu.yin<smeoa@qq.com>

 Support: https://git.oschina.net/smeoa/smeoa
 -------------------------------------------------------------------------*/
function upload_filter($val){
	$allow_type=array('doc','docx','xls','xlsx','ppt','pptx','dwg','rar','zip','7z','pdf','txt','rtf','jpg','jpeg','png','tip','psd');
	if(in_array($val,$allow_type)){
		return true;
	}else{
		return false;
	}
}

function get_save_path(){
	$app_path=__APP__;
	$save_path=C('SAVE_PATH');
	return substr($app_path."/".$save_path,1);
}

function get_save_url(){
	$app_path=__APP__;
	$save_path=C('SAVE_PATH');
	return $app_path."/".$save_path;
}

function _encode($arr) {
	$na = array();
	foreach ($arr as $k => $value) {
		$na[_urlencode($k)] = _urlencode($value);
	}
	return addcslashes(urldecode(json_encode($na)), "\r\n");
}

function _urlencode($elem) {
	if (is_array($elem)) {
		foreach ($elem as $k => $v) {
			$na[_urlencode($k)] = _urlencode($v);
		}
		return $na;
	}
	return urlencode($elem);
}

function get_img_info($img) {
	$img_info = getimagesize($img);
	if ($img_info !== false) {
		$img_type = strtolower(substr(image_type_to_extension($img_info[2]), 1));
		$info = array("width" => $img_info[0], "height" => $img_info[1], "type" => $img_type, "mime" => $img_info['mime'], );
		return $info;
	} else {
		return false;
	}
}

function get_return_url() {
	$return_url = cookie('return_url');
	return $return_url;
	if (!empty($return_url)) {
		return $return_url;
	} else {
		return __URL__ . '?' . C('VAR_MODULE') . '=' . MODULE_NAME . '&' . C('VAR_ACTION') . '=' . C('DEFAULT_ACTION');
	}
}

function get_system_config($code) {
	$model = M("SystemConfig");
	$where['code'] = array('eq', $code);
	return $model -> where($where) -> getfield("val");
}

function get_user_config($field) {
	$model = M("UserConfig");
	$user_id = get_user_id();
	$where['id'] = array('eq', $user_id);
	$result = $model -> where($where) -> getfield($field);
	if (empty($result)) {
		return get_system_config(strtoupper($field));
	} else {
		return $result;
	}
}

function conv_tag_list($tag) {
	$tag_list = explode("|", $tag);
	$tag_list = array_filter($tag_list);

	if (count($tag_list) > 0) {
		$string = $tag_list[0];
		$pattern = '/_\d+/';
		$replacement = "_";
		$str = preg_replace($pattern, $replacement, $string);
		$tag_list = str_replace($str, "", $tag);
		$tag_list = array_filter(explode("|", $tag_list));
		return $tag_list;
	}
}

function get_user_id() {
	$user_id = session(C('USER_AUTH_KEY'));
	return isset($user_id) ? $user_id : 0;
}

function del_folder($dir) {
	//打开文件目录
	$dh = opendir($dir);
	//循环读取文件
	while ($file = readdir($dh)) {
		if ($file != '.' && $file != '..') {
			$fullpath = $dir . '/' . $file;

			//判断是否为目录
			if (!is_dir($fullpath)) {
				//echo $fullpath."已被删除<br>";
				//如果不是,删除该文件
				if (!unlink($fullpath)) {
				}
			} else {
				//如果是目录,递归本身删除下级目录
				del_folder($fullpath);
			}
		}
	}
	//关闭目录
	closedir($dh);
	//删除目录

	if (rmdir($dir)) {
		return true;
	} else {
		return false;
	}
}

function get_user_name() {
	$user_name = session('user_name');
	return isset($user_name) ? $user_name : 0;
}

function toDate($time, $format = 'Y-m-d H:i:s') {
	if (empty($time)) {
		return '';
	}
	$format = str_replace('#', ':', $format);
	return date($format, $time);
}

function date_to_int($date) {
	$date = explode("-", $date);
	$time = explode(":", "00:00");
	$time = mktime($time[0], $time[1], 0, $date[1], $date[2], $date[0]);
	return $time;
}

function fix_time($time) {
	return substr($time, 0, 5);
}

function filter_search_field($v1) {
	if ($v1 == "keyword")
		return true;
	$prefix = substr($v1, 0, 3);
	$arr_key = array("be_", "en_", "eq_", "li_", "lt_", "gt_", "bt_");
	if (in_array($prefix, $arr_key)) {
		return true;
	} else {
		return false;
	}
}

function get_model_fields($model) {
	$arr_field = array();
	if (isset($model -> viewFields)) {
		foreach ($model->viewFields as $key => $val) {
			unset($val['_on']);
			unset($val['_type']);
			if(!empty($val[0])&&($val[0] == "*")){
				$model = M($key);
				$fields = $model -> getDbFields();
				$arr_field = array_merge($arr_field, array_values($fields));
			} else {
				$arr_field = array_merge($arr_field, array_values($val));
			}
		}
	} else {
		$arr_field = $model -> getDbFields();
	}
	return $arr_field;
}

function show_step_type($step) {
	if ($step >= 20) {
		return "裁决";
	}
	if ($step >= 30) {
		return "协商";
	}
}

function show_result($result) {
	if ($result == 1) {
		return "同意";
	}
	if ($result == 0) {
		return "否决";
	}
	if ($result == 2) {
		return "退回";
	}	
}

function show_step($step) {
	if ($step == 40) {
		return "通过";
	}
	if ($step > 30) {
		return "协商中";
	}
	if ($step == 30) {
		return "待协商";
	}
	if ($step > 20) {
		return "裁决中";
	}
	if ($step == 20) {
		return "待裁决";
	}
	if ($step == 10) {
		return "临时保管";
	}
	if ($step == 0) {
		return "否决";
	}
}

function IP($ip = '', $file = 'UTFWry.dat') {
	$_ip = array();
	if (isset($_ip[$ip])) {
		return $_ip[$ip];
	} else {
		import("ORG.Net.IpLocation");
		$iplocation = new IpLocation($file);
		$location = $iplocation -> getlocation($ip);
		$_ip[$ip] = $location['country'] . $location['area'];
	}
	return $_ip[$ip];
}

function sort_by($array, $keyname = null, $sortby = 'asc') {
	$myarray = $inarray = array();
	# First store the keyvalues in a seperate array
	foreach ($array as $i => $befree) {
		$myarray[$i] = $array[$i][$keyname];
	}
	# Sort the new array by
	switch ($sortby) {
		case 'asc' :
			# Sort an array and maintain index association...
			asort($myarray);
			break;
		case 'desc' :
		case 'arsort' :
			# Sort an array in reverse order and maintain index association
			arsort($myarray);
			break;
		case 'natcasesor' :
			# Sort an array using a case insensitive "natural order" algorithm
			natcasesort($myarray);
			break;
	}
	# Rebuild the old array
	foreach ($myarray as $key => $befree) {
		$inarray[] = $array[$key];
	}
	return $inarray;
}

function fix_array_key($list, $key) {
	$arr = null;
	foreach ($list as $val) {
		$arr[$val[$key]] = $val;
	}
	return $arr;
}

function fill_option($list) {
	$html = "";
	foreach ($list as $key => $val){
		if (is_array($val)) {
			$id = $val['id'];
			$name = $val['name'];
			$html = $html . "<option value='{$id}'>{$name}</option>";
		} else {
			$html = $html . "<option value='{$key}'>{$val}</option>";
		}
	}
	echo $html;
}

/**
 +----------------------------------------------------------
 * 产生随机字串，可用来自动生成密码
 * 默认长度6位 字母和数字混合 支持中文
 +----------------------------------------------------------
 * @param string $len 长度
 * @param string $type 字串类型
 * 0 字母 1 数字 其它 混合
 * @param string $addChars 额外字符
 +----------------------------------------------------------
 * @return string
 +----------------------------------------------------------
 */
function rand_string($len = 6, $type = '', $addChars = '') {
	$str = '';
	switch ($type) {
		case 0 :
			$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' . $addChars;
			break;
		case 1 :
			$chars = str_repeat('0123456789', 3);
			break;
		case 2 :
			$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' . $addChars;
			break;
		case 3 :
			$chars = 'abcdefghijklmnopqrstuvwxyz' . $addChars;
			break;
		default :
			// 默认去掉了容易混淆的字符oOLl和数字01，要添加请使用addChars参数
			$chars = 'ABCDEFGHIJKMNPQRSTUVWXYZabcdefghijkmnpqrstuvwxyz23456789' . $addChars;
			break;
	}
	if ($len > 10) {//位数过长重复字符串一定次数
		$chars = $type == 1 ? str_repeat($chars, $len) : str_repeat($chars, 5);
	}
	if ($type != 4) {
		$chars = str_shuffle($chars);
		$str = substr($chars, 0, $len);
	} else {
		// 中文随机字
		for ($i = 0; $i < $len; $i++) {
			$str .= msubstr($chars, floor(mt_rand(0, mb_strlen($chars, 'utf-8') - 1)), 1);
		}
	}
	return $str;
}
function list_to_tree($list, $root = 0, $pk = 'id', $pid = 'pid', $child = '_child') {
	// 创建Tree
	$tree = array();
	if (is_array($list)) {
		// 创建基于主键的数组引用
		$refer = array();
		foreach ($list as $key => $data) {
			$refer[$data[$pk]] = &$list[$key];
		}
		foreach ($list as $key => $data) {
			// 判断是否存在parent
			$parentId = 0;
			if (isset($data[$pid])) {
				$parentId = $data[$pid];
			}
			if ((string)$root == $parentId) {
				$tree[] = &$list[$key];
			} else {
				if (isset($refer[$parentId])) {
					$parent = &$refer[$parentId];
					$parent[$child][] = &$list[$key];
				}
			}
		}
	}
	return $tree;
}
function tree_to_list($tree, $level = 0, $pk = 'id', $pid = 'pid', $child = '_child') {
	$list = array();
	if (is_array($tree)) {
		foreach ($tree as $val) {
			$val['level'] = $level;			
			if (isset($val['_child'])) {
				$child = $val['_child'];
				if (is_array($child)) {
					unset($val['_child']);
					$list[] = $val;
					$list = array_merge($list, tree_to_list($child, $level + 1));
				}
			} else {
				$list[] = $val;
			}
		}
		return $list;
	}
}

function tree_nav($tree, $level = 0) {
	$level++;
	$html = "";
	if (is_array($tree)) {
		$html = "<ul class=\"nav \">\r\n";
		foreach ($tree as $val) {
			if (isset($val["name"])) {
				$title = $val["name"];
				if (!empty($val["url"])) {
					$url = U($val['url']);
				} else {
					$url = "#";
				}
				$id = $val["id"];
				if (empty($val["id"])) {
					$id = $val["name"];
				}
				if (isset($val['_child'])) {
					$html = $html . "<li>\r\n<a node=\"$id\" href=\"" . "$url\"><i class=\"icon-angle-right level$level\"></i><span>$title</span></a>\r\n";
					$html = $html . tree_nav($val['_child'], $level);
					$html = $html . "</li>\r\n";
				} else {
					$html = $html . "<li>\r\n<a  node=\"$id\" href=\"" . "$url\"><i class=\"icon-angle-right level$level\"></i><span>$title</span></a>\r\n</li>\r\n";
				}
			}
		}
		$html = $html . "</ul>\r\n";
	}
	return $html;
}

function left_menu($tree, $level = 0) {
	$level++;
	$html = "";
	if (is_array($tree)) {
		$html = "<ul class=\"tree_menu\">\r\n";
		foreach ($tree as $val) {
			if (isset($val["name"])) {
				$title = $val["name"];
				if (!empty($val["url"])) {
					$url = U($val['url']);
				} else {
					$url = "#";
				}
				$id = $val["id"];
				if (empty($val["id"])) {
					$id = $val["name"];
				}
				if (isset($val['_child'])) {
					$html = $html . "<li>\r\n<a node=\"$id\" href=\"" . "$url\"><i class=\"icon-angle-right level$level\"></i><span>$title</span></a>\r\n";
					$html = $html . left_menu($val['_child'], $level);
					$html = $html . "</li>\r\n";
				} else {
					$html = $html . "<li>\r\n<a  node=\"$id\" href=\"" . "$url\"><i class=\"icon-angle-right level$level\"></i><span>$title</span></a>\r\n</li>\r\n";
				}
			}
		}
		$html = $html . "</ul>\r\n";
	}
	return $html;
}

function select_tree_menu($tree){	
	$html = "";
	if (is_array($tree)){
		$list=tree_to_list($tree);			
		foreach ($list as $val){
			$html = $html . "<option value='{$val['id']}'>".str_pad("",$val['level']*3,"│")."├─" ."{$val['name']}</option>";			
		}	
	}
	return $html;
}

function popup_tree_menu($tree, $level = 0){
	$level++;
	$html = "";
	if (is_array($tree)) {
		$html = "<ul class=\"tree_menu\">\r\n";
		foreach ($tree as $val) {
			if (isset($val["name"])) {
				$title = $val["name"];
				$id = $val["id"];
				if (empty($val["id"])) {
					$id = $val["name"];
				}
				if (!empty($val["is_del"])) {
					$del_class = "is_del";
				}else{
					$del_class = "";
				}
				if (isset($val['_child'])) {
					$html = $html . "<li>\r\n<a class=\"$del_class\" node=\"$id\" ><i class=\"icon-angle-right level$level\"></i><span>$title</span></a>\r\n";
					$html = $html . popup_tree_menu($val['_child'], $level);
					$html = $html . "</li>\r\n";
				} else {
					$html = $html . "<li>\r\n<a class=\"$del_class\" node=\"$id\" ><i class=\"icon-angle-right level$level\"></i><span>$title</span></a>\r\n</li>\r\n";
				}
			}
		}
		$html = $html . "</ul>\r\n";
	}
	return $html;
}

function sub_tree_menu($tree, $level = 0) {
	$level++;
	$html = "";
	if (is_array($tree)) {
		$html = "<ul class=\"tree_menu\">\r\n";
		foreach ($tree as $val) {
			if (isset($val["name"])) {
				$title = $val["name"];
				$id = $val["id"];
				if (empty($val["id"])) {
					$id = $val["name"];
				}
				if (isset($val['_child'])) {
					$html = $html . "<li>\r\n<a node=\"$id\"><i class=\"icon-angle-right level$level\"></i><span>$title</span></a>\r\n";
					$html = $html . sub_tree_menu($val['_child'], $level);
					$html = $html . "</li>\r\n";
				} else {
					$html = $html . "<li>\r\n<a  node=\"$id\" ><i class=\"icon-angle-right level$level\"></i><span>$title</span></a>\r\n</li>\r\n";
				}
			}
		}
		$html = $html . "</ul>\r\n";
	}
	return $html;
}

function dropdown_menu($tree, $level = 0) {
	$level++;
	$html = "";
	if (is_array($tree)) {
		foreach ($tree as $val) {
			if (isset($val["name"])) {
				$title = $val["name"];
				$id = $val["id"];
				if (empty($val["id"])) {
					$id = $val["name"];
				}
				if (isset($val['_child'])) {
					$html = $html . "<li id=\"$id\" class=\"level$level\"><a>$title</a>\r\n";
					$html = $html . dropdown_menu($val['_child'], $level);
					$html = $html . "</li>\r\n";
				} else {
					$html = $html . "<li  id=\"$id\"  class=\"level$level\">\r\n<a>$title</a>\r\n</li>\r\n";
				}
			}
		}
	}
	return $html;
}

function f_encode($str) {
	$str = base64_encode($str);
	$str = rand_string(10) . $str . rand_string(10);
	$str = str_replace("+", "-", $str);
	$str = str_replace("/", "_", $str);
	$str = str_replace("==", "*", $str);
	return $str;
}

function f_decode($str) {
	$str = str_replace("-", "+", $str);
	$str = str_replace("_", "/", $str);
	$str = str_replace("*", "==", $str);
	$str = substr($str, 10, strlen($str) - 20);
	$str = base64_decode($str);
	return $str;
}

function u_str_pad($cnt, $str) {
	$tmp = '';
	for ($i = 1; $i <= $cnt; $i++) {
		$tmp = $tmp . $str;
	}
	return $tmp;
}

function show_contact($str, $mode = "show") {
	$tmp = '';
	if (!empty($str)) {
		$contacts = explode(';', $str);
		if (count($contacts) > 2) {
			foreach ($contacts as $contact) {
				if (strlen($contact) > 6) {
					$arr = explode('|', $contact);
					$name = htmlspecialchars(rtrim($arr[0]));
					$email = htmlspecialchars(rtrim($arr[1]));
					if ($mode == "edit") {
						$tmp = $tmp . "<span data=\"$email\"><nobr><b  title=\"$email\">$name</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span>";
					} else {
						$tmp = $tmp . "<a email=\"$email\" title=\"$email\" >$name;</a>";
					}
				}
			}
		} else {
			$arr = explode('|', $contacts[0]);
			$name = htmlspecialchars(rtrim($arr[0]));
			$email = htmlspecialchars(rtrim($arr[1]));
			$tmp = "";
			if ($mode == "edit") {
				$tmp = $tmp . "<span data=\"$email\"><nobr><b  title=\"$email\">$name</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span>";
			} else {
				$tmp = $tmp . "<a email=\"$email\" title=\"$email\" >$name</a>";
			}
		}
	}
	return $tmp;
}

function show_recent($str) {
	$contacts = explode(';', $str);
	if (count($contacts) > 2) {
		foreach ($contacts as $contact) {
			if (strlen($contact) > 6) {
				$arr = explode('|', $contact);
				$name = rtrim($arr[0]);
				$email = rtrim($arr[1]);
				$tmp = $tmp . "<li><span title=\"$email\">$name</span></li>";
			}
		}
	} else {
		$arr = explode('|', $contacts[0]);
		$name = rtrim($arr[0]);
		$email = rtrim($arr[1]);
		$tmp = "";
		$tmp = $tmp . "<li><span title=\"$email\">$name</span></li>";
	}
	return $tmp;
}

function not_dept($val) {
	if (strrchr($val, "dept@group")) {
		return false;
	} else {
		return true;
	}
}

// 自动转换字符集 支持数组转换
function auto_charset($fContents, $from, $to) {
	$from = strtoupper($from) == 'UTF8' ? 'utf-8' : $from;
	$to = strtoupper($to) == 'UTF8' ? 'utf-8' : $to;
	if (strtoupper($from) === strtoupper($to) || empty($fContents) || (is_scalar($fContents) && !is_string($fContents))) {
		//如果编码相同或者非字符串标量则不转换
		return $fContents;
	}
	if (is_string($fContents)) {
		if (function_exists('mb_convert_encoding')) {
			return mb_convert_encoding($fContents, $to, $from);
		} elseif (function_exists('iconv')) {
			return iconv($from, $to, $fContents);
		} else {
			return $fContents;
		}
	} elseif (is_array($fContents)) {
		foreach ($fContents as $key => $val) {
			$_key = auto_charset($key, $from, $to);
			$fContents[$_key] = auto_charset($val, $from, $to);
			if ($key != $_key)
				unset($fContents[$key]);
		}
		return $fContents;
	} else {
		return $fContents;
	}
}

function getExt($filename) {
	$pathinfo = pathinfo($filename);
	return $pathinfo['extension'];
}

function del_html($str) {
	$str = trim($str);
	$str = preg_replace("/<[^>]*>/i", "", $str);
	$str = ereg_replace("\t", "", $str);
	$str = ereg_replace("\r\n", "", $str);
	$str = ereg_replace("\r", "", $str);
	$str = ereg_replace("\n", "", $str);
	$str = ereg_replace("&nbsp;", "", $str);
	$str = ereg_replace(" ", "", $str);
	$str = ereg_replace("{br}", "<br/>", $str);
	$str = ereg_replace("{}", "&nbsp;", $str);
	return $str;
}

function getfilecounts($ff) {
	$dir = './' . $ff;
	$handle = opendir($dir);
	$i = 0;
	while (false !== $file = (readdir($handle))) {
		if ($file !== '.' && $file != '..') {
			$i++;
		}
	}
	closedir($handle);
	return $i;
}

function show_confirm($confirm) {
	$arr_emp_no = explode('|', $confirm);
	$arr_emp_no = array_filter($arr_emp_no);
	if (count($arr_emp_no) > 1) {
		$model = D("User");
		foreach ($arr_emp_no as $emp_no) {
			if (strlen($emp_no) > 1) {
				$emp = $model -> get_user($emp_no);
				$str .= $emp['emp_name'] . " / " . $emp['position_name'] . " <b><i class=\"icon-arrow-right\"></i></b> ";
			}
		}
		return substr($str, 0, -7);
	} else {
		return "";
	}
}

function showFile($add_file, $mode) {
	$files = explode(';', $add_file);
	if (count($files) > 1) {
		foreach ($files as $file) {
			if (strlen($file) > 1) {
				$fileId = f_decode($file);
				$fileId = $file;
				$model = M("File");
				$File = $model -> where("id=$fileId") -> field("name,size,extension") -> find();

				echo '<div class="attach_file" style="background-image:url(__PUBLIC__/images/ico/ico_' . strtolower($File['extension']) . '.jpg); background-repeat:no-repeat;"><a target="_blank" href="__URL__/down/attach_id/' . f_encode($file) . '">' . $File['name'] . ' (' . reunit($File['size']) . ')' . '</a>';
				if ($mode == "edit") {
					echo '<a href="#" class="prgCancel" id="' . $file . '">删除</a>';
				}
				echo '</div>';
			}
		}
	}
}

function reunit($size) {
	$unit=" B";
	if ($size > 1024) {
		$size = $size / 1024;
		$unit = " KB";
	}
	if ($size > 1024) {
		$size = $size / 1024;
		$unit = " MB";
	}
	if ($size > 1024) {
		$size = $size / 1024;
		$unit = " GB";
	}
	return round($size, 2) . $unit;
}

function get_module($str) {
		$arr_str = explode("/", $str);
		return $arr_str[0];
}

function filter_module($str) {
	if (strpos($str['url'], '##') !== false) {
		return true;
	}
	if (empty($str['admin']) && empty($str['write']) && empty($str['read'])) {
		return false;
	}
	if (strpos($str['url'], 'index')) {
		return true;
	}
	return false;
}

function rotate($a) {
	$b = array();
	if (is_array($a)) {
		foreach ($a as $val) {
			foreach ($val as $k => $v) {
				$b[$k][] = $v;
			}
		}
	}
	return $b;
}

function utf_strlen($string) {
	return count(mb_str_split($string));
}

function utf_str_sub($string, $cnt) {
	$charlist = mb_str_split($string);
	$new = array_chunk($charlist, $cnt);
	return implode($new[0]);
}

function get_letter($string) {
	$charlist = mb_str_split($string);
	return implode(array_map("getfirstchar", $charlist));
}

function mb_str_split($string) {
	// Split at all position not after the start: ^
	// and not before the end: $
	return preg_split('/(?<!^)(?!$)/u', $string);
}

function getfirstchar($s0) {
	$fchar = ord(substr($s0, 0, 1));
	if (($fchar >= ord("a") and $fchar <= ord("z")) or ($fchar >= ord("A") and $fchar <= ord("Z")))
		return strtoupper(chr($fchar));
	$s = iconv("UTF-8", "GBK", $s0);
	$asc = ord($s{0}) * 256 + ord($s{1}) - 65536;
	if ($asc >= -20319 and $asc <= -20284)
		return "A";
	if ($asc >= -20283 and $asc <= -19776)
		return "B";
	if ($asc >= -19775 and $asc <= -19219)
		return "C";
	if ($asc >= -19218 and $asc <= -18711)
		return "D";
	if ($asc >= -18710 and $asc <= -18527)
		return "E";
	if ($asc >= -18526 and $asc <= -18240)
		return "F";
	if ($asc >= -18239 and $asc <= -17923)
		return "G";
	if ($asc >= -17922 and $asc <= -17418)
		return "H";
	if ($asc >= -17417 and $asc <= -16475)
		return "J";
	if ($asc >= -16474 and $asc <= -16213)
		return "K";
	if ($asc >= -16212 and $asc <= -15641)
		return "L";
	if ($asc >= -15640 and $asc <= -15166)
		return "M";
	if ($asc >= -15165 and $asc <= -14923)
		return "N";
	if ($asc >= -14922 and $asc <= -14915)
		return "O";
	if ($asc >= -14914 and $asc <= -14631)
		return "P";
	if ($asc >= -14630 and $asc <= -14150)
		return "Q";
	if ($asc >= -14149 and $asc <= -14091)
		return "R";
	if ($asc >= -14090 and $asc <= -13319)
		return "S";
	if ($asc >= -13318 and $asc <= -12839)
		return "T";
	if ($asc >= -12838 and $asc <= -12557)
		return "W";
	if ($asc >= -12556 and $asc <= -11848)
		return "X";
	if ($asc >= -11847 and $asc <= -11056)
		return "Y";
	if ($asc >= -11055 and $asc <= -10247)
		return "Z";
	return null;
}

function get_folder_name($id) {

	if ($id == 1) {
		return "收件箱";
	}
	if ($id == 2) {
		return "已发送";
	}
	if ($id == 3) {
		return "草稿箱";
	}
	if ($id == 4) {
		return "已删除";
	}
	if ($id == 5) {
		return "垃圾邮件";
	}

	$model = D("UserFolder");
	$result = $model -> where("id=$id") -> getField("name");
	if ($result) {
		return $result;
	} else {
		return null;
	}
}

function mail_org_string($vo) {
	$count = 0;
	if (!empty($vo['sender_check']) && $count < 1) {
		$count++;
		if ($vo["sender_option"] == 1) {
			$str1 = "包含";
		} else {
			$str1 = "不包含";
		}
		$str2 = $vo['sender_key'];

		$str3 = get_folder_name($vo["to"]);

		$html = "发件人" . $str1 . " " . $str2 . " 则 : 移动到 " . $str3;
	};

	if (!empty($vo['domain_check']) && $count < 1) {
		$count++;
		if ($vo["domain_option"] == 1) {
			$str1 = "包含";
		} else {
			$str1 = "不包含";
		}
		$str2 = $vo['domain_key'];

		$str3 = get_folder_name($vo["to"]);

		$html = "发件域" . $str1 . " " . $str2 . " 则 : 移动到 " . $str3;
	};

	if (!empty($vo['recever_check']) && $count < 1) {
		$count++;
		if ($vo["recever_option"] == 1) {
			$str1 = "包含";
		} else {
			$str1 = "不包含";
		}
		$str2 = $vo['recever_key'];

		$str3 = get_folder_name($vo["to"]);

		$html = "收件人" . $str1 . " " . $str2 . " 则 : 移动到 " . $str3;
	};

	if (!empty($vo['title_check']) && $count < 1) {
		$count++;
		if ($vo["title_option"] == 1) {
			$str1 = "包含";
		} else {
			$str1 = "不包含";
		}
		$str2 = $vo['title_key'];

		$str3 = get_folder_name($vo["to"]);

		$html = "标题中" . $str1 . " " . $str2 . " 则 : 移动到 " . $str3;
	};
	if ($count > 1) {
		$html .= " 等";
	}
	return $html;
}

function status($status) {
	if ($status == 0) {
		return "启用";
	}
	if ($status == 1) {
		return "禁用";
	}
}

function todo_status($status) {
	if ($status == 1) {
		return "尚未进行";
	}
	if ($status == 2) {
		return "正在进行";
	}
	if ($status == 3) {
		return "完成";
	}
}

function mb_unserialize($serial_str) {
	$out = preg_replace('!s:(\d+):"(.*?)";!se', "'s:'.strlen('$2').':\"$2\";'", $serial_str);
	return unserialize($out);
}
?>