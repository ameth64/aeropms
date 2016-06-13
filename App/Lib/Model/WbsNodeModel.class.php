<?php
/**
 * Created by PhpStorm.
 * User: MobiuS
 * Date: 2016/6/11
 * Time: 16:08
 */
class WbsNodeModel extends CommonModel {
    // 定义自动验证
    protected $_validate    =   array(
        array('name','require','必须输入PBS节点名称'),
        array('proj_id','require','必须确定归属项目ID'),
    );
    // 定义自动完成
    protected $_auto    =   array(
        array('update_time','time',1,'function'),
    );


}