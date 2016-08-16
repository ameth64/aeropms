<?php
/**
 * Created by PhpStorm.
 * User: MobiuS
 * Date: 16-8-16
 * Time: 下午1:29
 */

class WbsScheduleModel extends CommonModel {
    // 定义自动验证
    protected $_validate    =   array(
    );
    // 定义自动完成
    protected $_auto    =   array(
        array('update_time','time',1,'function'),
    );


}