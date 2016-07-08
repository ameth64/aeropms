<?php
/**
 * Created by PhpStorm.
 * User: MobiuS
 * Date: 2016/6/11
 * Time: 21:21
 */

import('@.ORG.Util.UploadFile');

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
        //框架的原生树构造方法测试
//        $PbsNode = M("PbsNode");
//        $pbs_list = $PbsNode->select();
//        $pbs_tree = list_to_tree($pbs_list, -1, 'id', 'parent_id');
//        $this->assign("pbs_tree", json_encode($pbs_tree, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT));

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


        //处理文件上传
        //$this->error(print_r($_FILES["input-file"], true));
        if($_FILES["input-file"]["tmp_name"][0]){
            $upload = new UploadFile();// 实例化上传类
            $upload->maxSize  = 50*1024*1024 ;// 设置附件上传大小, 默认50MB
            $upload->savePath =  './Public/Uploads/';// 设置附件上传目录
            $upload->supportMulti = true;
            $attach_id = -1;
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
                    $data["creator_id"] = get_user_id();
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
        $WbsNode->creator_id = get_user_id();
        $WbsNode->create_time = time();
        $WbsNode->update_time = time();
        $WbsNode->attach_id = $attach_id;
        $node_id = $WbsNode->add();

        // 处理输出列表json
        //$wbs_output_json = $this->_post('wbs_output_list', null); //若使用框架_post方法则可能因过滤函数而无法成功解码JSON
        $wbs_output_json = $_POST['wbs_output_list'];
        if(isset($wbs_output_json) && $wbs_output_json != "0"){
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
        $eng_phase = $this->_update_param("engineering_phase");
        $model = M("WbsNode");
        $nodes = $model->where("project_id=$proj_id")->getField("id, parent_id, name, type, engineering_phase");
        $data_array = $this->_parseNode($nodes, $proj_id, -1);
        $json = json_encode($data_array, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT); //, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT

    }

    /**
     *    取得节点数据的嵌套数组, 用系统方法生成JSON
     */
    protected function _convertJson($proj_id)
    {
        $WbsNode = D("WbsNode");
        $PbsNode = D("PbsNode");
        $data_array = $this->_parseNodeAll($PbsNode, $WbsNode, $proj_id, -1, -1, 1);
        $json = json_encode($data_array, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT); //, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT
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
                array(
                    $item["name"]=>array(
                        "name"=>$item["name"],
                        "type"=>($item["type"] == 3? "item": "folder"),
                        "additionalParameters"=>array("children"=>$this->_parseNode($model, $proj_id, $item["id"]))
                    )
                )
            );
        }
        return $res;
    }

    protected function _parseNodeAll(&$pbs_model, &$wbs_model, $proj_id, $pbs_parent_id, $wbs_parent_id, $type)
    {
        $res = array();

        //处理wbs子节点
        $wbs_parent = ($wbs_parent_id == -1)? ($wbs_model->where("project_id=$proj_id and pbs_id=$pbs_parent_id")->min("parent_id")) : ($wbs_parent_id);
        //$wbs = $wbs_model->where("project_id=$proj_id and pbs_id=$pbs_parent_id and parent_id=$wbs_parent")->select();
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
                        "wbs_type"=>"",
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