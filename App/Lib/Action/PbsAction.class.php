<?php
/**
 * Created by PhpStorm.
 * User: MobiuS
 * Date: 16-6-6
 * Time: 上午10:20
 */
class PbsAction extends CommonAction {
    protected $config = array('app_type' => 'asst');

    //根据节点的wbs_id是否为空选择图标
    protected $ztree_img = array(
        "no_wbs"=>"__PUBLIC__/css/ztree/zTreeStyle/img/diy/2.png",
        "in_proc"=>"__PUBLIC__/css/ztree/zTreeStyle/img/diy/4.png"
    );

    public static function addZTreeItem(&$item){
        $item["open"] = 'true';
    }

    public function index()
    {
        $proj_id = $this->_update_param("proj_id");
        if(!$proj_id){
            $this->error("无效的项目ID");
            $this->redirect("project/select");
            return;
        }
        session("proj_id", $proj_id);

        $name = $this->getActionName();
        $menu_node = D("Node") -> where("url like '%$name%'")->getField("id");
        cookie("top_menu", $menu_node);

        $json = $this->_convertJson($proj_id); //根据项目id读取节点表数据并组装JSON
        $this->assign("node_json", $json);

        //框架提供的树生成方法
        $PbsNode = M("PbsNode");
        $func = function(&$var){
            $var["open"] = "true";};
        $list = $PbsNode->where("project_id=$proj_id")->field("id, parent_id, name, wbs_id")->order('id')->select();
        $pbs_tree = list_to_tree($list, -1, 'id', 'parent_id', 'children', $func);
        $refer = array();
        $pk = 'id';
        foreach ($list as $key => $data) {
            $refer[$data[$pk]] = &$list[$key];
        }
        $this->assign("node_json", json_encode($pbs_tree, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT));

        $pbs_raw = print_r($list, true);
        $this->assign("pbs_raw", $pbs_raw);

        $this->assign("proj_id", $proj_id);
        $this->display();
    }

/**
    以文本方式导入节点数据, 其格式如下:
    0	轻型运动类飞机;
    1	机体结构;
    1.1	机身结构;
    1.1.1	机身壳体;
 * 方法将解析标号并确定节点上下文, 标号与节点名称间以制表符分隔
*/
    public function import()
    {
        $proj_id = $this->_get("proj_id");
        if(!$proj_id)
        {
            $this->error("无效的项目ID");
            return;
        }
        $content = $this->_param("content");
        if($content)
        {
            //实例化模型
            $PbsNode = D("PbsNode");
            $PbsNode->startTrans();
            $c = $PbsNode->where("project_id=$proj_id")->delete();
            $PbsNode->commit();
            Log::write("PBS导入前删除记录数: ".$c);

            $PbsNode->startTrans();
            //分解节点文本, 默认格式: 标号\t名称;
            $content_src = explode(";", $content);
            $size = count($content_src);
            $content_out = array();
            for($i = 0; $i < $size; $i++)
            {
                $tmp = explode("\t", $content_src[$i]);
                if(count($tmp) > 0 && strlen($tmp[0]) > 0){
                    // 组装单条数据对象
                    $data["project_id"] = $proj_id;
                    $data["name"] = $tmp[1];
                    $data["node_level"] = explode(".", $tmp[0]);
                    $data["remark"] = "暂无描述";
                    //$PbsNode->create($data);
                    //$PbsNode->add();
                    $pk = $PbsNode->Insert($proj_id,  $tmp[1], explode(".", $tmp[0]));
                    array_push($content_out, array("node_index"=>$tmp[0], "node_name"=>$tmp[1], "res"=>$pk));
                }
            }
            $PbsNode->commit();

//            $this->assign("content_out", $content_out);
//            $this->assign("content_count", $size);
            $this->redirect("pbs/index", array("proj_id"=>$proj_id));
        }
        $this->assign("proj_id", $proj_id);
        $this->display();
    }

    /**
     * PBS节点读取方法
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
            $model = D("PbsNode");
            Log::write("收到ajax请求, proj_id=$proj_id", NOTICE);
            $data_array = $this->_parseNode($model, $proj_id);
            $json = json_encode($data_array, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT); //, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT
            Log::write("读取PBS结果: ".$json, NOTICE);
            $this->ajaxReturn($json, 'EVAL');
        }
    }

    /**
 * 基本增删改操作 by 钟伯金*/
    public function PbsDel()
    {
        $node_id = $this->_get("de_id");
        $PbsNode = D('PbsNode');
        if($PbsNode->where("parent_id = $node_id")->select()){
            $this->error('请删除该结点下所有子结点后再删除该结点！');
        }elseif($PbsNode->where("id = $node_id")->delete()){
            $this->success('删除成功！');
        }
    }

    public function PbsEdit($node_id = null, $name = null, $remark = null)
    {
        $PbsNode = D('PbsNode');
        $Nodeinfo['name'] = $name;
        $Nodeinfo['remark'] = $remark;
        //echo $PbsNode->getLastSql();exit();
        if($PbsNode->where("id = $node_id")->save($Nodeinfo)){
            $this->success('保存成功！');
        }else{
            $this->error('保存失败！');
        }

    }

    public function PbsAdd($node_id = null, $name = null, $remark = null)
    {
        $PbsNode = D('PbsNode');
        $Nodeinfo['parent_id'] = $node_id;
        $Nodeinfo['name'] = $name;
        $Nodeinfo['remark'] = $remark;
        if($PbsNode->Add($Nodeinfo)){
            $this->success('增加成功！');
        }

    }

/**
 *    取得节点数据的嵌套数组, 用系统方法生成JSON
*/
    protected function _convertJson($proj_id)
    {
        $PbsNode = D("PbsNode");
        $data_array = $this->_parseNode($PbsNode, $proj_id, -1);
        $json = json_encode($data_array); //, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT
        return $json;
    }

/**
 *    递归方法, 解析节点表数据并生成嵌套数组
*/
    protected function _parseNode(&$model, $proj_id)
    {
        $data = $model->where("project_id=$proj_id")->field("id, parent_id, name, node_level")->order("inner_index")->select();
        $tree = list_to_tree($data, -1, 'id', 'parent_id', 'children', function(&$item){
            $item["node_type"]="pbs";
            $item["pbs_level"]=$item["node_level"];

            //-zTree私有属性
            //"icon"=>$this->ztree_img["wbs_node"],
            $item["open"]='true';
        });
        return $tree;
    }

    protected function _parseNode_old(&$model, $proj_id, $parent_id)
    {
        $data = $model->where("project_id=$proj_id and parent_id=$parent_id")->order("inner_index")->select();
        $res = array();
        foreach($data as $item)
        {
            array_push($res,
                array("id"=>$item["id"],
                    "pbs_level"=>$item["node_level"],
                    "name"=>$item["name"],
                    "open"=>true,
                    "icon"=>($item["wbs_id"]==0? $this->ztree_img["no_wbs"]: $this->ztree_img["in_proc"]),
                    "children"=>$this->_parseNode($model, $proj_id, $item["id"])));
        }
        return $res;
    }
}