<?php
/*---------------------------------------------------------------------------
 小微OA系统 - 让工作更轻松快乐

 Copyright (c) 2013 http://www.smeoa.com All rights reserved.

 Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )

 Author:  jinzhu.yin<smeoa@qq.com>

 Support: https://git.oschina.net/smeoa/smeoa
 -------------------------------------------------------------------------*/

class UdfTypeAction extends CommonAction {
	protected $config = array('app_type' => 'master');

	//过滤查询字段
	function _search_filter(&$map) {
		if (!empty($_POST['keyword'])) {
			$map['name'] = array('like', "%" . $_POST['keyword'] . "%");
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

	public function import() {
		$this -> assign("folder", $_GET["folder"]);
		$save_path = C('SAVE_PATH');
		$opmode = $_POST["opmode"];
		if ($opmode == "import") {
			import("@.ORG.Util.UploadFile");
			$upload = new UploadFile();
			$upload -> savePath = $save_path;
			$upload -> allowExts = array('xlsx', 'xls');
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

				$this -> assign("folder", $_POST["folder"]);
				
				$config = M("UdfType") -> find($folder);	
				dump($config);	
				$first_row = $config['first_row'];
				$field_count = $config['field_count'];
				$is_unique = $config['$is_unique'];				
				dump($firs_row);
				$model = M("Udf");
				for ($i = $first_row; $i <= count($sheetData); $i++) {
					$data = array();					
					$data['emp_no'] = $sheetData[$i]["A"];					
					for ($k = 67; $k <= 67 + $field_count; $k++) {
						dump(chr($k));
						$data['data'][] = $sheetData[$i][chr($k)];
					}
					$data['data'] = _encode($data['data']);					
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

}
?>