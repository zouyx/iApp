<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<title>iApp</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="resource/css/bootstrap.min.css" rel="stylesheet"
	media="screen"></link>
<link href="resource/css/bootstrap-responsive.min.css" rel="stylesheet"
	media="screen"></link>
<script type="text/javascript" src="resource/js/jquery/jquery.min.js"></script>
<script src="resource/js/bootstrap/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">
		<!-- Button to trigger modal -->
		<a href="#myModal" role="button" class="btn btn-primary" data-toggle="modal">查看演示案例</a>

		<!-- Modal -->
		<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h3 id="myModalLabel">Modal header</h3>
			</div>
			<div class="modal-body">
				<label>Label name</label>
				<input type="text" placeholder="Type something…">
			</div>
			<div class="modal-footer">
				<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
				<button class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</body>
</html>
