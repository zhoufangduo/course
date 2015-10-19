<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@ taglib prefix="course" uri="/WEB-INF/menu.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>课程系统</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<link href="<%=basePath%>/resource/images/logo.ico" rel="shortcut icon">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/css/all.css">
	<script src="<%=basePath%>/resource/jquery/jquery.min.js"></script>
	<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
	    <course:menu/>
	</div>
	<div class="body-container">
		<div id="carousel-example-captions" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-captions" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-captions" data-slide-to="1" class=""></li>
				<li data-target="#carousel-example-captions" data-slide-to="2" class=""></li>
				<li data-target="#carousel-example-captions" data-slide-to="3" class=""></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img src="<%=basePath%>/resource/images/banner_free.jpg" data-holder-rendered="true">
				</div>
				<div class="carousel-item">
					<img src="<%=basePath%>/resource/images/banner_edu.jpg" data-holder-rendered="true">
				</div>
				<div class="carousel-item">
					<img src="<%=basePath%>/resource/images/banner_fish.jpg" data-holder-rendered="true">
				</div>
				<div class="carousel-item">
					<img src="<%=basePath%>/resource/images/banner_cloud.jpg" data-holder-rendered="true">
				</div>
			</div>
			<a class="left carousel-control" href="#carousel-example-captions" role="button" data-slide="prev"> 
				<span class="icon-prev" aria-hidden="true"></span> 
				<span class="sr-only">Previous</span>
			</a> 
			<a class="right carousel-control" href="#carousel-example-captions" role="button" data-slide="next"> 
				<span class="icon-next" aria-hidden="true"></span> 
				<span class="sr-only">Next</span>
			</a>
		</div>
		<br/>
		<div class="container">
			<div class="text-line">
			    <h4><span>校园课程</span><div class="line"></div></h4>
			</div>
			<div class="row">
 				<div class="col-sm-4">
					<div class="card">
					  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
					  <div class="card-block">
					    <p class="card-text">html</p>
					  </div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
					  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
					  <div class="card-block">
					    <p class="card-text">javaScript</p>
					  </div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
					  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
					  <div class="card-block">
					    <p class="card-text">java基本</p>
					  </div>
					</div>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
					  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
					  <div class="card-block">
					    <p class="card-text">java API</p>
					  </div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
					  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
					  <div class="card-block">
					    <p class="card-text">XML</p>
					  </div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
					  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
					  <div class="card-block">
					    <p class="card-text">反射</p>
					  </div>
					</div>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
					  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
					  <div class="card-block">
					    <p class="card-text">java API</p>
					  </div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
					  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
					  <div class="card-block">
					    <p class="card-text">XML</p>
					  </div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
					  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
					  <div class="card-block">
					    <p class="card-text">反射</p>
					  </div>
					</div>
				</div>
			</div>
			<br/>
			<div style="text-align: center;">
				<a class="btn btn-secondary" >更多课程
					<span class="fa fa-angle-right"></span>
				</a>
			</div>
			<p/><br/>
		</div>
		<div class="row" style="background-color: #46c37b;margin: auto;">
            <div class="col-sm-4 item">
	          <img class="img-responsive" src="<%=basePath%>/resource/images/icon_introduction_1.png">
	          <h6>网校功能强大</h6>
	          <h6>一万七千多家网校共同选择，值得信赖</h6>
	        </div>
	        <div class="col-sm-4 item">
	          <img class="img-responsive" src="<%=basePath%>/resource/images/icon_introduction_2.png">
	          <h6>响应式页面技术</h6>
	          <h6>采用响应式技术，完美适配任意终端</h6>
	        </div>
	        <div class="col-sm-4 item">
	          <img class="img-responsive" src="<%=basePath%>/resource/images/icon_introduction_3.png">
	          <h6>教育云服务支持</h6>
	          <h6>强力教育云支持，免除你的后顾之忧</h6>
	        </div>
	    </div> 
	    <br/>
	    <div class="container">
			<div class="text-line">
			    <h4><span>推荐教师</span><div class="line"></div></h4>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="teacher-item">
					  <img src="<%=basePath%>/resource/images/zhao.jpg" class="img-circle">
					  <div class="card-block">
					    <p class="card-text">
					    	<span class="name">潘老师</span>
					    	<br/>
					    	<label class="job">老板</label>
					    	<br/><br/>
					    	<label class="ins">
					    		主要负责好知网的运营工作。 英国卡迪夫大学新闻学硕士，原浙江...
					    	</label>
						</p>
					  </div>
					</div>
          		</div>
          		<div class="col-md-3">
           			<div class="teacher-item">
					  <img src="<%=basePath%>/resource/images/zhao.jpg" class="img-circle">
					  <div class="card-block" >
					    <p class="card-text">
					    	<span class="name">潘老师</span>
					    	<br/>
					    	<label class="job">老板</label>
					    	<br/><br/>
					    	<label class="ins">
					    		主要负责好知网的运营工作。 英国卡迪夫大学新闻学硕士，原浙江...
					    	</label>
						</p>
					  </div>
					</div>
          		</div>
          		<div class="col-md-3">
           			<div class="teacher-item">
					  <img src="<%=basePath%>/resource/images/zhao.jpg" class="img-circle">
					  <div class="card-block" >
					    <p class="card-text">
					    	<span class="name">潘老师</span>
					    	<br/>
					    	<label class="job">老板</label>
					    	<br/><br/>
					    	<label class="ins">
					    		主要负责好知网的运营工作。 英国卡迪夫大学新闻学硕士，原浙江...
					    	</label>
						</p>
					  </div>
					</div>
          		</div>
          		<div class="col-md-3">
           			<div class="teacher-item">
					  <img src="<%=basePath%>/resource/images/zhao.jpg" class="img-circle">
					  <div class="card-block">
					    <p class="card-text">
					    	<span class="name">潘老师</span>
					    	<br/>
					    	<label class="job">老板</label>
					    	<br/><br/>
					    	<label class="ins">
					    		主要负责好知网的运营工作。 英国卡迪夫大学新闻学硕士，原浙江...
					    	</label>
						</p>
					  </div>
					</div>
          		</div>
			</div>
		</div>
		<p/><br/>
		<div style="text-align: center;">
			<a class="btn btn-secondary" >更多老师
				<span class="fa fa-angle-right"></span>
			</a>
		</div>
		<p/><br/>
	</div>
	<jsp:include page="/foot.jsp"></jsp:include>
</body>
</html>