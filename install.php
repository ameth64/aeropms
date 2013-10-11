<?php
	$files = "Conf/db.php";

if (isset($_POST["install"])) {
	$config_str = "<?php\n";
	$config_str .= "return array(\n";
	$config_str .= "        'DB_TYPE'=>'mysql',\n";
	$config_str .= "        'DB_HOST'=>'" . $_POST["db_host"] . "',\n";
	$config_str .= "        'DB_NAME'=>'" . $_POST["db_dbname"] . "',\n";
	$config_str .= "        'DB_USER'=>'" . $_POST["db_user"] . "',\n";
	$config_str .= "        'DB_PWD'=>'" . $_POST["db_pass"] . "',\n";
	$config_str .= "        'DB_PORT'=>'3306',\n";
	$config_str .= "        'DB_PREFIX'=>'" . $_POST["db_tag"] . "',\n";
	$config_str .= "    );\n";

	$ff = fopen($files, "w ");
	fwrite($ff, $config_str);

	$mysql_host = $_POST["db_host"];
	$mysql_user = $_POST["db_user"];
	$mysql_pass = $_POST["db_pass"];
	$mysql_dbname = strtolower($_POST["db_dbname"]);
	$mysql_tag = $_POST["db_tag"];

	if (!@$link = mysql_connect($mysql_host, $mysql_user, $mysql_pass)) {//检查数据库连接情况
		echo "数据库连接失败! 请返回上一页检查连接参数 <a href=install.php>返回修改</a>";
	} else {
		mysql_query("CREATE DATABASE `$mysql_dbname` DEFAULT CHARACTER SET utf8 ");
		mysql_select_db($mysql_dbname);
		mysql_query("set names 'utf8'");
		$lines = file("Sql/demo.sql");

		$sqlstr = "";
		foreach ($lines as $line) {
			$line = trim($line);
			if ($line != "") {
				if (!($line{0} == "#" || $line{0} . $line{1} == "--")) {
					$sqlstr .= $line;
				}
			}
		}
		$sqlstr = rtrim($sqlstr, ";");
		$sqls = explode(";", $sqlstr);
		foreach ($sqls as $val) {
			$val = str_replace("`think_", "`" . $mysql_tag, $val);
			mysql_query($val);
		}

		rename("install.php", "install.lock");
		echo "<script>\n
				window.onload=function(){
					alert('安装成功');
					location.href='index.php';
				}
				</script>";
	}
}
?>
<!DOCTYPE html>
<html lang='en'>
	<head>
		<meta charset='utf-8' />
		<title>smeoa</title>
		<meta content='' name='description' />
		<meta content='' name='author' />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="/Public/css/bootstrap.min.css" rel="stylesheet" >
		<link href="/Public/css/style.css" rel="stylesheet">
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-8">
					<div class="page-header">
						<h1>小微OA系统 <small>让工作更轻松快乐</small></h1>
					</div>
					<form   method="POST" class="well form-horizontal">
						<div class="form-group">
							<label class="control-label col-md-4" for="name" >检查：</label>
							<div class="col-md-8">
								<?php								
								if (!is_writable($files)) {
									echo "<button type='button' class='btn btn-danger form-con'>Fail</button><p>请检查Conf目录写入权限</p>";
								} else {
									echo "<button type='button' class='btn btn-success form-con'>OK</button>";
								}
								?>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4" for="name" >填写主机：</label>
							<div class="col-md-8">
								<input type="text" name="db_host" value="localhost" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label  col-md-4" for="name">用 户 名：</label>
							<div class="col-md-8">
								<input type="text" name="db_user" value="root"  class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4" for="name">密　　码：</label>
							<div class="col-md-8">
								<input type="text" name="db_pass" value="test" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4" for="name">数据库名：</label>
							<div class="col-md-8">
								<input type="text" name="db_dbname" value="install" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4" for="name">数据前缀：</label>
							<div class="col-md-8">
								<input type="text" name="db_tag" value="smeoa_" class="form-control"/>
							</div>
						</div>
						<button type="submit" name="install" class="btn btn-default">
							下一步
						</button>
					</form>
				</div>
			</div>
	</body>
</html>
