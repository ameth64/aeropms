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

    //根据节点的wbs_id是否为空选择图标
    protected $ztree_img = array(
        "pbs_node"=>"__PUBLIC__/css/ztree/zTreeStyle/img/diy/1_close.png",
        "wbs_node"=>"__PUBLIC__/css/ztree/zTreeStyle/img/diy/2.png"
    );

    public function index()
    {
        $proj_id = $this->_update_param("proj_id");
        if(!$proj_id){
            $this->error("无效的项目ID");
            $this->redirect("project/select");
            return;
        }
        $this->assign("proj_id", $proj_id);

        $name = $this->getActionName();
        $menu_node = D("Node") -> where("url like '%$name%'")->getField("id");
        cookie("top_menu", $menu_node);

        $pbs_node_id = $this->_update_param("pbs_node_id");
        $pbs_node_path = $this->_update_param("pbs_node_path");
        if(!isset( $pbs_node_path ) || !isset($pbs_node_id) ){
            $this->error("无效的节点路径");
            $this->redirect("pbs/index");
            return;
        }

        $count = $this->_initWbsTree($proj_id);
        $json = $this->_convertJson($proj_id); //根据项目id读取节点表数据并组装JSON
        $this->assign("node_json", $json);

        $WbsType = M("WbsType");
        $type_list = $WbsType->select();
        $this->assign("type_list", $type_list);

        $WbsDept = M("WbsDepart");
        $depart_list = $WbsDept->select();
        $this->assign("depart_list", $depart_list);

        $EngrPhase = M("EngineeringPhase");
        $eng_phase = $EngrPhase->select();
        $this->assign("engineering_phase", $eng_phase);

        //生成ace风格的树节点数据
        $model = D("WbsNode");
        $data = $this->_parseNode($model, $proj_id, 1);
        $ace_json = json_encode($data, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);
        $this->assign("ace_tree", $ace_json);

        $this->display();
    }

    public function add()
    {
        if(!$this->isPost()){
            $this->error("无效请求");
            return;
        }
        $proj_id = $this->_post("proj_id");

        $user_id = get_user_id();
        // 判断是否有wbs输入和输出
        $wbs_output_json = $this->_post('wbs_output_list', null); //若使用框架_post方法则可能因过滤函数而无法成功解码JSON
        $wbs_input_json = $this->_post("wbs_input_list", null);

        import('@.ORG.Util.UploadFile');
        //处理文件上传
        $attach_id = -1;
        if($_FILES["input-file"]["tmp_name"][0]){
            $upload = new UploadFile();// 实例化上传类
            $upload->maxSize  = 50*1024*1024 ;// 设置附件上传大小, 默认50MB
            $upload->savePath =  './Public/Uploads/';// 设置附件上传目录
            $upload->supportMulti = true;

            if(!$upload->upload()) {// 上传错误提示错误信息
                $this->error("处理文件上传期间发生错误: ".$upload->getErrorMsg());
            }else{// 上传成功 获取上传文件信息
                $info_list =  $upload->getUploadFileInfo();
                $res = M("ResourceUnit");
                foreach($info_list as $info){
                    $data = array();
                    $data["project_id"] = $proj_id;
                    $data["type"] = 1;
                    $data["save_path"] = $info['savepath'];
                    $data["file_name"] = $info['name'];
                    $data["save_name"] = $info['savename'];
                    $data["size"] = $info['size'];
                    $data["extension"] = $info['extension'];
                    $data["hash"] = $info['hash'];
                    $data["creator_id"] = $user_id;
                    $data["create_time"] = time();
                    $data["update_time"] = time();
                    $data["remark"] = $this->_post["name"]."-资源";
                    $attach_id = $res->data($data)->add();
                }
            }
        }

        /*处理基本信息*/
        $WbsNode = M("WbsNode");
        $WbsNode->create();
        $WbsNode->creator_id = $user_id;
        $WbsNode->create_time = time();
        $WbsNode->update_time = time();
        $WbsNode->attach_id = $attach_id;
        $WbsNode->has_input = empty($wbs_input_json);
        $WbsNode->has_output = empty($wbs_output_json);
        if(!$WbsNode->remark)
            $WbsNode->remark = "暂无描述";
        $node_id = $WbsNode->add();

        /* 处理 schedule*/
        $wbs_schedule_json = $this->_post("planning_schedule", null);
        if($wbs_schedule_json){
            if($data_array = json_decode($wbs_schedule_json, true)){
                $this->error("WBS Schedule处理失败, 请检查数据");
            }
            else{
                $wbs_schedule_model = D("WbsSchedule");
                $data_array["charger_id"] = $this->_post("team_leader_list", null);
                $data_array["priority"] = 5;
                $wbs_schedule_model->create($data_array);
            }
        }

        // 处理wbs输出列表json
        if(!empty($wbs_output_json)){
            $json_array = json_decode($wbs_output_json, true);
            if($json_array == false){
                $this->error("WBS输出列表处理失败, 请检查数据");
            }
            else{
                $wbso = M("WbsNodeOutput");
                $data = array();
                //遍历数组
                foreach($json_array as $item){
                    $data["type"] = $item["type"];
                    $data["item_name"] = $item["name"];
                    $data["create_time"] = time();
                    $data["update_time"] = time();
                    $data["project_id"] = $proj_id;
                    $data["node_id"] = $node_id;
                    $data["status"] = 1;
                    $data["assignee_id"] = -1;
                    $wbso->data($data)->add();
                }
            }
        }

        // 处理输入列表
        if($wbs_input_json){
            $json_array = json_decode($wbs_input_json, true);
            if($json_array == false){
                $this->error("WBS输入列表处理失败, 请检查数据");
            }
            else
            {
                $wbs_node_input = D("WbsNodeInput");
                $data = array();
                //遍历数组
                foreach($json_array as $item){
                    $data["create_time"] = time();
                    $data["update_time"] = time();
                    $data["project_id"] = $proj_id;
                    $data["node_id"] = $node_id;
                    $data["input_node_id"] = $item["input_node_id"];
                    $data["assignee_id"] = -1;
                    $wbs_node_input->data($data)->add();
                }
            }
        }

        $this->redirect("index", array(
            "proj_id"=>$proj_id
            )
        );
    }

    /**
     * 读取WBS节点
     */
    public function read()
    {
        $proj_id = $this->_get("proj_id");
        $node_id = $this->_get("node_id");
        // Log::write("project_id=$proj_id, node_id=$node_id", Log::INFO);
        if($node_id){
            $type = $this->_get("type");
            switch($type)
            {
                case 'pbs':
                    $model = D("PbsNode");
                    $query_str = "select a.name, 'PBS-产品结构分解' node_type, a.remark, a.create_time,a.update_time from".
                        " aeropms_pbs_node as a".
                        "  where a.project_id=$proj_id and a.id=$node_id";
                    $data_array = $model->query($query_str);
                    $data_array[0]["create_time"] = date('Y-m-d', $data_array[0]["create_time"]);
                    $data_array[0]["update_time"] = date('Y-m-d', $data_array[0]["update_time"]);
                    //$data_array[0]["node_type"] = 'PBS-产品结构分解';
                    break;
                case 'wbs':
                default:
                    $model = D("WbsNode");
                    $data_array = $model->getNodeInfo($proj_id, $node_id);
                    if(!$data_array){
                        $this->error("无效的WBS节点ID");
                    }
                    Log::write("WBS节点数组: ".print_r($data_array, true), Log::ERR);
            }
            $json = json_encode($data_array[0], JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);
            $this->ajaxReturn($json, 'EVAL');
        }
        else{
            $model = D("WbsNode");
            //Log::write("收到ajax请求, proj_id=$proj_id", NOTICE);
            //$eng_phase = $this->_update_param("engineering_phase");
            $data_array = $this->_parseNode($model, $proj_id, -1);
            $json = json_encode($data_array, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT); //, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT
            //Log::write("读取WBS结果: ".$json, NOTICE);
            $this->ajaxReturn($json, 'EVAL');
        }
    }

    /**
     *    取得节点数据的嵌套数组, 用系统方法生成JSON
     */
    protected function _convertJson($proj_id)
    {
        $WbsNode = D("WbsNode");
        //$PbsNode = D("PbsNode");
        //$data_array = $this->_parseNodeAll($PbsNode, $WbsNode, $proj_id, -1, -1, 1);
        //$data_array = $this->_parseNode($WbsNode, $proj_id);
        $data = $WbsNode->getNodesForTree($proj_id);
        $tree = list_to_tree($data, -1, 'id', 'parent_id', 'children', function(&$item){
            $item["node_type"]="wbs";
            $item["wbs_type"]=$item["type"];
            $item["wbs_parent"]=$item["parent_id"];

            //-zTree私有属性
            //"icon"=>$this->ztree_img["wbs_node"],
            $item["open"]='true';
        });
        //Log::write("WBS Nodes: ".print_r($data_array, true));
        $json = json_encode($tree, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT); //, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT
        return $json;
    }

    protected function _parseNode(&$model, $proj_id)
    {
        $data = $model->where("project_id=$proj_id")->field("id, parent_id, name, type, engineering_phase")
            ->order("id")->select();
        $tree = list_to_tree($data, -1, 'id', 'parent_id', 'children', function(&$item){
//            $tmp = [];
//            $tmp["open"] = "true"; $tmp["id"] = $item["id"]; $tmp["wbs_parent"] = $item["parent_id"];
//            $tmp["name"] = $item["name"]; $tmp["wbs_type"] = $item["type"]; $tmp["node_type"] = "wbs";
//            $item = $tmp;
            $item["node_type"]="wbs";
            $item["wbs_type"]=$item["type"];
            $item["wbs_parent"]=$item["parent_id"];

            //-zTree私有属性
            //"icon"=>$this->ztree_img["wbs_node"],
            $item["open"]='true';
        });
        return $tree;
    }

    /**
     *    递归方法, 解析节点表数据并生成嵌套数组, 旧有方法, 因效率问题可考虑弃用
     */
    protected function _parseNode_Old(&$model, $proj_id, $parent_id)
    {
        $data = $model->where("project_id=$proj_id and parent_id=$parent_id")->order("id")->select();
        $res = array();
        foreach($data as $item)
        {
            array_push($res,
                array("id"=>$item["id"],
                    "node_type"=>"wbs",
                    "pbs_id"=>$item["pbs_id"],
                    "wbs_type"=>$item["type"],
                    "wbs_parent"=>$item["parent_id"],
                    "name"=>$item["name"],
                    //-zTree私有属性
                    //"icon"=>$this->ztree_img["wbs_node"],
                    "open"=>true,
                    "children"=>$this->_parseNode($model, $proj_id, $item["id"])
                )
            );
        }
        return $res;
    }

    protected function _parseNodeAll(&$pbs_model, &$wbs_model, $proj_id, $pbs_parent_id, $wbs_parent_id, $type)
    {
        $res = array();

        // 处理wbs子节点
        $wbs_parent = ($wbs_parent_id == -1)? ($wbs_model->where("project_id=$proj_id and pbs_id=$pbs_parent_id")->min("parent_id")) : ($wbs_parent_id);
        $wbs = $wbs_model->query("select b.name type_name, a.* from aeropms_wbs_node as a, aeropms_wbs_type as b where a.type = b.id and a.project_id=$proj_id and a.pbs_id=$pbs_parent_id and a.parent_id=$wbs_parent ");
        foreach($wbs as $item)
        {
            array_push($res,
                array("id"=>$item["id"],
                    "node_type"=>"wbs",
                    "pbs_id"=>$item["pbs_id"],
                    "wbs_type"=>$item["type"],
                    "wbs_parent"=>$item["parent_id"],
                    "name"=>$item["name"],
                    //-zTree私有属性
                    //"icon"=>$this->ztree_img["wbs_node"],
                    "open"=>true,
                    "children"=>$this->_parseNodeAll($pbs_model, $wbs_model, $proj_id, $pbs_parent_id, $item["id"], 2)
                )
            );
        }

        if($type == 1){
            $pbs = $pbs_model->where("project_id=$proj_id and parent_id=$pbs_parent_id")->order("id")->select();
            foreach($pbs as $item)
            {
                array_push($res,
                    array("id"=>$item["id"],
                        "node_type"=>"pbs",
                        "pbs_id"=>$item["id"],
                        "wbs_type"=>"0",
                        "wbs_parent"=>"",
                        "name"=>$item["name"],
                        //-zTree私有属性
                        //"icon"=>$this->ztree_img["pbs_node"],
                        "open"=>true,
                        "children"=>$this->_parseNodeAll($pbs_model, $wbs_model, $proj_id, $item["id"], -1, 1)
                    )
                );
            }
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
            'name'=>$proj_name.' - WBS',
            'remark'=>$proj_name.'项目WBS根节点',
            'type'=>1,
            'engineering_phase'=>1,
            'agent_id'=>0, 'creator_id'=>get_user_id(),
            'create_time'=>time(),
            'update_time'=>time()
        );
        if($WbsNode->create($data))
        {
            $WbsNode->add();
            return 1;
        }
        return -1;
    }
}