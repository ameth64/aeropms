<?php
/*---------------------------------------------------------------------------
  С΢OAϵͳ - �ù��������ɿ��� 

  Copyright (c) 2013 http://www.smeoa.com All rights reserved.                                             

  Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )  

  Author:  jinzhu.yin<smeoa@qq.com>                         

  Support: https://git.oschina.net/smeoa/smeoa               
 -------------------------------------------------------------------------*/


class PositionAction extends CommonAction {
	protected $config=array(
		'app_type'=>'master'
		);

	function _search_filter(&$map) {
		if (!empty($_POST['keyword'])) {
			$map['code|name'] = array('like', "%" . $_POST['keyword'] . "%");
		}
	}
}
?>