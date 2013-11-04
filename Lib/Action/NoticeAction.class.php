<?php
/*---------------------------------------------------------------------------
  小微OA系统 - 让工作更轻松快乐 

  Copyright (c) 2013 http://www.smeoa.com All rights reserved.                                             

  Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )  

  Author:  jinzhu.yin<smeoa@qq.com>                         

  Support: https://git.oschina.net/smeoa/smeoa               
 -------------------------------------------------------------------------*/

class NoticeAction extends CommonAction {
	
	protected $config=array('app_type'=>'common','action_auth'=>array('folder'=>'read','mark'=>'admin','upload'=>'write'),'folder_auth'=>true);
	
	//过滤查询字段
	function _search_filter(&$map) {
		$map['is_del'] = array('eq', '0');
		if (!empty($_REQUEST['keyword']) && empty($map['name'])) {
			$map['name'] = array('like', "%" . $_POST['keyword'] . "%");
		}
	}

	public function index() {
		$widget['date-range'] = true;		
		$this -> assign("widget", $widget);
				
		$user_id = get_user_id();
		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}

		$model = D("NoticeView");
		if (!empty($model)) {
			$this -> _list($model, $map);
		}
		$this -> display();
		return;
	}

	public function mark(){
		$action = $_REQUEST['action'];
		$id = $_REQUEST['id'];
		switch ($action) {
			case 'del' :
				$where['id'] = array('in', $id);
				$folder = M("Doc") -> distinct(true) -> where($where) -> field("folder") -> select();
				if (count($folder) == 1) {
					$auth = D("SystemFolder") -> get_folder_auth($folder[0]["folder"]);
					if ($auth['admin'] == true) {
						$field = 'is_del';
							$result=$this -> _set_field($id,$field,1);
							if($result){
								$this -> ajaxReturn('',"删除成功",1);		
							}else{
								$this -> ajaxReturn('', "删除失败",0);
							}
					}
				} else {
					$this -> ajaxReturn('', "删除失败",0);
				}
				break;
			case 'move_folder' :
				$target_folder = $_REQUEST['val'];
				$where['id'] = array('in', $id);
				$folder = M("Notice") -> distinct(true) -> where($where) -> field("folder") -> select();
				if (count($folder) == 1){
					$auth = D("SystemFolder") ->get_folder_auth($folder[0]["folder"]);
					if ($auth['admin'] == true){
						$field = 'folder';
						$this -> _set_field($id, $field, $target_folder);
					}
					$this -> ajaxReturn('', "操作成功", 1);
				} else {
					$this -> ajaxReturn('', "操作成功", 1);
				}
				break;

			default :
				break;
		}
	}

	function add() {
		$widget['uploader'] = true;
		$widget['editor'] = true;
		$this -> assign("widget", $widget);		
		
		$fid = $_REQUEST['fid'];
		$this -> assign('folder', $fid);
		$this->display();
	}

	public function _before_edit() {
		$widget['uploader'] = true;
		$widget['editor'] = true;
		$this -> assign("widget", $widget);
	}

	public function _before_read() {
		$id = $_REQUEST['id'];
		$user_id = get_user_id();
		$model = M("Notice");
		$folder_id = $model -> where("id=$id") -> getField('folder');
		$this -> assign("auth", $auth = D("SystemFolder") -> get_folder_auth($folder_id));
	}

	public function folder() {
		$widget['date-range'] = true;		
		$this -> assign("widget", $widget);
		
		$model = D("Notice");
		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}
		
		$folder_id = $_REQUEST['fid'];
		$this -> assign("folder_id", $folder_id);	
			
		$map['folder'] = $folder_id;
		if (!empty($model)) {
			$this -> _list($model, $map);
		}

		$this ->assign("folder_name",D("SystemFolder")->get_folder_name($folder_id));
		$this->assign('auth',$this->config['auth']);
		$this ->_assign_folder_list();
			
		$this -> display();
	}

	public function upload() {
		$this->_upload();
	}

	public function down() {
		$this->_down();
	}
}
