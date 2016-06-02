<?php
class ProjectAction extends CommonAction {
    protected $config = array('app_type' => 'asst');

	public function select()
	{
        $model = M("ProjectList");
        $proj_list = $model->select();
        $this->assign("proj_list", $proj_list);
        $this->assign("title", get_system_config("SYSTEM_NAME")." - 项目列表");
		$this->display();
	}
}

?>