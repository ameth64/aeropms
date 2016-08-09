<?php
/**
 * Created by PhpStorm.
 * User: MobiuS
 * Date: 16-6-6
 * Time: 下午2:30
 */
class PbsNodeModel extends CommonModel {

    // 定义自动验证
    protected $_validate    =   array(
        array('name','require','必须输入PBS节点名称'),
        array('proj_id','require','必须确定归属项目ID'),
    );
    // 定义自动完成
    protected $_auto    =   array(
        array('update_time','time',1,'function'),
    );

    //-解析形如"1.1.2"的字符串并生成树节点
    public function Insert($proj_id, $name, $id_str, $agent_id = 0, $remark = "暂无描述")
    {
        $size = count($id_str);
        if($size < 1)
            return false;

        $data["project_id"] = $proj_id;
        $data["name"] = $name;
        $data["agent_id"] = $agent_id;
        if($size == 1)
        {
            if($id_str[0] == "0")
            {
                $data["parent_id"] = -1;
                $data["node_level"] = 0;
                $data["inner_index"] = 1;
            }
            else
            {
                $pid = $this->where("project_id=$proj_id and node_level=0 and inner_index=1 and parent_id=-1")->getField("id");
                $data["parent_id"] = $pid;
                $data["node_level"] = 1;
                $data["inner_index"] = $id_str[0];
            }
            $data["create_time"] = time();
            $data["update_time"] = time();
            $data["remark"] = $remark;
        }
        else
        {
            $data["inner_index"] = $id_str[$size - 1];
            $data["node_level"] = $size;
            $data["create_time"] = time();
            $data["update_time"] = time();
            $data["remark"] = $remark;
            for($i = 0; $i < $size - 1; $i++)
            {
                $inner_index = $id_str[$i];
                if($i == 0)
                    $pid = $this->where("project_id=$proj_id and node_level=$i+1 and inner_index=$inner_index")->getField("id");
                else
                    $pid = $this->where("project_id=$proj_id and node_level=$i+1 and inner_index=$inner_index and parent_id=$pid")->getField("id");
            }
            $data["parent_id"] = $pid;
        }

        $pk = $this->data($data)->add();
        return $pk;
    }

}