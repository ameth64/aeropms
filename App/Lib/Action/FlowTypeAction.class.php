<?php
/*---------------------------------------------------------------------------
  小微OA系统 - 让工作更轻松快乐 

  Copyright (c) 2013 http://www.smeoa.com All rights reserved.                                             

  Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )  

  Author:  jinzhu.yin<smeoa@qq.com>                         

  Support: https://git.oschina.net/smeoa/smeoa               
 -------------------------------------------------------------------------*/

class FlowTypeAction extends CommonAction {
    protected $config=array('app_type'=>'master');

	//过滤查询字段
	function _search_filter(&$map) {
		if (!empty($_POST['keyword'])){
			$map['name'] = array('like', "%" . $_POST['keyword'] . "%");
		}
	}

	function add(){
				
		$widget['editor']=true;
		$this->assign("widget",$widget);
		
		$this -> assign("user_id",get_user_id());
		$this ->_assign_tag_list();			
		$this->display();
	}
	
	function index(){
		$model = D("FlowTypeView");
		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}
		$list = $model -> where($map) ->order('tag,sort')-> select();
		$this -> assign('list', $list);
		$this ->_assign_tag_list();
		$this -> display();
		return;
	}

	function mark() {
   		$action = $_REQUEST['action'];
		$id = $_REQUEST["id"];
		$val = $_REQUEST["val"];
		if (!empty($id)) {
			switch ($action){
				case 'del' :					
						$result=$this->_destory($id,true);
						if ($result) {
							$this -> ajaxReturn('', "删除成功", 1);
						} else {
							$this -> ajaxReturn('', "删除失败", 0);
						}
					break;
				case 'move_folder' :
					if (!empty($id)){
						$model = D("SystemTag");
						$model -> del_data_by_row($id);
						if (!empty($val)){
							$result = $model -> set_tag($id,$val);
							$field = 'tag';
							$result=$this -> _set_field($id, $field, $val);
						}
					};
				if ($result !== false) {
					$this -> assign('jumpUrl', get_return_url());
					$this -> success('操作成功!');
				} else {
					//失败提示
					$this -> error('操作失败!');
				}
			}
		}
	}
	
	protected function _assign_tag_list() {
		$model = D("SystemTag");
		$tag_list = $model -> get_tag_list('id,name');
		$this -> assign("tag_list", $tag_list);
	}

	function tag_manage() {
		$this -> _tag_manage("分组管理",false);
	}

	function edit() {
		$widget['editor']=true;
		$this->assign("widget",$widget);			

		$this -> assign("user_id",get_user_id());

		$model = D("FlowTypeView");
		$id = $_REQUEST['id'];
		$vo = $model -> getById($id);
		$this -> assign('vo', $vo);
		$this->_assign_tag_list();
		$this -> display();
	}
}
?>