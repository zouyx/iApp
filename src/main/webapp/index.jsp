<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<title>iBlog</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="resource/css/bootstrap.min.css" rel="stylesheet"
	media="screen"></link>
<link href="resource/css/bootstrap-responsive.min.css" rel="stylesheet"
	media="screen"></link>
<link rel="shortcut icon" type="image/ico" href="favicon.ico" />
<script type="text/javascript" src="resource/js/jquery/jquery.min.js"></script>
<script src="resource/js/bootstrap/bootstrap.min.js"></script>
</head>

<body>
	<div class="bs-docs-example">
		<div id="navbar-example" class="navbar navbar-static">
			<div class="navbar-inner">
				<div class="container" style="width: auto;">
					<a class="brand" href="#">iBlog</a>
					<ul class="nav" role="navigation">
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="/iApp">首页</a>
						</li>

						<li class="dropdown"><a href="#" id="drop2" role="button"
							class="dropdown-toggle" data-toggle="dropdown">下拉框<b
								class="caret"></b>
						</a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">Something else here</a>
								</li>
								<li role="presentation" class="divider"></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">Separated link</a>
								</li>
							</ul></li>
					</ul>

					<ul class="nav pull-right">
						<!-- Button to trigger modal -->
						<a href="#myModal" role="button" class="btn btn-primary"
							data-toggle="modal">登录</a>
					</ul>
				</div>
			</div>
		</div>
		<!-- /navbar-example -->
	</div>
	<div class="container">
		<!-- Modal -->
		<div id="myModal" class="modal hide fade modal-signin" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h2 id="myModalLabel" class="text-center">登录</h2>
			</div>
			<div class="modal-body">
				<form class="form-signin">
					<div class="control-group">
						<div class="controls">
							<input type="text" id="inputEmail" placeholder="帐号/邮箱">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="password" id="inputPassword" placeholder="密码">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<label class="checkbox"> <input type="checkbox"><font
								style="color:red">记住我</font> </label>
							<button type="submit" class="btn btn-primary btn-large">立刻登录</button>
							&nbsp;&nbsp;
							<button type="button" class="btn btn-link btn-small">忘记密码</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
