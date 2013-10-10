<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="j" uri="/jodd"%>
<j:set name="path" scope="page"
	value="${pageContext.request.contextPath}" />
<html>
<head>
<title></title>
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
			<div class="tabbable tabs-below pagination pagination-centered">
				<div class="tab-content">
					<div class="tab-pane active" id="tab1">
						<h1 class="text-center">问题1</h1>
						<p class="text-center">问题内容</p>
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
				<hr/>
				<ul class="nav nav-tabs" id="myTab">
					<li class="active"><a href="#tab1">问题1</a></li>
					<li><a href="#tab2">问题2</a></li>
					<li><a href="#tab3">问题3</a></li>
					<li><a href="#tab4">问题4</a></li>
					<li><a href="#tab5">问题5</a></li>
					<li><a href="#tab6">问题6</a></li>
					<li><a href="#tab7">问题7</a></li>
				</ul>
			</div>
		</div>
		<!-- 
		<div class="bs-docs-example">
              <div id="myCarousel" class="carousel slide">
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="${path}/resource/img/01.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>First Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                  </div>
                  <div class="item">
                    <img src="${path}/resource/img/02.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                  </div>
                  <div class="item">
                    <img src="${path}/resource/img/03.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>Third Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
              </div>
            </div>
             -->
	</div>
</body>
</html>
