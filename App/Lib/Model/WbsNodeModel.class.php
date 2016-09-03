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

    // 生成用于主WBS树渲染的节点数据
    public function getNodesForTree($proj_id){
        $sql_str = "select a.*, b.is_hideable, b.name as type_name from aeropms_wbs_node as a, aeropms_wbs_type as b".
            " where a.project_id=$proj_id and a.type = b.id";
        $data_array = $this->query($sql_str);
        return $data_array;
    }

    //返回单个节点详细数据
    public function getNodeInfo($proj_id, $node_id){
        $query_str = "select a.id,a.name,a.remark,a.pbs_id,a.parent_id, a.type, b.name type_name,a.engineering_phase, c.name epname,".
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
        //处理关联PBS_ID
        if($data_array[0]["pbs_id"]>'0'){
            $model = M("PbsNode");
            $pbs_info = $model->where("id=".$data_array[0]["pbs_id"])->field("name")->find();
            $data_array[0]["pbs_name"] = $pbs_info["name"];
        }
        return $data_array[0];
    }

    // 从POST数据中生成节点数据并保存
    public function addNode($extra_data)
    {

    }

    // 从POST数据中生成节点数据并保存
    public function saveNode($ex_data)
    {
        $this->create();
        $this->id = $ex_data["id"];
        $this->pbs_id = $ex_data["pbs_id"];
        $this->has_input = $ex_data["has_input"];
        $this->has_output = $ex_data["has_output"];
        $this->update_time = time();
        if(!$this->remark)
            $this->remark = "暂无描述";
        return $this->save();
    }
}