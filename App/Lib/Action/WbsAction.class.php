<?php
/**
 * Created by PhpStorm.
 * User: MobiuS
 * Date: 2016/6/11
 * Time: 21:21
 */
class WbsAction extends CommonAction
{
    protected $config = array('app_type' => 'asst');

    public function index()
    {
        $proj_id = $this->_isValid("proj_id");
        if(!$proj_id){
            $this->error("无效的项目ID");
            $this->redirect("project/select");
            return;
        }
        session("proj_id", $proj_id);

        $this->assign("proj_id", $proj_id);

        $name = $this->getActionName();
        $menu_node = D("Node") -> where("url like '%$name%'")->getField("id");
        cookie("top_menu", $menu_node);

        $pbs_node_id = $this->_request("pbs_node_id");
        $pbs_node_path = $this->_request("pbs_node_path");
        if(!isset( $pbs_node_path ) || !isset($pbs_node_id) ){
            $pbs_node_path = session("pbs_node_path");
            $pbs_node_id = session("pbs_node_id");
            if(!isset( $pbs_node_path ) || !isset($pbs_node_id) ){
                $this->error("无效的节点路径");
                $this->redirect("pbs/index");
                return;
            }
        }
        else{
            session("pbs_node_path", $pbs_node_path);
            session("pbs_node_id", $pbs_node_id);
        }

        $count = $this->_initWbsTree($proj_id);
        $json = $this->_convertJson($proj_id); //根据项目id读取节点表数据并组装JSON
        $this->assign("node_json", $json);

        $WbsType = M("WbsType");
        $type_list = $WbsType->select();
        $this->assign("type_list", $type_list);

        $EngrPhase = M("EngineeringPhase");
        $eng_phase = $EngrPhase->select();
        $this->assign("engineering_phase", $eng_phase);

        $this->display();
    }

    public function add()
    {
        $WbsNode = M("WbsNode");
        $WbsNode->create();
        $WbsNode->creator_id = get_user_id();
        $WbsNode->create_time = time();
        $WbsNode->update_time = time();
        $WbsNode->add();
        $this->redirect("index", array(
            "proj_id"=>$this->_request("project_id")
            )
        );
    }

    /**
     *    取得节点数据的嵌套数组, 用系统方法生成JSON
     */
    protected function _convertJson($proj_id)
    {
        $WbsNode = D("WbsNode");
        $data_array = $this->_parseNode($WbsNode, $proj_id, -1);
        $json = json_encode($data_array); //, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT
        return $json;
    }

    /**
     *    递归方法, 解析节点表数据并生成嵌套数组
     */
    protected function _parseNode(&$model, $proj_id, $parent_id)
    {
        $data = $model->where("project_id=$proj_id and parent_id=$parent_id")->order("id")->select();
        $res = array();
        foreach($data as $item)
        {
            array_push($res,
                array("id"=>$item["id"],
                    "pbs_id"=>$item["pbs_id"],
                    "wbs_type"=>$item["type"],
                    "name"=>$item["name"],
                    "open"=>true,
                    "children"=>$this->_parseNode($model, $proj_id, $item["id"])));
        }
        return $res;
    }

    protected function _initWbsTree($proj_id)
    {
        $WbsNode = M("WbsNode");
        $count = $WbsNode->where("project_id=$proj_id")->count();
        if($count > 0)
            return $count;
        $proj = M("ProjectList");
        $proj_name = $proj->where("id=$proj_id")->getField("name");
        $data = array(
            'project_id'=>$proj_id,
            'node_level'=>0,
            'inner_index'=>0,
            'parent_id'=>-1,
            'pbs_id'=>-1,
            'name'=>'根节点',
            'desc'=>$proj_name.'-项目WBS根节点',
            'type'=>1,
            'agent_id'=>0, 'creator_id'=>null,
            'create_time'=>time(),
            'update_time'=>time(),
            'remark'=>null
        );
        if($WbsNode->create($data))
        {
            $WbsNode->add();
            return 1;
        }
        return -1;
    }
}