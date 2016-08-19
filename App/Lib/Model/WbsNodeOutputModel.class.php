<?php
/**
 * Created by PhpStorm.
 * User: MobiuS
 * Date: 16-8-19
 * Time: 下午1:50
 */

class WbsNodeOutputModel extends CommonModel {

    public function getNodeInfo($node_id)
    {
        $sql = "select a.item_name,a.id,a.type from aeropms_wbs_node_output as a where a.node_id=$node_id";
        $data = $this->query($sql);
        if(empty($data))
            return false;
        else
            return $data;
    }
}