<?php
/**
 * Created by PhpStorm.
 * User: MobiuS
 * Date: 16-8-16
 * Time: 下午1:29
 */

class WbsNodeScheduleModel extends CommonModel {
    // 定义自动验证
    protected $_validate    =   array(
    );
    // 定义自动完成
    protected $_auto    =   array(
        array('update_time','time',1,'function'),
    );

    public function getNodeInfo($node_id, $with_charger)
    {

        if($with_charger){
            $query_str = "select a.*,b.name charger_name, c.name charger_position from aeropms_wbs_node_schedule as a, aeropms_user as b, aeropms_position as c".
                " where b.id=a.charger_id and c.id=b.position_id and a.node_id=$node_id";
        }
        else{
            $query_str = "select a.* from aeropms_wbs_node_schedule as a where a.node_id=$node_id";
        }
        $data_array = $this->query($query_str);
        if(empty($data_array)){
            return null;
        }
        $data_array[0]["planning_begin_time"] = date('Y-m-d', $data_array[0]["planning_begin_time"]);
        $data_array[0]["planning_end_time"] = date('Y-m-d', $data_array[0]["planning_end_time"]);
        $data_array[0]["create_time"] = date('Y-m-d', $data_array[0]["create_time"]);
        $data_array[0]["update_time"] = date('Y-m-d', $data_array[0]["update_time"]);
        if($data_array[0]["actual_begin_time"]){
            $data_array[0]["actual_begin_time"] = date('Y-m-d', $data_array[0]["actual_begin_time"]);
        }
        if($data_array[0]["actual_end_time"]){
            $data_array[0]["actual_end_time"] = date('Y-m-d', $data_array[0]["actual_end_time"]);
        }
        $data_array[0]["total_planning_working_hour"] = $data_array[0]["planning_working_day"] * $data_array[0]["planning_working_hour"];
        return $data_array[0];
    }
}