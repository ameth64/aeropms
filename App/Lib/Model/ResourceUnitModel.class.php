<?php
/**
 * Created by PhpStorm.
 * User: DELL
 * Date: 2016/6/25
 * Time: 23:12
 */

class ResourceUnitModel extends CommonModel
{

    // 定义自动验证
    protected $_validate = array(
        array('save_path', 'require', '必须输入PBS节点名称'),
        array('proj_id', 'require', '必须确定归属项目ID'),
    );
    // 定义自动完成
    protected $_auto = array(
        array('update_time', 'time', 1, 'function'),
    );

}