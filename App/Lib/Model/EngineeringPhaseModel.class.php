<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/16
 * Time: 22:12
 */

class EngineeringPhaseModel extends CommonModel {
    // 自动验证设置
    protected $_validate	 =	 array(
        array('name','require','必须输入名称',1),
        array('desc','require','内容必须'),
    );

/*    function _before_insert(&$data,$options){
        $sql = "SELECT CONCAT(year(now()),'-',LPAD(count(*)+1,4,0)) doc_no FROM `".$this->tablePrefix."doc` WHERE 1 and year(FROM_UNIXTIME(create_time))>=year(now())";
        $rs = $this->db->query($sql);
        if($rs){
            $data['doc_no']=$rs[0]['doc_no'];
        }else{
            $data['doc_no']=date('Y')."-0001";
        }
    }*/
}
?>