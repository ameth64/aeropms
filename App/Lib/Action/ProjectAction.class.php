<?php
class ProjectAction extends CommonAction {
    protected $config = array('app_type' => 'asst');

	public function select()
	{
        $name = $this->getActionName();
        $menu_node = D("Node") -> where("url like '%$name%'")->getField("id");
        cookie("top_menu", $menu_node);
        $model = M("ProjectList");
        $proj_list = $model->select();
        $this->assign("proj_list", $proj_list);
        $this->assign("title", get_system_config("SYSTEM_NAME")." - 项目列表");
		$this->display();
	}
}

?>