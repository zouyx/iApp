<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" pageEncoding="UTF-8"%>   
<html>
<head>
<title>iApp</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
	<a name="signup" id="dd" href="#signup" rel="leanModal">3333日</a>
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
	<div id="lean_overlay"></div>
</body>
</html>
