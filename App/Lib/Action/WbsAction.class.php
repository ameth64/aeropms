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

    /**
     * 新增wbs节点方法
     */
    public function add()
    {
        if(!$this->isPost()){
            $this->error("无效请求");
            return;
        }
        $proj_id = $this->_update_param("proj_id");

        $user_id = get_user_id();
        // 判断是否有wbs输入和输出
        $wbs_output_json = $_POST['wbs_output_list']; //若使用框架_post方法则可能因过滤函数而无法成功解码JSON
        $wbs_input_json = $_POST["wbs_input_list"];

        //开始事务
        $db_success = true; $dbo_array = array();

        import('@.ORG.Util.UploadFile');
        //处理文件上传
        $attach_id = -1;
        if($_FILES["input-file"]["tmp_name"][0]){
            $upload = new UploadFile();// 实例化上传类
            $upload->maxSize  = 50*1024*1024 ;// 设置附件上传大小, 默认50MB
            $upload->savePath =  './Public/Uploads/';// 设置附件上传目录
            $upload->supportMulti = true;

            if(!$upload->upload()) {
                $db_success = false;$db_success = false;
                $this->error("处理文件上传期间发生错误: ".$upload->getErrorMsg());
            }
            else{// 上传成功 获取上传文件信息
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
        // 开始事务
        $this->dbo_start_trans($dbo_array, $WbsNode);

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
        if($_POST["team_leader_list"] && $_POST["planning_schedule"])
        {
            $leader_json = json_decode($_POST["team_leader_list"], true);
            $wbs_schedule_json = json_decode($_POST["planning_schedule"], true);
            if($wbs_schedule_json==false || $leader_json == false){
                Log::write("leader_json raw: ".$_POST["team_leader_list"]
                    .", wbs_schedule_json raw: ".$_POST["planning_schedule"], Log::ERR);
                $this->dbo_rollback($dbo_array);
                $db_success = false;
                $this->error("WBS Schedule处理失败, 请检查数据");
            }
            else{
                $wbs_schedule_model = D("WbsNodeSchedule");
                $this->dbo_start_trans($dbo_array, $wbs_schedule_model);
                $wbs_schedule_json["node_id"] = $node_id;
                $wbs_schedule_json["charger_id"] = $leader_json["id"];
                $wbs_schedule_json["priority"] = 5;
                $wbs_schedule_json["planning_begin_time"] = date_to_int($wbs_schedule_json["planning_begin_time"]);
                $wbs_schedule_json["planning_end_time"] = date_to_int($wbs_schedule_json["planning_end_time"]);
                $wbs_schedule_json["create_time"] = time();
                $wbs_schedule_json["update_time"] = time();
                $wbs_schedule_model->create($wbs_schedule_json);
                $wbs_schedule_model->add();
            }
        }


        // 处理wbs输出列表json
        if($wbs_output_json){
            $json_array = json_decode($wbs_output_json, true);
            if($json_array == false){
                $this->dbo_rollback($dbo_array); $db_success = false;
                $this->error("WBS输出列表处理失败, 请检查数据");
            }
            else{
                $wbso = M("WbsNodeOutput");
                $this->dbo_start_trans($dbo_array, $wbso);
                //遍历数组
                foreach($json_array as $item){
                    $item["project_id"] = $proj_id;
                    $item["node_id"] = $node_id;
                    $item["status"] = 1;
                    $item["assignee_id"] = -1;
                    $item["create_time"] = time();
                    $item["update_time"] = time();
                    $wbso->data($item)->add();
                }
            }
        }

        // 处理输入列表
        if($wbs_input_json){
            $json_array = json_decode($wbs_input_json, true);
            if($json_array == false){
                $this->dbo_rollback($dbo_array); $db_success = false;
                $this->error("WBS输入列表处理失败, 请检查数据");
            }
            else
            {
                $wbs_node_input = D("WbsNodeInput");
                $this->dbo_start_trans($dbo_array, $wbs_node_input);
                //遍历数组
                foreach($json_array as $item){
                    $item["project_id"] = $proj_id;
                    $item["node_id"] = $node_id;
                    $item["create_time"] = time();
                    $item["update_time"] = time();
                    $wbs_node_input->data($item)->add();
                }
            }
        }
        if($db_success){
            $this->dbo_commit($dbo_array);
        }

        $this->redirect("index", array(
            "proj_id"=>$proj_id
            )
        );
    }

    /**
     * 更新给定节点
     */
    public function update()
    {
        if(!$this->isPost()){
            $this->error("无效请求");
            return;
        }
        $proj_id = $this->_update_param("proj_id");

        $user_id = get_user_id();
        $node_id = $this->_post("node_id");
        if(!$node_id){
            $this->error("节点信息无效, 请检查数据.");
            return;
        }
        // 判断是否有wbs输入和输出
        $wbs_output_json = $_POST['wbs_output_list']; //若使用框架_post方法则可能因过滤函数而无法成功解码JSON
        $wbs_input_json = $_POST["wbs_input_list"];

        //开始事务
        $db_success = true; $dbo_array = array();

        /*处理基本信息*/
        $WbsNode = M("WbsNode");
        // 开始事务
        $this->dbo_start_trans($dbo_array, $WbsNode);

        $WbsNode->create();
        $WbsNode->id = $node_id;
        $WbsNode->creator_id = $user_id;
        $WbsNode->update_time = time();
        $WbsNode->has_input = empty($wbs_input_json);
        $WbsNode->has_output = empty($wbs_output_json);
        if(!$WbsNode->remark)
            $WbsNode->remark = "暂无描述";
        $res = $WbsNode->save();

        /* 处理 schedule*/
        if($_POST["team_leader_list"])
        {
            $wbs_schedule_json = json_decode($_POST["planning_schedule"], true);
            if($wbs_schedule_json==false){
                Log::write("wbs_schedule_json raw: ".$_POST["planning_schedule"], Log::ERR);
                $this->dbo_rollback($dbo_array);
                $db_success = false;
                $this->error("WBS Schedule处理失败, 请检查数据");
            }
            else{
                if($_POST["planning_schedule"])
                    $leader_json = json_decode($_POST["team_leader_list"], true);
                else
                    $leader_json = array("id"=>0);
                $wbs_schedule_model = D("WbsNodeSchedule");
                $this->dbo_start_trans($dbo_array, $wbs_schedule_model);
                $wbs_schedule_json["node_id"] = $node_id;
                $wbs_schedule_json["charger_id"] = $leader_json["id"];
                $wbs_schedule_json["priority"] = 5;
                $wbs_schedule_json["planning_begin_time"] = date_to_int($wbs_schedule_json["planning_begin_time"]);
                $wbs_schedule_json["planning_end_time"] = date_to_int($wbs_schedule_json["planning_end_time"]);
                $wbs_schedule_json["update_time"] = time();
                $wbs_schedule_model->create($wbs_schedule_json);
                $wbs_schedule_model->save();
            }
        }
        else{
            //schedule传入数据为空则删除原有记录
            $wbs_schedule_model = D("WbsNodeSchedule");
            $wbs_schedule_model->where("node_id=$node_id")->delete();
        }

        // 处理wbs输出列表json
        $wbs_output_model = M("WbsNodeOutput");
        $wbs_output_model->where("node_id=$node_id")->delete();
        if($wbs_output_json){
            $json_array = json_decode($wbs_output_json, true);
            if($json_array == false){
                $this->dbo_rollback($dbo_array); $db_success = false;
                $this->error("WBS输出列表处理失败, 请检查数据");
            }
            else{
                $wbso = M("WbsNodeOutput");
                $this->dbo_start_trans($dbo_array, $wbso);
                //遍历数组
                foreach($json_array as $item){
                    $item["project_id"] = $proj_id;
                    $item["node_id"] = $node_id;
                    $item["status"] = 1;
                    $item["assignee_id"] = -1;
                    $item["create_time"] = time();
                    $item["update_time"] = time();
                    $wbso->data($item)->save();
                }
            }
        }

        // 处理输入列表
        $wbs_node_input = D("WbsNodeInput");
        $wbs_node_input->where("node_id=$node_id")->delete();
        if($wbs_input_json){
            $json_array = json_decode($wbs_input_json, true);
            if($json_array == false){
                $this->dbo_rollback($dbo_array); $db_success = false;
                $this->error("WBS输入列表处理失败, 请检查数据");
            }
            else
            {
                $wbs_node_input = D("WbsNodeInput");
                $this->dbo_start_trans($dbo_array, $wbs_node_input);
                //遍历数组
                foreach($json_array as $item){
                    $item["project_id"] = $proj_id;
                    $item["node_id"] = $node_id;
                    $item["create_time"] = time();
                    $item["update_time"] = time();
                    $wbs_node_input->data($item)->save();
                }
            }
        }

        if($db_success){
            $this->dbo_commit($dbo_array);
        }

        $this->redirect("index", array(
                "proj_id"=>$proj_id
            )
        );
    }

    /**
     * 根据给定ID删除WBS节点
     */
    public function del()
    {
        if(!$this->isPost()){
            $this->error("无效请求");
            return;
        }
        $proj_id = $this->_update_param("proj_id");
        $user_id = get_user_id();
        $node_id = $this->_post("del_id"); //待删除的WBS节点ID
        if(empty($node_id)){
            $this->error("无效的节点ID");
            return;
        }
        Log::write("Deleting Node: ".$node_id, Log::INFO);
        $model = M("WbsNode");
        $model->where("project_id=$proj_id and id=$node_id")->delete();
        //删除schedule
        $model = M("WbsNodeSchedule");
        $model->where("node_id=$node_id")->delete();
        //删除输入
        $model=M("WbsNodeInput");
        $model->where("node_id=$node_id")->delete();
        //删除输出
        $model=M("WbsNodeOutput");
        $model->where("node_id=$node_id")->delete();

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
        $proj_id = $this->_update_param("proj_id");
        $node_id = $this->_get("node_id");
        Log::write("收到read请求, project_id=$proj_id, node_id=$node_id", Log::INFO);
        $output = array();
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
                    $output = $data_array[0];
                    break;
                case 'wbs':
                default:
                    // 读取节点基本信息
                    $model = D("WbsNode");
                    $data_array = $model->getNodeInfo($proj_id, $node_id);
                    if(!$data_array){
                        $this->error("无效的WBS节点ID");
                    }
                    Log::write("WBS节点数组: ".print_r($data_array, true), Log::ERR);
                    $output["basic"] = $data_array;

                    // 读取schedule
                    $model = D("WbsNodeSchedule");
                    $data_array = $model->getNodeInfo($node_id, true);
                    $output["schedule"] = $data_array;

                    //读取输入
                    $model = D("WbsNodeInput");
                    $data_array = $model->getNodeInfo($node_id);
                    if($data_array)
                        $output["input"] = $data_array;

                    //读取输出
                    $model = D("WbsNodeOutput");
                    $data_array = $model->getNodeInfo($node_id);
                    if($data_array)
                        $output["output"] = $data_array;

            }
            $json = json_encode($output, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);
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
     * 各模块的字段映射方法
     *
     */
    protected function _wbs_basic_map(&$json)
    {

    }

    /**
     * 数据对象的事务调用控制方法
     */
    protected function dbo_start_trans(&$arr, &$dbo)
    {
        $dbo->startTrans(); $arr[] = &$dbo;
    }

    protected function dbo_rollback(&$arr, $debug = false)
    {
        foreach ($arr as $key => $data) {
            $arr[$key]->rollback();
            if($debug){
                Log::write("Rolled back table: ".$arr[$key]->getTableName(), Log::INFO);
            }
        }
    }

    protected function dbo_commit(&$arr, $debug = false)
    {
        foreach ($arr as $key => $data) {
            $arr[$key]->commit();
            if($debug){
                Log::write("Committed table: ".$arr[$key]->getTableName(), Log::INFO);
            }
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