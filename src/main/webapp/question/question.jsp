<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="j" uri="/jodd"%>
<j:set name="path" scope="page"
	value="${pageContext.request.contextPath}" />
<html>
<head>
<title>我的首页 新浪微博-随时随地分享身边的新鲜事儿</title>
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
	src="${path}/resource/js/util/jquery.bsFormAlerts.min.js"></script>
<script type="text/javascript"
	src="${path}/resource/js/question/question.js"></script>
</head>

<body id="result">
	<div>
		<iframe id="frame" name="frame" src="main" width="99.9%" height="3000"
			scrolling="no" frameborder="0"></iframe>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- 
				<div class="modal-header">
					<h2 class="modal-title text-center" id="myModalLabel">注意!</h2>
				</div>
				<div class="modal-body text-center">宜家你暂时唔可以访问网页住先.</div>
				 -->
				<div class="modal-footer">
					<!-- <button type="button" class="btn btn-primary">想访问请点这里!</button> -->
					<a href="question/question.show.html" class="btn btn-primary" title="" data-original-title="Tooltip">想访问请点这里!</a>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
</html>