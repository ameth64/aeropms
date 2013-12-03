<?php
/*---------------------------------------------------------------------------
 小微OA系统 - 让工作更轻松快乐

 Copyright (c) 2013 http://www.smeoa.com All rights reserved.

 Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )

 Author:  jinzhu.yin<smeoa@qq.com>

 Support: https://git.oschina.net/smeoa/smeoa
 -------------------------------------------------------------------------*/

class WorkLogAction extends CommonAction {
	protected $config = array('app_type' => 'common', 'action_auth' => array('folder' => 'read', 'tag_manage' => 'admin', 'mark' => 'admin','read_emp' => 'admin'));
	//过滤查询字段
	function _search_filter(&$map) {
		$map['is_del'] = array('eq', '0');
	}

	public function index(){
		$widget['date-range'] = true;		
		$this -> assign("widget", $widget);
		$this->assign('user_id',get_user_id());				
		$this->assign("title",'日志查询');		
		$auth=$this->config['auth'];
		$this->assign('auth',$auth);		
		if($auth['admin']){
			$node = D("Dept");
			$dept_id=$_SESSION['dept_id'];					
			$menu = array();
			$menu = $node -> field('id,pid,name') ->where("is_del=0")-> order('sort asc') -> select();
			$tree = list_to_tree($menu,$dept_id);
			$count=count($tree);
			if(empty($count)){
				/*获取部门列表*/
				$dept_name=$_SESSION['dept_name'];	
				$html ='';
				$html = $html . "<option value='{$dept_id}'>{$dept_name}</option>";
				$this -> assign('dept_list',$html);
			
				/*获取人员列表*/
				$where['dept_id']=array('eq',$dept_id);
				$emp_list=D("User")->where($where)->getField('id,emp_name');
				$this->assign('emp_list',$emp_list);					
			}else{
				/*获取部门列表*/								
				$this -> assign('dept_list', select_tree_menu($tree));
				$dept_list=tree_to_list($tree);
				$dept_list=rotate($dept_list);
				$dept_list=$dept_list['id'];
				
				/*获取人员列表*/
				$where['dept_id']=array('in',$dept_list);
				$emp_list=D("User")->where($where)->getField('id,emp_name');
				$this->assign('emp_list',$emp_list);				
			}
		}
				
				
		$map = $this -> _search();
			
		if($auth['admin']){
			$map['dept_id']=$where['dept_id'];
		}else{
			$map['user_id']=get_user_id();
		}
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}
			
		$model = D("WorkLogView");				
		if (!empty($model)) {
			$this -> _list($model,$map);
		}
		$this -> display();
	}

	public function edit() {
		$widget['date'] = true;	
		$widget['uploader'] = true;		
		$this -> assign("widget", $widget);
		$this->_edit();
	}

	public function add() {
		$widget['date'] = true;	
		$widget['uploader'] = true;		
		$this -> assign("widget", $widget);		
		$this->display();
	}
	
	function upload() {
		$this -> _upload();
	}

	function down() {
		$this -> _down();
	}
}
