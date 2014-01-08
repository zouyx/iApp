<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="j" uri="/jodd"%>
<j:set name="path" scope="page"
	value="${pageContext.request.contextPath}" />
<html>
<head>
<title>hello</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${path}/resource/css/bootstrap.min.css" rel="stylesheet"
	media="screen"></link>
<link href="${path}/resource/css/bootstrap-responsive.min.css"
	rel="stylesheet" media="screen"></link>
<script type="text/javascript"
	src="${path}/resource/js/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="${path}/resource/js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${path}/resource/js/question/question.info.js"></script>
<script type="text/javascript"
	src="${path}/resource/js/question/question.show.js"></script>
</head>
<body id="result">
	<div class="hero-unit">
		<h1 class="text-center">Heading</h1>
		<p class="text-center">Tagline</p>
		<p></p>
	</div>
	<div class="container">
		<div class="bs-docs-example">
			<div>
				<div class="tab-content" id="tab-content">
					
				</div>
				<hr />
				<div class="tabbable tabs-below pagination pagination-centered">
					<ul class="nav nav-tabs" id="footer">
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
