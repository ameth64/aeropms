<?php
/**
 * Created by PhpStorm.
 * User: MobiuS
 * Date: 16-6-6
 * Time: 上午10:20
 */
class PbsAction extends CommonAction {
    protected $config = array('app_type' => 'asst');

    public function index()
    {
        $proj_id = $this->_param("proj_id");
        $json = $this->_convertJson($proj_id);
        $this->assign("node_json", $json);
        $this->display();
    }

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
            //解析节点文本
            $content_src = explode(";", $content);
            $size = count($content_src);
            $content_out = array();
            for($i = 0; $i < $size; $i++)
            {
                $tmp = explode("\t", $content_src[$i]);
                if(count($tmp) > 0 && strlen($tmp[0]) > 0){
                    // 组装数据对象
                    $pk = $PbsNode->Insert($proj_id,  $tmp[1], explode(".", $tmp[0]));
                    array_push($content_out, array("node_index"=>$tmp[0], "node_name"=>$tmp[1], "res"=>$pk));
                }
            }

//            $this->assign("content_out", $content_out);
//            $this->assign("content_count", $size);
            $this->redirect("pbs/index", array("proj_id"=>$proj_id));
        }
        $this->assign("proj_id", $proj_id);
        $this->display();
    }

    protected function _convertJson($proj_id)
    {
        $PbsNode = D("PbsNode");
        $data_array = $this->_parseNode($PbsNode, $proj_id, -1);
        $json = json_encode($data_array, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);
        return $json;
    }

    protected function _parseNode(&$model, $proj_id, $parent_id)
    {
        $data = $model->where("project_id=$proj_id and parent_id=$parent_id")->order("inner_index")->select();
        $res = array();
        foreach($data as $item)
        {
            array_push($res,
                array("id"=>$item["id"],
                    "name"=>$item["name"],
                    "open"=>true,
                    "children"=>$this->_parseNode($model, $proj_id, $item["id"])));
        }
        return $res;
    }
}