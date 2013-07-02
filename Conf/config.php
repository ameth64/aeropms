<?php
    if (!defined('THINK_PATH')) exit();
    $array=array(
        'URL_MODEL'=>2, // 如果你的环境不支持PATHINFO 请设置为3
        'DB_TYPE'=>'mysql',
        'DB_HOST'=>'localhost',
        'DB_NAME'=>'demo',
        'DB_USER'=>'root',
		'VAR_PAGE'=>'p',
        'DB_PWD'=>'test',
        'DB_PORT'=>'3306',
        'DB_PREFIX'=>'think_',
		'TOKEN_ON'=>false, 
		'TOKEN_TYPE'=>'md5',
		'TOKEN_NAME'=>'__hash__',
		'URL_CASE_INSENSITIVE' =>   true,
		'TMPL_CACHE_ON'=>false,
		'DB_FIELDS_CACHE'=>false,
        'APP_AUTOLOAD_PATH'=>'@.TagLib',
        'SESSION_AUTO_START'=>true,
        'USER_AUTH_KEY'             =>'authId',	// 用户认证SESSION标记
        'ADMIN_AUTH_KEY'			=>'administrator',
        'USER_AUTH_MODEL'           =>'User',	// 默认验证数据表模型
        'AUTH_PWD_ENCODER'          =>'md5',	// 用户认证密码加密方式
        'USER_AUTH_GATEWAY'         =>'login/index',// 默认认证网关
        'NOT_AUTH_MODULE'           =>"Push,Login,Home,Index,File,Userconfig,Systemconfig,Usertag,Systemtag,Profile",
        'DB_LIKE_FIELDS'            =>'title|content|name|remark',
		'SAVE_PATH'=>'Data/Files/',
        'SHOW_PAGE_TRACE'=>1, //显示调试信息
		'E_TI_TYPE'=>array("bool"=>'判断题',"fill"=>'填空题',"name"=>'名词解释',"small"=>'简答题',"onea1"=>'单选A1型题',"onea2"=>'单选A2型题',"multix"=>'多选X题型',"share_gana3"=>'共用题干A3',"share_gana4"=>'共用题干A4',"share_selb1"=>'共用选项B1',"fx"=>'案例分析'),
		'E_TI_ITEM'=>array('0'=>'A','1'=>'B','2'=>'C','3'=>'D','4'=>'E',),
		'E_TI_XH'=>array('0'=>'①','1'=>'②','2'=>'③','3'=>'④','4'=>'⑤','5'=>'⑥',),
    );
    return $array;
?>