<?php
class RankAction extends CommonAction {
	protected $config=array('data_type'=>'master','action_auth'=>array('ajaxread'=>'admin'));
	function _search_filter(&$map) {
		if (!empty($_POST['keyword'])) {
			$map['code|name'] = array('like', "%" . $_POST['keyword'] . "%");
		}
	}

}
?>