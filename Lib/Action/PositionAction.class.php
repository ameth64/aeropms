<?php
class PositionAction extends CommonAction {
	protected $config=array(
		'data_type'=>'master'
		);


	function _search_filter(&$map) {
		if (!empty($_POST['keyword'])) {
			$map['code|name'] = array('like', "%" . $_POST['keyword'] . "%");
		}
	}
}
?>