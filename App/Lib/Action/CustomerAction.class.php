<?php
/*---------------------------------------------------------------------------
 小微OA系统 - 让工作更轻松快乐

 Copyright (c) 2013 http://www.smeoa.com All rights reserved.

 Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )

 Author:  jinzhu.yin<smeoa@qq.com>

 Support: https://git.oschina.net/smeoa/smeoa
 -------------------------------------------------------------------------*/

class CustomerAction extends CommonAction {

	protected $config = array('app_type' => 'common', 'action_auth' => array('set_tag' => 'admin', 'tag_manage' => 'admin'));

	//过滤查询字段
	function _search_filter(&$map) {
		$map['user_id'] = array('eq', get_user_id());
		$map['is_del'] = array('eq', '0');
		if (!empty($_POST['tag'])) {
			$map['tag'] = $_POST['tag'];
		}
		if (!empty($_POST['keyword'])) {
			$keyword = $_POST['keyword'];
			$where['name'] = array('like', "%" . $keyword . "%");
			$where['office_tel'] = array('like', "%" . $keyword . "%");
			$where['office_tel'] = array('like', "%" . $keyword . "%");
			$where['_logic'] = 'or';
			$map['_complex'] = $where;
		}
	}

	function index() {
		$model = M("Customer");
		$where['is_del'] = 0;
		$list = $model -> where($where) -> select();
		$this -> assign('list', $list);
		$tag_data = D("SystemTag") -> get_data_list();

		$new = array();
		foreach ($tag_data as $val) {
			$new[$val['row_id']] = $new[$val['row_id']] . $val['tag_id'] . ",";
		}
		$this -> assign('tag_data', $new);
		$this -> _assign_tag_list();
		$this -> display();
		return;
	}

	function export() {
		$model = M("Customer");
		$list = $model -> where($where) -> select();

		Vendor('Excel.PHPExcel');
		//导入thinkphp第三方类库

		$inputFileName = C("SAVE_PATH") . "templete/customer.xlsx";
		$objPHPExcel = PHPExcel_IOFactory::load($inputFileName);

		$objPHPExcel -> getProperties() -> setCreator("smeoa") -> setLastModifiedBy("smeoa") -> setTitle("Office 2007 XLSX Test Document") -> setSubject("Office 2007 XLSX Test Document") -> setDescription("Test document for Office 2007 XLSX, generated using PHP classes.") -> setKeywords("office 2007 openxml php") -> setCategory("Test result file");
		// Add some data
		$i = 1;
		//dump($list);
		foreach ($list as $val) {
			$i++;
			$objPHPExcel -> setActiveSheetIndex(0) -> setCellValue("A$i", $val["name"]) -> setCellValue("B$i", $val["short"]) -> setCellValue("C$i", $val["biz_license"]) -> setCellValue("D$i", $val["payment"]) -> setCellValue("E$i", $val["address"]) -> setCellValue("F$i", $val["salesman"]) -> setCellValue("G$i", $val["contact"]) -> setCellValue("H$i", $val["email"]) -> setCellValue("I$i", $val["office_tel"]) -> setCellValue("J$i", $val["mobile_tel"]) -> setCellValue("J$i", $val["fax"]) -> setCellValue("L$i", $val["im"]) -> setCellValue("M$i", $val["remark"]);
		}
		// Rename worksheet
		$objPHPExcel -> getActiveSheet() -> setTitle('Customer');

		// Set active sheet index to the first sheet, so Excel opens this as the first sheet
		$objPHPExcel -> setActiveSheetIndex(0);

		// Redirect output to a client’s web browser (Excel2007)
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="' . $file_name . '"');
		header('Cache-Control: max-age=0');

		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		$objWriter -> save('php://output');
		exit ;
	}

	public function import() {
		$save_path = get_save_path();
		$opmode = $_POST["opmode"];
		if ($opmode == "import") {
			import("@.ORG.Util.UploadFile");
			$upload = new UploadFile();
			$upload -> savePath = $save_path;
			$upload -> allowExts = array('xlsx');
			$upload -> saveRule = uniqid;
			$upload -> autoSub = false;

			if (!$upload -> upload()) {
				$this -> error($upload -> getErrorMsg());
			} else {
				//取得成功上传的文件信息
				$uploadList = $upload -> getUploadFileInfo();
				Vendor('Excel.PHPExcel');
				//导入thinkphp第三方类库

				$inputFileName = $save_path . $uploadList[0]["savename"];
				$objPHPExcel = PHPExcel_IOFactory::load($inputFileName);
				$sheetData = $objPHPExcel -> getActiveSheet() -> toArray(null, true, true, true);
				$model = M("Customer");
				for ($i = 2; $i <= count($sheetData); $i++) {
					$data = array();
					$data['name'] = $sheetData[$i]["A"];
					$data['short'] = $sheetData[$i]["B"];
					$data['letter'] = get_letter($sheetData[$i]["A"]);
					$data['biz_license'] = $sheetData[$i]["C"];
					$data['payment'] = $sheetData[$i]["D"];
					$data['address'] = $sheetData[$i]["E"];
					$data['salesman'] = $sheetData[$i]["F"];
					$data['contact'] = $sheetData[$i]["G"];
					$data['email'] = $sheetData[$i]["H"];
					$data['office_tel'] = $sheetData[$i]["I"];
					$data['mobile_tel'] = $sheetData[$i]["J"];
					$data['fax'] = $sheetData[$i]["K"];
					$data['im'] = $sheetData[$i]["L"];
					$data['remark'] = $sheetData[$i]["M"];
					$data['statu'] = 1;
					$model -> add($data);
				}
				//dump($sheetData);
				if (file_exists($_SERVER["DOCUMENT_ROOT"] . "/" . $inputFileName)) {
					unlink($_SERVER["DOCUMENT_ROOT"] . "/" . $inputFileName);
				}
				$this -> assign('jumpUrl', get_return_url());
				$this -> success('导入成功！');
			}
		} else {
			$this -> display();
		}
	}

	function mark() {
		$id = $_REQUEST["id"];
		$val = $_REQUEST["val"];
		$field = 'group';
		$result = $this -> _set_field($id, $field, $val);
		if ($result !== false) {
			$this -> assign('jumpUrl', get_return_url());
			$this -> success('操作成功!');
		} else {
			//失败提示
			$this -> error('操作失败!');
		}
	}

	function del(){
		$id = $_POST['id'];
		$count = $this ->_del($id,true);

		if ($count) {
			$model = D("SystemTag");
			$result = $model -> del_data_by_row($id);
		}

		if ($count !== false) {//保存成功
			$this -> assign('jumpUrl', get_return_url());
			$this -> success("成功删除{$count}条!");
		} else {
			//失败提示
			$this -> error('删除失败!');
		}
	}

	function set_tag(){
		$id=	$_POST['id'];
		$tag=$_POST['tag'];
		$new_tag=$_POST['new_tag'];
		if (!empty($id)){
			$model = D("SystemTag");
			$model -> del_data_by_row($id);
			if (!empty($_POST['tag'])) {
				$result = $model -> set_tag($id,$tag);
			}
		};

		if (!empty($new_tag)) {
			$model = D("SystemTag");
			$model -> module = MODULE_NAME;
			$model -> name = $new_tag;
			$model -> is_del = 0;
			$model -> user_id = get_user_id();
			$new_tag_id = $model -> add();
			if (!empty($id)){				
				$result = $model -> set_tag($id,$new_tag_id);
			}
		};
		if ($result !== false) {//保存成功
			if ($ajax || $this -> isAjax())
				$this -> assign('jumpUrl', get_return_url());
			$this -> success('操作成功!');
		} else {
			//失败提示
			$this -> error('操作失败!');
		}
	}
	
	function tag_manage() {
		$this -> _tag_manage("分组管理");
	}

	protected function _insert(){		
		$model = D('Customer');
		if (false === $model -> create()) {
			$this -> error($model -> getError());
		}
		$model -> __set('letter', get_letter($model -> __get('name')));
		$model -> __set('user_id',get_user_id());
		//保存当前数据对象
		$list = $model -> add();
		if ($list !== false) {//保存成功
			$this -> assign('jumpUrl', get_return_url());
			$this -> success('新增成功!');
		} else {
			//失败提示
			$this -> error('新增失败!');
		}
	}

	protected function _update() {
		$id = $_POST['id'];
		$model = D("Customer");
		if (false === $model -> create()) {
			$this -> error($model -> getError());
		}
		$model -> __set('letter', get_letter($model -> __get('name')));
		// 更新数据
		$list = $model -> save();
		if (false !== $list) {
			//成功提示
			$this -> assign('jumpUrl', get_return_url());
			$this -> success('编辑成功!');
		} else {
			//错误提示
			$this -> error('编辑失败!');
		}
	}

	protected function _assign_tag_list() {
		$model = D("SystemTag");
		$tag_list = $model -> get_tag_list('id,name');
		$this -> assign("tag_list", $tag_list);
	}

}
?>