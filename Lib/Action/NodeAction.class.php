<?php
/*---------------------------------------------------------------------------
  小微OA系统 - 让工作更轻松快乐 

  Copyright (c) 2013 http://www.smeoa.com All rights reserved.                                             

  Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )  

  Author:  jinzhu.yin<smeoa@qq.com>                         

  Support: https://git.oschina.net/smeoa/smeoa               
 -------------------------------------------------------------------------*/


class NodeAction extends CommonAction {

	protected $config=array('app_type'=>'master','action_auth'=>array('node'=>'admin'));

	public function _before_index() {
		$model = M("Node");
		$list = $model -> where('pid=0') -> order('sort asc') -> getField('id,name');
		$this -> assign('groupList', $list);
	}

	public function index(){
		$node = M("Node");
		if (!empty($_POST['eq_pid'])) {
			$eq_pid = $_POST['eq_pid'];
		} elseif (!empty($_GET['eq_pid'])) {
			$eq_pid = $_GET['eq_pid'];
		} else {
			$eq_pid = $node -> where('pid=0') -> order('sort asc') -> getField('id');
		}
		
		$this -> assign('eq_pid', $eq_pid);

		$menu = array();
		$menu = $node -> field('id,pid,name') -> order('sort asc') -> select();
		$tree = list_to_tree($menu, $eq_pid);
		

		$model = M("Node");
		$list = $model -> order('sort asc') -> getField('id,name');
		$this -> assign('node_list', $list);
		$this -> assign('menu', popup_tree_menu($tree));
		$this -> display();
	}

	function winpop() {
		$menu = D("Node") -> order('sort asc') -> select();
		$tree = list_to_tree($menu);
		$this -> assign('menu', popup_tree_menu($tree));
		$this -> display();
	}
}
?>