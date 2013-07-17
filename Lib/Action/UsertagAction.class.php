<?php
class UserTagAction extends CommonAction {

	function _search_filter(&$map) {
		if (!empty($_POST['keyword'])) {
			$map['code|name'] = array('like', "%" . $_POST['keyword'] . "%");
		}
	}
}
?>