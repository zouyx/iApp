<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="j" uri="/jodd" %>
<j:set name="path" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
<title>iBlog</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${path}/resource/css/bootstrap.min.css" rel="stylesheet"
	media="screen"></link>
<link href="${path}/resource/css/bootstrap-responsive.min.css" rel="stylesheet"
	media="screen"></link>
<link rel="shortcut icon" type="image/ico" href="${path}/favicon.ico" />
<script type="text/javascript" src="${path}/resource/js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${path}/resource/js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/resource/js/util/jquery.bsFormAlerts.min.js"></script>
<script type="text/javascript" src="${path}/resource/js/home/home.js"></script>
</head>

<body>
	<div class="bs-docs-example">
		<div id="navbar-example" class="navbar navbar-static">
			<div class="navbar-inner">
				<div class="container" style="width: auto;">
					<a class="brand" href="#" id="brand">iBlog</a>
					<ul class="nav" role="navigation">
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="/iApp">首页</a></li>

						<li class="dropdown"><a href="#" id="drop2" role="button"
							class="dropdown-toggle" data-toggle="dropdown">下拉框<b
								class="caret"></b> </a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">选项黎遮</a></li>
								<li role="presentation" class="divider"></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">选项黎遮2</a></li>
							</ul>
						</li>
					</ul>

					<ul class="nav pull-right">
						<!-- Button to trigger modal -->
						<button href="#myModal" class="btn btn-primary" 
							data-toggle="modal" data-loading-text="Loading...">登录</button>
						&nbsp;&nbsp;
						<button type="button" class="btn btn-link btn-small">退出</button>
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
				<form class="form-signin" id="signinForm">
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
							<button type="button" class="btn btn-primary btn-large" onclick="signin(this);" data-loading-text="Loading...">立刻登录</button>
							&nbsp;&nbsp;
							<button type="button" class="btn btn-link btn-small">忘记密码</button>
						</div>
					</div>
					<span data-alertid="message"></span>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
