<?php
/*---------------------------------------------------------------------------
 小微OA系统 - 让工作更轻松快乐

 Copyright (c) 2013 http://www.smeoa.com All rights reserved.

 Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )

 Author:  jinzhu.yin<smeoa@qq.com>

 Support: https://git.oschina.net/smeoa/smeoa
 -------------------------------------------------------------------------*/

class AuthCheckBehavior extends Behavior {
	protected $config;
	public function run(&$params) {
		//个人数据
		$this -> config = &$params;
		$app_type = $params['app_type'];

		switch($app_type) {
			case 'public' :
				$auth = array('admin' => false, 'write' => false, 'read' => true);
				$params['auth'] = $auth;
				return true;
				break;

			case 'asst' :
				$auth = array('admin' => true, 'write' => true, 'read' => true);
				$params['auth'] = $auth;
				return true;
				break;

			case 'personal' :
				$auth = array('admin' => true, 'write' => true, 'read' => true);
				$params['auth'] = $auth;
				return true;
				break;

			case 'common' :
				$action_auth = C('AUTH');
				if (!empty($params['action_auth'])) {
					$action_auth = array_merge(C('AUTH'), $params['action_auth']);
				}
				$auth = $this -> get_auth();
				break;

			case 'flow' :
				$action_auth = C('AUTH');
				if (!empty($params['action_auth'])) {
					$action_auth = array_merge(C('AUTH'), $params['action_auth']);
				}
				$auth = $this -> get_auth();
				break;

			case 'master' :
				$action_auth = C('AUTH');
				if (!empty($params['action_auth'])) {
					$action_auth = array_merge(C('AUTH'), $params['action_auth']);
				}
				$auth = $this -> get_auth();
				if ($auth['admin']) {
					return true;
				}
				break;
			default :
				$action_auth = C('AUTH');
				$auth = $this -> get_auth();
				break;
		}
 
		//die;
		if ($auth[$action_auth[ACTION_NAME]]) {
			$this -> config['auth'] = $auth;
			return true;
		} else {
			$auth_id = session(C('USER_AUTH_KEY'));
			if (!isset($auth_id)) {
				//跳转到认证网关
				redirect(U(C('USER_AUTH_GATEWAY')));
			}
			$e['message'] = "没有权限";
			include  C('TMPL_NO_HAVE_AUTH');
			die ;
		};
	}

	function get_auth() {
		if (!empty($this -> config['folder_auth'])&&!empty($_REQUEST['fid'])) {
			$folder_id = $_REQUEST['fid'];
			if (!empty($folder_id)){
				return D("SystemFolder") -> get_folder_auth($folder_id);
			}
		}

		$access_list = D("Node") -> access_list();
		$access_list = array_filter($access_list, 'filter_module');
		$access_list = rotate($access_list);
		//dump($access_list);
		$module_list = $access_list['url'];
		$module_list = array_map("get_module", $module_list);
		$module_list = str_replace("_", "", $module_list);
				
		//dump($access_list);
		$access_list_admin = array_filter(array_combine($module_list,$access_list['admin']));
		$access_list_write = array_filter(array_combine($module_list, $access_list['write']));
		$access_list_read = array_filter(array_combine($module_list, $access_list['read']));

		$auth['admin'] = array_key_exists(strtolower(MODULE_NAME), $access_list_admin);
		$auth['write'] = array_key_exists(strtolower(MODULE_NAME), $access_list_write);
		$auth['read'] = array_key_exists(strtolower(MODULE_NAME), $access_list_read);

		
		if ($auth['admin'] == true) {
			$auth['write'] = true;
		}
		if ($auth['write'] == true) {
			$auth['read'] = true;
		}
		return $auth;
	}
}
?>