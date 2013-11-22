<?php
/*---------------------------------------------------------------------------
 小微OA系统 - 让工作更轻松快乐

 Copyright (c) 2013 http://www.smeoa.com All rights reserved.

 Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )

 Author:  jinzhu.yin<smeoa@qq.com>

 Support: https://git.oschina.net/smeoa/smeoa
 -------------------------------------------------------------------------*/

class CommonAction extends Action {

	function _initialize() {
		$auth_id = session(C('USER_AUTH_KEY'));
		if (!isset($auth_id)) {
			//跳转到认证网关
			redirect(U(C('USER_AUTH_GATEWAY')));
		}
		$this -> assign('js_file', 'js/' . ACTION_NAME);
		$this -> _assign_menu();
		$this -> _get_new();
	}

	/**列表页面 **/
	function index() {
		$this -> _index();
	}

	/**查看页面 **/
	function read() {
		$this -> _edit();
	}

	/**编辑页面 **/
	function edit() {
		$this -> _edit();
	}

	/** 保存操作  **/
	function save() {
		$opmode = $_POST["opmode"];
		if ($opmode == "add") {
			$this -> _insert();
		}
		if ($opmode == "edit") {
			$this -> _update();
		}
		if ($opmode == "del") {
			$this -> _del();
		}
	}

	/**列表页面 **/
	protected function _index() {
		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}
		$name = $this -> getActionName();
		$model = D($name);

		if (!empty($model)) {
			$this -> _list($model, $map);
		}
		$this -> display();
	}

	/**编辑页面 **/
	protected function _edit() {
		$name = $this -> getActionName();
		$model = M($name);
		$id = $_REQUEST[$model -> getPk()];
		$vo = $model -> getById($id);
		if ($this -> isAjax()) {
			if ($vo !== false) {// 读取成功
				$this -> ajaxReturn($vo, "", 0);
			} else {
				die ;
			}
		}
		if (isset($vo['add_file'])) {
			$this -> _assign_file_list($vo["add_file"]);
		};
		$this -> assign('vo', $vo);
		$this -> display();
	}

	/** 插入新新数据  **/
	protected function _insert() {
		$name = $this -> getActionName();
		$model = D($name);
		if (false === $model -> create()) {
			$this -> error($model -> getError());
		}
		if (in_array('user_id', $model -> getDbFields())) {
			$model -> user_id = get_user_id();
		};
		if (in_array('user_name', $model -> getDbFields())) {
			$model -> user_name = $this -> _session("user_name");
		};
		/*保存当前数据对象 */
		$list = $model -> add();
		if ($list !== false) {//保存成功
			$this -> assign('jumpUrl', get_return_url());
			$this -> success('新增成功!');
		} else {
			$this -> error('新增失败!');
			//失败提示
		}
	}

	/* 更新数据  */
	protected function _update() {
		$name = $this -> getActionName();
		$model = D($name);
		if (false === $model -> create()) {
			$this -> error($model -> getError());
		}
		$list = $model -> save();
		if (false !== $list) {
			$this -> assign('jumpUrl', get_return_url());
			$this -> success('编辑成功!');
			//成功提示
		} else {
			$this -> error('编辑失败!');
			//错误提示
		}
	}

	protected function _upload() {
		if (!empty($_FILES)) {
			import("@.ORG.Util.UploadFile");
			$module = strtolower($_REQUEST["module"]);
			$upload = new UploadFile();
			$upload -> subFolder = $module;
			$upload -> savePath = C("SAVE_PATH");
			$upload -> saveRule = uniqid;
			$upload -> autoSub = true;
			$upload -> subType = "date";

			if (!$upload -> upload()) {
				$this -> error($upload -> getErrorMsg());
			} else {
				//取得成功上传的文件信息
				$upload_list = $upload -> getUploadFileInfo();
				$file_info = $upload_list[0];

				$model = M("File");
				$model -> create($upload_list[0]);
				$model -> create_time = time();
				$model -> user_id = get_user_id();
				$file_id = $model -> add();

				$file_info['id'] = $file_id;
				$file_info['error'] = 0;
				$file_info['url'] = $file_info['savepath'] . $file_info['savename'];

				//header("Content-Type:text/html; charset=utf-8");
				exit(json_encode($file_info));
				//$this->success ('上传成功！');
			}
		}
	}

	protected function _down() {
		$attach_id = $_REQUEST["attach_id"];
		R("File/down", array($attach_id));
	}

	/** 删除数据  **/
	protected function _del($id, $return = false) {
		$app_type = $this -> config['app_type'];
		switch ($app_type) {
			case 'personal' :
				$this -> destory($id);
				break;
			case 'common' :
				$name = $this -> getActionName();
				$model = M($name);
				if (!empty($model)) {
					$pk = $model -> getPk();
					if (isset($id)) {
						if (is_array($id)) {
							$where[$pk] = array("in", array_filter($id));
						} else {
							$where[$pk] = array('in', array_filter(explode(',', $id)));
						}

						$result = $model -> where($where) -> setField("is_del", 1);
						if ($return) {
							return $result;
						}
						if ($result !== false) {
							$this -> assign('jumpUrl', get_return_url());
							$this -> success("成功删除{$result}条!");
						} else {
							$this -> error('删除失败!');
						}
					} else {
						$this -> error('没有可删除的数据!');
					}
				}
			default :
				break;
		}
	}

	/** 删除数据  **/
	protected function _destory($id) {
		$name = $this -> getActionName();
		$model = M($name);
		if (!empty($model)) {
			$pk = $model -> getPk();
			if (isset($id)) {
				if (is_array($id)) {
					$where[$pk] = array("in", array_filter($id));
				} else {
					$where[$pk] = array('in', array_filter(explode(',', $id)));
				}

				$app_type = $this -> config['app_type'];

				switch ($app_type) {
					case 'personal' :
						$where['user_id'] = get_user_id();
						break;
					default :
						break;
				}
				$file_list = $model -> where($where) -> getField("id,add_file");
				$file_list = array_filter(explode(";", implode($file_list)));
				$this -> _destory_file($file_list);

				$result = $model -> where($where) -> delete();
				if ($result !== false) {
					$this -> assign('jumpUrl', get_return_url());
					$this -> success("彻底删除{$result}条!");
				} else {
					$this -> error('删除失败!');
				}
			} else {
				$this -> error('没有可删除的数据!');
			}
		}
	}

	protected function _destory_file($file_list) {

		$model = M("File");
		$where = array();
		$where['id'] = array('in', $file_list);
		$list = $model -> where($where) -> select();

		$save_path = C('SAVE_PATH');
		foreach ($list as $file) {
			if (file_exists($_SERVER["DOCUMENT_ROOT"] . "/" . $save_path . $file['savename'])) {
				unlink($_SERVER["DOCUMENT_ROOT"] . "/" . $save_path . $file['savename']);
			}
		}
		$result = $model -> where($where) -> delete();

		if ($result !== false) {
			return true;
		} else {
			return false;
		}
	}

	//生成查询条件
	protected function _search($name = '') {
		$map = array();
		//过滤非查询条件
		$request = array_filter(array_keys(array_filter($_REQUEST)), "filter_search_field");
		if (empty($name)) {
			$name = $this -> getActionName();
		}
		$model = D($name);
		$fields = get_model_fields($model);

		foreach ($request as $val) {
			if (!in_array(substr($val, 3), $fields)) {
				continue;
			}
			if (substr($val, 0, 3) == "be_") {
				if (isset($_REQUEST["en_" . substr($val, 3)])) {
					if (strpos($val, "time")) {
						$map[substr($val, 3)] = array( array('egt', date_to_int(trim($_REQUEST[$val]))), array('elt', date_to_int(trim($_REQUEST["en_" . substr($val, 3)]))));
					}
					if (strpos($val, "date")) {
						$map[substr($val, 3)] = array( array('egt', trim($_REQUEST[$val])), array('elt', trim($_REQUEST["en_" . substr($val, 3)])));
					}
				}
			}
			if (substr($val, 0, 3) == "bt_") {
				$array_date = explode("|", str_replace(" - ", '|', $_REQUEST[$val]));
				if (strpos($val, "time")) {
					$map[substr($val, 3)] = array( array('egt', date_to_int($array_date[0]), array('elt', date_to_int($array_date[0]))));
				}
				if (strpos($val, "date")) {
					$map[substr($val, 3)] = array( array('egt', $array_date[0], array('elt', $array_date[0])));
				}
			}

			if (substr($val, 0, 3) == "li_") {
				$map[substr($val, 3)] = array('like', '%' . trim($_REQUEST[$val]) . '%');
			}
			if (substr($val, 0, 3) == "eq_") {
				$map[substr($val, 3)] = array('eq', trim($_REQUEST[$val]));
			}
			if (substr($val, 0, 3) == "gt_") {
				$map[substr($val, 3)] = array('egt', trim($_REQUEST[$val]));
			}
			if (substr($val, 0, 3) == "lt_") {
				$map[substr($val, 3)] = array('elt', trim($_REQUEST[$val]));
			}
		}
		return $map;
	}

	protected function _list($model, $map, $sortBy = '', $asc = false) {
		//排序字段 默认为主键名
		if (isset($_REQUEST['_order'])) {
			$order = $_REQUEST['_order'];
		} else if (!empty($sortBy)) {
			$order = $sortBy;
		} else if (in_array('sort', get_model_fields($model))) {
			$order = 'sort';
			$asc = true;
		} else {
			$order = $model -> getPk();
		}
		//排序方式默认按照倒序排列
		//接受 sost参数 0 表示倒序 非0都 表示正序
		if (isset($_REQUEST['_sort'])) {
			$sort = $_REQUEST['_sort'] ? 'asc' : 'desc';
		} else {
			$sort = $asc ? 'asc' : 'desc';
		}
		//取得满足条件的记录数

		$count_model = clone $model;
		//取得满足条件的记录数
		if (!empty($count_model -> pk)) {
			$count = $count_model -> where($map) -> count($model -> pk);
		} else {
			$count = $count_model -> where($map) -> count();
		}
		if ($count > 0) {
			import("@.ORG.Util.Page");
			//创建分页对象
			if (!empty($_REQUEST['list_rows'])) {
				$listRows = $_REQUEST['list_rows'];
			} else {
				$listRows = get_user_config('list_rows');
			}
			$p = new Page($count, $listRows);
			//分页查询数据
			$voList = $model -> where($map) -> order("`" . $order . "` " . $sort) -> limit($p -> firstRow . ',' . $p -> listRows) -> select();
			$p -> parameter = $this -> _search();
			//分页显示
			$page = $p -> show();

			//列表排序显示
			$sortImg = $sort;

			//排序图标
			$sortAlt = $sort == 'desc' ? '升序排列' : '倒序排列';

			//排序提示
			$sort = $sort == 'desc' ? 1 : 0;

			//排序方式

			//模板赋值显示

			$name = $this -> getActionName();
			$this -> assign('list', $voList);
			$this -> assign('sort', $sort);
			$this -> assign('order', $order);
			$this -> assign('sortImg', $sortImg);
			$this -> assign('sortType', $sortAlt);
			$this -> assign("page", $page);
		}
		return;
	}

	/**显示top menu及 left menu **/

	protected function _assign_menu() {
		$model = D("Node");
		$user_id = get_user_id();
		if (session('menu' . $user_id)) {
			//如果已经缓存，直接读取缓存
			$menu = session('menu' . $user_id);
		} else {
			//读取数据库模块列表生成菜单项
			$menu = D("Node") -> access_list();
			$system_folder_menu = D("SystemFolder") -> get_folder_menu();
			$user_folder_menu = D("UserFolder") -> get_folder_menu();
			$menu = array_merge($menu, $system_folder_menu, $user_folder_menu);
			//缓存菜单访问
			session('menu' . $user_id, $menu);
		}

		$this -> assign('tree',list_to_tree($menu));
	}

	protected function _assign_folder_list() {
		if ($this -> config['app_type'] == 'personal') {
			$model = D("UserFolder");
		} else {
			$model = D("SystemFolder");
		}
		$list = $model -> get_folder_list();
		$tree = list_to_tree($list);
		$this -> assign('folder_list', dropdown_menu($tree));
	}

	protected function _assign_file_list($add_file) {
		$files = explode(';', $add_file);
		$where['id'] = array('in', $files);
		$model = M("File");
		$list = $model -> where($where) -> select();
		$this -> assign('file_list', $list);
	}

	protected function _set_field($id, $field, $val, $name = '') {
		if (empty($name)) {
			$name = $this -> getActionName();
		}
		$model = M($name);
		if (!empty($model)) {
			$pk = $model -> getPk();
			if (isset($id)) {
				if (is_array($id)) {
					$where[$pk] = array("in", $id);
				} else {
					$where[$pk] = array('in', explode(',', $id));
				}
				$admin = $this -> config['auth']['admin'];
				if (in_array('user_id', $model -> getDbFields()) && !$admin) {
					$where['user_id'] = array('eq', get_user_id());
				};
				$list = $model -> where($where) -> setField($field, $val);
				if ($list !== false) {
					return true;
				} else {
					return false;
				}
			} else {
				return false;
			}
		}
	}

	protected function _tag_manage($tag_name) {
		$this -> assign("tag_name", $tag_name);
		if ($this -> config['app_type'] == 'personal') {
			R('UserTag/index');
			$this -> assign('js_file', "UserTag:js/index");
		} else {
			R('SystemTag/index');
			$this -> assign('js_file', "SystemTag:js/index");
		}
	}

	protected function _get_new() {
		//获取未读邮件
		$user_id = get_user_id();
		$where['user_id'] = $user_id;
		$where['is_del'] = array('eq', '0');
		$where['folder'] = array( array('eq', 1), array('gt', 6), 'or');
		$where['read'] = array('eq', '0');
		$model = M("Mail");
		$new_mail = $model -> where($where) -> count();
		$this -> assign("new_mail", $new_mail);

		//获取待裁决
		$where = array();
		$FlowLog = M("FlowLog");
		$emp_no = $_SESSION['emp_no'];
		$where['emp_no'] = $emp_no;
		$where['_string'] = "result is null";
		$log_list = $FlowLog -> where($where) -> field('flow_id') -> select();
		$log_list = rotate($log_list);
		if (!empty($log_list)) {
			$map['id'] = array('in', $log_list['flow_id']);
			$todo_flow_list = $model -> where($map) -> count();
			$this -> assign("new_flow_todo", $todo_flow_list);
		}

		//获取最新通知
		$model = D('Notice');
		$where = array();
		$where['is_del'] = array('eq', '0');
		$folder_list = D("SystemFolder") -> get_authed_folder(get_user_id(), "NoticeFolder");
		$new_notice = 0;
		if ($folder_list) {
			$where['folder'] = array("in", $folder_list);
			$where['create_time'] = array('egt', time() - 3600 * 24 * 30);
			$new_notice_list = $model -> where($where) -> getField('id,create_time');
			$readed = get_user_config("readed_notice");			
			if ($new_notice_list){
				foreach ($new_notice_list as $key => $val){		
					if(strpos($readed,$key."|")===false){
						$new_notice++;	
					}						
				}
			}
		}		
		$this -> assign("new_notice",$new_notice);
		
		
		//获取待办事项
		$model = M("Todo");
		$where = array();
		$where['user_id'] = $user_id;
		$where['status'] = array("in", "1,2");
		$new_todo = M("Todo") -> where($where) -> count();
		$this -> assign("new_todo", $new_todo);
	}

	protected function _pushReturn($data, $info, $status, $time = null) {
		$user_id = get_user_id();
		$model = M("Push");
		$model -> user_id = $user_id;
		$model -> data = $data;
		$model -> status = $status;
		$model -> info = $info;
		if (empty($time)) {
			$model -> time = time();
		} else {
			$model -> time = $time;
		}
		$model -> add();
		exit();
	}
}
?>