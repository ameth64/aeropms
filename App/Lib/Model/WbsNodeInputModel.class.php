<?php
/**
 * Created by PhpStorm.
 * User: MobiuS
 * Date: 16-8-19
 * Time: 下午1:56
 */

class WbsNodeInputModel extends CommonModel {

    public function getNodeInfo($node_id)
    {
        $sql = "select a.id,a.input_node_id,b.name from aeropms_wbs_node_input as a,aeropms_wbs_node as b where a.node_id=$node_id and a.input_node_id=b.id";
        $data = $this->query($sql);
        if(empty($data))
            return false;
        else
            return $data;
    }
}