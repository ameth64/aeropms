<?php
/*---------------------------------------------------------------------------
 小微OA系统 - 让工作更轻松快乐

 Copyright (c) 2013 http://www.smeoa.com All rights reserved.

 Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )

 Author:  jinzhu.yin<smeoa@qq.com>

 Support: https://git.oschina.net/smeoa/smeoa
 -------------------------------------------------------------------------*/

class FlowAction extends CommonAction {
	protected $config = array('app_type' => 'flow', 'action_auth' => array('folder' =>'read','mark' =>'admin','report'=>'admin'));

	function _search_filter(&$map) {
		$map['is_del'] = array('eq', '0');
		if (!empty($_REQUEST['keyword'])) {
			$keyword = $_POST['keyword'];
			$map['name'] = array('like', "%" . $keyword . "%");					
		}
	}

	function index(){

		$model=D("Flow");
		$model = D('FlowTypeView');
		$where['is_del'] = 0;
		
		$user_id=get_user_id();
		$role_list=D("Role")->get_role_list($user_id);
		$role_list=rotate($role_list);
		$role_list=$role_list['role_id'];
		
		$duty_list=D("Role")->get_duty_list($role_list);
		$duty_list=rotate($duty_list);
		$duty_list=$duty_list['duty_id'];

		$where['request_duty']=array('in',$duty_list);	
			
		$list = $model -> where($where)->order('sort')-> select();
		$this -> assign("list", $list);
		$this -> _assign_tag_list();
		$this -> display();
	}
	
	function _flow_auth_filter($folder,&$map){
		$emp_no = get_emp_no();
		$user_id = get_user_id();		
		switch ($folder){
			case 'confirm' :
				$this -> assign("folder_name", '待办');
				$FlowLog = M("FlowLog");
				$where['emp_no'] = $emp_no;
				$where['_string'] = "result is null";
				$log_list = $FlowLog -> where($where) -> field('flow_id') -> select();
				$log_list = rotate($log_list);
				
				if (!empty($log_list)) {
					$map['id'] = array('in', $log_list['flow_id']);
				} else {
					$map['_string']='1=2';
				}
				break;

			case 'darft' :
				$this -> assign("folder_name", '草稿');
				$map['user_id'] = $user_id;
				$map['step'] = 10;
				break;

			case 'submit' :
				$this -> assign("folder_name", '提交');
				$map['user_id'] = array('eq',$user_id);
				$map['step'] = array('gt',10);
				break;

			case 'finish' :
				$this -> assign("folder_name", '办理');
				$FlowLog = M("FlowLog");
				$where['emp_no'] = $emp_no;
				$where['_string'] = "result is not null";
				$log_list = $FlowLog -> where($where) -> field('flow_id') -> select();
				$log_list = rotate($log_list);
				if (!empty($log_list)) {
					$map['id'] = array('in', $log_list['flow_id']);
				} else {
					$map['_string']='1=2';
				}
				break;

			case 'receive' :
				$this -> assign("folder_name", '收到');
				$FlowLog = M("FlowLog");
				$where['emp_no'] = $emp_no;
				$where['step'] = 100;
				$log_list = $FlowLog -> where($where) -> field('flow_id') -> select();
				$log_list = rotate($log_list);
				if (!empty($log_list)) {
					$map['id'] = array('in',$log_list['flow_id']);
				} else {
					$map['_string']='1=2';
				}
				break;	
			case 'report' :
				$this -> assign("folder_name", '统计报告');
				$role_list=D("Role")->get_role_list($user_id);
				$role_list=rotate($role_list);
				$role_list=$role_list['role_id'];
				
				$duty_list=D("Role")->get_duty_list($role_list);
				$duty_list=rotate($duty_list);
				$duty_list=$duty_list['duty_id'];			
				if (!empty($duty_list)) {
					$map['report_duty'] = array('in',$duty_list);
					$map['step']=array('gt',10);
				} else {
					$this->error("没有权限");
				}
				break;							
		}
	}
	
	function folder(){
		 
		$widget['date'] = true;
		$this -> assign("widget", $widget);

		$emp_no = get_emp_no();
		$user_id = get_user_id();

		$flow_type_where['is_del']=array('eq',0);
		
		$flow_type_list=M("FlowType")->where($flow_type_where)->getField("id,name");
		$this->assign("flow_type_list",$flow_type_list);
		
		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}
		
		$folder = $_REQUEST['fid'];
		$this -> assign("folder", $folder);
		
		if(empty($folder)){
			$this ->error("系统错误");
		}
		$this->_flow_auth_filter($folder,$map);
		if($_REQUEST['mode']=='export'){
			$this->folder_export();
		}
		$model = D("FlowView");
		$this -> _list($model, $map);
		$this -> display();
	}
	
	function folder_export(){
		$model = M("Contact");
		$where['user_id'] = array('eq', get_user_id());
		$list = $model -> where($where) -> select();

		//导入thinkphp第三方类库
		Vendor('Excel.PHPExcel');
		
		$inputFileName = "Public/templete/contact.xlsx";
		//$objPHPExcel = PHPExcel_IOFactory::load($inputFileName);
		$objPHPExcel=new PHPExcel();
 
		$objPHPExcel -> getProperties() -> setCreator("smeoa") -> setLastModifiedBy("smeoa") -> setTitle("Office 2007 XLSX Test Document") -> setSubject("Office 2007 XLSX Test Document") -> setDescription("Test document for Office 2007 XLSX, generated using PHP classes.") -> setKeywords("office 2007 openxml php") -> setCategory("Test result file");
		// Add some data
		$i = 1;
		//dump($list);
		foreach ($list as $val) {
			$i++;
			$objPHPExcel -> setActiveSheetIndex(0) -> setCellValue("A$i", $val["name"]) -> setCellValue("B$i", $val["company"]) -> setCellValue("C$i", $val["dept"]) -> setCellValue("D$i", $val["position"]) -> setCellValue("E$i", $val["office_tel"]) -> setCellValue("F$i", $val["mobile_tel"]) -> setCellValue("G$i", $val["email"]) -> setCellValue("H$i", $val["im"]) -> setCellValue("I$i", $val["website"]) -> setCellValue("J$i", $val["address"]) -> setCellValue("J$i", $val["remark"]);
		}
		// Rename worksheet
		$objPHPExcel -> getActiveSheet() -> setTitle('Contact');

		// Set active sheet index to the first sheet, so Excel opens this as the first sheet
		$objPHPExcel -> setActiveSheetIndex(0);
		$file_name="contact.xlsx";
		// Redirect output to a client’s web browser (Excel2007)
		header("Content-Type: application/force-download");
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header("Content-Disposition:attachment;filename =" . str_ireplace('+', '%20', URLEncode($file_name)));
		header('Cache-Control: max-age=0');

		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		//readfile($filename);
		$objWriter -> save('php://output');
		exit ;
	}

	function add() {
		$widget['date'] = true;
		$widget['uploader'] = true;
		$widget['editor'] = true;
		$this -> assign("widget", $widget);

		$type_id = $_REQUEST['type'];
		$model = M("FlowType");
		$flow_type = $model -> find($type_id);
		$this -> assign("flow_type", $flow_type);

		$model_flow_field=D("FlowField");
		$field_list = $model_flow_field ->get_field_list($type_id);
		$this -> assign("field_list", $field_list);
		
		$this -> display();
	}

	/** 插入新新数据  **/
	protected function _insert(){
		$model = D("Flow");
		if (false === $model -> create()) {
			$this -> error($model -> getError());
		}
		if (in_array('user_id', $model -> getDbFields())) {
			$model -> user_id = get_user_id();
		};
		if (in_array('user_name', $model -> getDbFields())) {
			$model -> user_name = get_user_name();
		};
		/*保存当前数据对象 */
		$list = $model -> add();

		$model_flow_filed=D("FlowField")->set_field($list);

		if ($list !== false){//保存成功
			$this -> assign('jumpUrl', get_return_url());
			$this -> success('新增成功!');
		} else {
			$this -> error('新增失败!');
			//失败提示
		}
	}

	function read(){
		$folder = $_REQUEST['fid'];
		$this -> assign("folder", $folder);	
		if(empty($folder)){
			$this ->error("系统错误");
		}
		$this->_flow_auth_filter($folder,$map);			
		$model = D("Flow");
		$id = $_REQUEST['id'];
		$where['id']=array('eq',$id);
		$where['_logic'] = 'and';
		$map['_complex'] = $where;	
		$vo = $model ->where($map)->find();
		if(empty($vo)){
			$this ->error("系统错误");	
		}
		
		$flow_type_id=$vo['type'];
		$this -> assign('vo', $vo);
		$this -> assign("emp_no", $vo['emp_no']);
		$this -> assign("user_name", $vo['user_name']);

		$model_flow_field=D("FlowField");
		$field_list = $model_flow_field ->get_data_list($id);
		$this -> assign("field_list", $field_list);

		$model = M("FlowType");
		$flow_type= $model -> find($flow_type_id);
		$this -> assign("flow_type", $flow_type);

		$model = M("FlowLog");
		$where['flow_id'] = $id;
		$where['step'] = array('lt',100);
		$where['_string'] = "result is not null";
		$flow_log = $model -> where($where) ->order("id")-> select();
		$this -> assign("flow_log", $flow_log);

		$where = array();
		$where['flow_id'] = $id;
		$where['emp_no'] = get_emp_no();
		$where['_string'] = "result is null";
		$to_confirm = $model -> where($where) -> find();
		$this -> assign("to_confirm", $to_confirm);
		
		if (!empty($to_confirm)) {
			$is_edit = $flow_type['is_edit'];
			$this -> assign("is_edit", $is_edit);
			if (!empty($is_edit)) {
				$widget['uploader'] = true;
				$widget['editor'] = true;
				$this -> assign("widget", $widget);
			}
		}

		$where = array();
		$where['flow_id'] = $id;
		$where['_string'] = "result is not null";
		$where['emp_no']=array('neq',$vo['emp_no']);
		$confirmed = $model ->Distinct(true)-> where($where) -> field('emp_no,user_name') -> select();
		$this -> assign("confirmed", $confirmed);
		$this -> display();
	}

	function edit() {
		$widget['date'] = true;
		$widget['uploader'] = true;
		$widget['editor'] = true;
		$this -> assign("widget", $widget);

		$folder = $_REQUEST['fid'];
		$this -> assign("folder", $folder);

		if(empty($folder)){
			$this ->error("系统错误");
		}
		$this->_flow_auth_filter($folder,$map);	
		
		$model = D("Flow");
		$id = $_REQUEST['id'];
		$where['id']=array('eq',$id);
		$where['_logic'] = 'and';
		$map['_complex'] = $where;		
		$vo = $model ->where($map)->find();
		if(empty($vo)){
			$this ->error("系统错误");	
		}
		$this -> assign('vo', $vo);
		$model_flow_field=D("FlowField");
		$field_list = $model_flow_field ->get_data_list($id);
		$this -> assign("field_list", $field_list);

		$model = M("FlowType");
		$type = $vo['type'];
		$flow_type = $model -> find($type);
		$this -> assign("flow_type", $flow_type);
		$model = M("FlowLog");
		$where['flow_id'] = $id;
		$where['_string'] = "result is not null";
		$flow_log = $model -> where($where) -> select();

		$this -> assign("flow_log", $flow_log);
		$where = array();
		$where['flow_id'] = $id;
		$where['emp_no'] = get_emp_no();
		$where['_string'] = "result is null";
		$confirm = $model -> where($where) -> select();
		$this -> assign("confirm", $confirm[0]);
		$this -> display();
	}

	/* 更新数据  */
	protected function _update() {
		$name = $this -> getActionName();
		$model = D($name);
		if (false === $model -> create()) {
			$this -> error($model -> getError());
		}
		$flow_id=$model->id;
		$list = $model -> save();

		$model_flow_filed=D("FlowField")->set_field($flow_id);
		if (false !== $list) {
			$this -> assign('jumpUrl', get_return_url());
			$this -> success('编辑成功!');
			//成功提示
		} else {
			$this -> error('编辑失败!');
			//错误提示
		}
	}

	public function mark() {
		$action = $_REQUEST['action'];
		$user_id = $_REQUEST['user_id'];
		$emp_no=$_REQUEST['emp_no'];
		switch ($action) {
			case 'approve' :
				$model = D("FlowLog");
				if (false === $model -> create()) {
					$this -> error($model -> getError());
				}
				$model -> result = 1;
				if (in_array('user_id', $model -> getDbFields())) {
					$model -> user_id = get_user_id();
				};
				if (in_array('user_name', $model -> getDbFields())) {
					$model -> user_name = get_user_name();
				};

				$flow_id = $model -> flow_id;
				$step = $model -> step;
				//保存当前数据对象
				$list = $model -> save();

				$model = D("FlowLog");
				$model -> where("step=$step and flow_id=$flow_id and result is null") ->delete();

				if ($list !== false) {//保存成功
					D("Flow") -> next_step($flow_id,$step);
					$this -> assign('jumpUrl',U('flow/folder?fid=confirm'));
					$this -> success('操作成功!');
				} else {
					//失败提示
					$this -> error('操作失败!');
				}
				break;
			case 'back' :	
	
				$model = D("FlowLog");
				if (false === $model -> create()) {
					$this -> error($model -> getError());
				}
				
				$model -> result = 2;
				if (in_array('user_id', $model -> getDbFields())) {
					$model -> user_id = get_user_id();
				};
				if (in_array('user_name', $model -> getDbFields())) {
					$model -> user_name = get_user_name();
				};

				$flow_id = $model -> flow_id;
				$step = $model -> step;
				//保存当前数据对象
				$list = $model -> save();

				if ($list!== false) {//保存成功	
					D("Flow") -> next_step($flow_id,$step,$emp_no);
					$this -> assign('jumpUrl',U('flow/folder?fid=confirm'));
					$this -> success('操作成功!');
				} else {
					//失败提示
					$this -> error('操作失败!');
				}
				break;				
			case 'reject' :
				$model = D("FlowLog");
				if (false === $model -> create()) {
					$this -> error($model -> getError());
				}
				$model -> result = 0;
				if (in_array('user_id', $model -> getDbFields())) {
					$model -> user_id = get_user_id();
				};
				if (in_array('user_name', $model -> getDbFields())) {
					$model -> user_name = get_user_name();
				};

				$flow_id = $model -> flow_id;
				$step = $model -> step;
				//保存当前数据对象
				$list = $model -> save();
				//可以裁决的人有多个人的时候，一个人评价完以后，禁止其他人重复裁决。
				$model = D("FlowLog");
				$model -> where("step=$step and flow_id=$flow_id and result is null") ->delete();

				if ($list !== false) {//保存成功
					D("Flow") -> where("id=$flow_id") -> setField('step', 0);
					$this -> assign('jumpUrl',U('flow/folder?fid=confirm'));
					$this -> success('操作成功!');
				} else {
					//失败提示
					$this -> error('操作失败!');
				}
				break;
			default :
				break;
		}
	}

	public function approve() {

		$model = D("FlowLog");
		if (false === $model -> create()) {
			$this -> error($model -> getError());
		}
		$model -> result = 1;
		if (in_array('user_id', $model -> getDbFields())) {
			$model -> user_id = get_user_id();
		};
		if (in_array('user_name', $model -> getDbFields())) {
			$model -> user_name = get_user_name();
		};

		$flow_id = $model -> flow_id;
		$step = $model -> step;
		//保存当前数据对象
		$list = $model -> save();

		$model = D("FlowLog");
		$model -> where("step=$step and flow_id=$flow_id and result is null") -> setField('is_del', 1);

		if ($list !== false) {//保存成功
			D("Flow") -> next_step($flow_id, $step);
			$this -> assign('jumpUrl',U('flow/confirm'));
			$this -> success('操作成功!');
		} else {
			//失败提示
			$this -> error('操作失败!');
		}
	}

	public function reject() {
		$model = D("FlowLog");
		if (false === $model -> create()) {
			$this -> error($model -> getError());
		}
		$model -> result = 0;
		if (in_array('user_id', $model -> getDbFields())) {
			$model -> user_id = get_user_id();
		};
		if (in_array('user_name', $model -> getDbFields())) {
			$model -> user_name =get_user_name();
		};

		$flow_id = $model -> flow_id;
		$step = $model -> step;
		//保存当前数据对象
		$list = $model -> save();
		//可以裁决的人有多个人的时候，一个人评价完以后，禁止其他人重复裁决。
		$model = D("FlowLog");
		$model -> where("step=$step and flow_id=$flow_id and result is null") -> setField('is_del', 1);

		if ($list !== false) {//保存成功
			D("Flow") -> where("id=$flow_id") -> setField('step', 0);
			$this -> assign('jumpUrl',U('flow/confirm'));
			$this -> success('操作成功!');
		} else {
			//失败提示
			$this -> error('操作失败!');
		}
	}

	public function down() {
		$this -> _down();
	}

	public function upload() {
		$this -> _upload();
	}

	protected function _assign_tag_list() {
		$model = D("SystemTag");
		$tag_list = $model -> get_tag_list('id,name','FlowType');
		$this -> assign("tag_list", $tag_list);
	}
}
