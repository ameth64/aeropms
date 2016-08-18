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

    public function getNodesForTree($proj_id){
        $sql_str = "select a.*, b.is_hideable, b.name as type_name from aeropms_wbs_node as a, aeropms_wbs_type as b".
            " where a.project_id=$proj_id and a.type = b.id";
        $data_array = $this->query($sql_str);
        return $data_array;
    }

    public function getNodeInfo($proj_id, $node_id){
        $query_str = "select a.name,a.remark, a.type, b.name type_name,a.engineering_phase, c.name epname,".
            " a.depart, d.name dep_name, a.create_time,a.update_time from".
            " aeropms_wbs_node as a, aeropms_wbs_type as b, aeropms_engineering_phase as c,".
            " aeropms_wbs_depart as d".
            "  where a.type = b.id and a.depart=d.id and a.engineering_phase=c.id and a.project_id=$proj_id and a.id=$node_id";
        $data_array = $this->query($query_str);
        if(empty($data_array)){
            $query_str = "select name, remark, create_time, update_time from aeropms_wbs_node".
                " where project_id=$proj_id and id=$node_id";
            $data_array = $this->query($query_str);
        }
        if(empty($data_array)){
            return null;
        }
        $data_array[0]["create_time"] = date('Y-m-d', $data_array[0]["create_time"]);
        $data_array[0]["update_time"] = date('Y-m-d', $data_array[0]["update_time"]);
        return $data_array[0];
    }
}