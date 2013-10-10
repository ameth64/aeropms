<?php
/*---------------------------------------------------------------------------
  С΢OAϵͳ - �ù��������ɿ��� 

  Copyright (c) 2013 http://www.smeoa.com All rights reserved.                                             

  Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )  

  Author:  jinzhu.yin<smeoa@qq.com>                         

  Support: https://git.oschina.net/smeoa/smeoa               
 -------------------------------------------------------------------------*/


class DeptAction extends CommonAction {

	protected $config=array('app_type'=>'master');
	
	public function index() {
		
		if (isset($_POST['eq_is_del'])){					
			$eq_is_del = $_POST['eq_is_del'];
			
		} else{
			$eq_is_del="0";
		}
		$this->assign('eq_is_del',$eq_is_del);
		
		if($eq_is_del!="#"){
			$map['is_del']=array('eq',$eq_is_del);				
		}
				
		$node = M("Dept");
		$menu = array();
		$menu = $node ->where($map)-> field('id,pid,name') -> order('sort asc') -> select();
		$tree = list_to_tree($menu);		
		$this -> assign('menu', popup_tree_menu($tree));

		$model = M("Dept");
		$list = $model ->order('sort asc') -> getField('id,name');
		$this -> assign('dept_list', $list);

		$model = M("DeptGrade");
		$list = $model ->where('is_del=0')-> order('sort asc') -> getField('id,name');
		$this -> assign('dept_grade_list', $list);

		$this -> display();
	}

	public function winpop() {
		$node = M("Dept");
		$menu = array();
		$menu = $node ->where('is_del=0') ->field('id,pid,name') -> order('sort asc') -> select();

		$tree = list_to_tree($menu);
		$this -> assign('menu', popup_tree_menu($tree));

		$this -> assign('pid', $pid);
		$this -> display();
	}

	public function winpop2() {
		$node = M("Dept");
		$menu = array();
		$menu = $node -> field('id,pid,name') -> order('sort asc') -> select();

		$tree = list_to_tree($menu);
		$this -> assign('pid', $pid);
		$this -> assign('menu', popup_tree_menu($tree));
		$this -> display();
	}
}
?>