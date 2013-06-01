<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>iApp</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="resource/css/style.css" />
<script type="text/javascript" src="resource/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="resource/jquery/jquery.leanModal.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('a[rel*=leanModal]').leanModal({
			top : 100,
			closeButton : ".modal_close"
		});
	});
</script>
</head>

<body>
	<a name="signup" id="dd" href="#signup" rel="leanModal">测试按钮</a>
	<div id="signup">
			<div id="signup-ct">
				<div id="signup-header">
					<h2>Create a new account</h2>
					<p>It's simple, and free.</p>
					<a class="modal_close" href="#"></a>
				</div>
	
				<form action="">
					<div class="txt-fld">
						<label for="">Username</label> <input id="" class="good_input"
							name="" type="text" />
	
					</div>
					<div class="txt-fld">
						<label for="">Email address</label> <input id="" name=""
							type="text" />
					</div>
					<div class="txt-fld">
						<label for="">Password</label> <input id="" name="" type="text" />
	
					</div>
					<div class="btn-fld">
						<button type="submit">Sign Up &raquo;</button>
					</div>
				</form>
			</div>
		</div>
	<div id="lean_overlay"/>
</body>
</html>
