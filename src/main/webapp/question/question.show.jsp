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
				<div class="tab-content">
					<div class="tab-pane active" id="tab1">
						<h3 class="text-center">问题1</h3>
						<h2 class="text-center">鸡有几只脚啊?</h2>
						<br/>
						<div class="row">
							<div class="span3 offset3">
								<button class="btn btn-large btn-block"
									type="button">1</button>
							</div>
							<div class="span3">
								<button class="btn btn-large btn-block"
									type="button">2</button>
							</div>
						</div>
						<br/>
						<div class="row">
							<div class="span3 offset3">
								<button class="btn btn-large btn-block"
									type="button">3</button>
							</div>
							<div class="span3">
								<button class="btn btn-large btn-block"
									type="button">4</button>
							</div>
						</div>
						<button type="button" class="btn btn-primary btn-large pull-right"
							onclick="nextTab();">下一个</button>
					</div>
					<div class="tab-pane" id="tab2">
						<h1 class="text-center">问题2</h1>
						<p class="text-center">问题内容</p>
						<button type="button" class="btn btn-primary btn-large pull-right"
							onclick="nextTab();">下一个</button>
					</div>
					<div class="tab-pane" id="tab3">
						<h1 class="text-center">问题3</h1>
						<p class="text-center">问题内容</p>
						<button type="button" class="btn btn-primary btn-large pull-right"
							onclick="nextTab();">下一个</button>
					</div>
					<div class="tab-pane" id="tab4">
						<h1 class="text-center">问题4</h1>
						<p class="text-center">问题内容</p>
						<button type="button" class="btn btn-primary btn-large pull-right"
							onclick="nextTab();">下一个</button>
					</div>
					<div class="tab-pane" id="tab5">
						<h1 class="text-center">问题5</h1>
						<p class="text-center">问题内容</p>
						<button type="button" class="btn btn-primary btn-large pull-right"
							onclick="nextTab();">下一个</button>
					</div>
					<div class="tab-pane" id="tab6">
						<h1 class="text-center">问题6</h1>
						<p class="text-center">问题内容</p>
						<button type="button" class="btn btn-primary btn-large pull-right"
							onclick="nextTab();">下一个</button>
					</div>
					<div class="tab-pane" id="tab7">
						<h1 class="text-center">问题7</h1>
						<p class="text-center">问题内容</p>
					</div>
				</div>
				<hr />
				<div class="tabbable tabs-below pagination pagination-centered">
					<ul class="nav nav-tabs" id="myTab">
						<li class="active"><a href="#tab1">问题1</a>
						</li>
						<li><a href="#tab2">问题2</a>
						</li>
						<li><a href="#tab3">问题3</a>
						</li>
						<li><a href="#tab4">问题4</a>
						</li>
						<li><a href="#tab5">问题5</a>
						</li>
						<li><a href="#tab6">问题6</a>
						</li>
						<li><a href="#tab7">问题7</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
