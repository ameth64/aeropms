<?php
/*---------------------------------------------------------------------------
  小微OA系统 - 让工作更轻松快乐 

  Copyright (c) 2013 http://www.smeoa.com All rights reserved.                                             

  Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )  

  Author:  jinzhu.yin<smeoa@qq.com>                         

  Support: https://git.oschina.net/smeoa/smeoa               
 -------------------------------------------------------------------------*/

class PushAction extends CommonAction {
	protected $config=array('app_type'=>'asst');

	function server(){
		while (true) {
			$where = array();
			$user_id = $user_id = get_user_id();
			session_write_close();
			$where['user_id'] = $user_id;
			$where['time'] = array('elt', time() - 1);

			$model = M("Push");
			$data = $model -> where($where) -> find();
			$where['id'] = $data['id'];

			if ($data){
				$model -> delete($data['id']);
				echo json_encode($data);
				flush();
				die;
			} else {
				usleep(500000); // sleep 10ms to unload the CPU
				clearstatcache();
			}
		}
	}

	//获取当前状态
	function status(){
		$data=get_new_count();
		$this -> ajaxReturn($data);
	}

	function add($status, $info, $data) {
		$user_id = get_user_id();
		$model = M("Push");
		$model -> user_id = $user_id;
		$model -> data = $data;
		$model -> status = $status;
		$model -> info = $info;
		$model -> add();
	}
}
?>