<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@ taglib prefix="course" uri="/WEB-INF/menu.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>易通软件-我的课程</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<link href="<%=basePath%>/resource/images/logo.ico" rel="shortcut icon">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/css/all.css">
	<script src="<%=basePath%>/resource/jquery/jquery.min.js"></script>
	<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
	<style type="text/css">
		.nav-pills .nav-item{
			margin-right: 30px;
		}
	
		.nav-pills .nav-item:HOVER{
			background-color: #f1f1f1;
			border-radius: .25rem;
		}
		
		.card-img-top{
			width: 257px;
		}
		
		.card{
			cursor: pointer;
		}
		
		.tab-pane{
			min-height: 807px;
			
		}
		
		.col-sm-3{
		 	padding-left:0px;
		 	padding-right: 30px;
		 	margin-bottom: 10px;
		 	margin-top: 10px;
		}
	
		
	</style>
	<script type="text/javascript">
		$(function(){
			$(".card").click(function(){
				
			});
		});
	
	</script>
	
</head>
<body>
	<div>
	    <course:menu/>
	</div>
	<div class="body-container">
		<div class="navbar navbar-light bg-faded">
		  <div class="container">
		    <span class="navbar-brand" style="padding: 15px 0px;color:#616161;">
		    	<i class="fa fa-list"></i>&nbsp;课程列表
		    </span>
		  </div>
		</div>
		<p/><br/>
		<div class="container" style="padding: 0px;">
	   	    <ul class="nav nav-pills">
			  <li class="nav-item">
			    <a href="#div1" class="nav-link active" role="tab" data-toggle="tab">全&nbsp;部</a>
			  </li>
			  <li class="nav-item">
			    <a href="#div2" class="nav-link" role="tab" data-toggle="tab">学习中</a>
			  </li>
			  <li class="nav-item">
			    <a href="#div3" class="nav-link" role="tab" data-toggle="tab">已学完</a>
			  </li>
			</ul>
		</div>
		<p><br/>
		<div class="container">
			<div class="tab-content">
			  <div role="tabpanel" class="tab-pane active" id="div1">
			  		<div class="row">
		 				<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
							  <div class="card-block">
							    <p class="card-text">html</p>
							  </div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card2.jpg">
							  <div class="card-block">
							    <p class="card-text">javaScript</p>
							  </div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card3.jpg">
							  <div class="card-block">
							    <p class="card-text">java基本</p>
							  </div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
							  <div class="card-block">
							    <p class="card-text">java基本</p>
							  </div>
							</div>
						</div>
					</div>
					<div class="row">
		 				<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
							  <div class="card-block">
							    <p class="card-text">html</p>
							  </div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card2.jpg">
							  <div class="card-block">
							    <p class="card-text">javaScript</p>
							  </div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card3.jpg">
							  <div class="card-block">
							    <p class="card-text">java基本</p>
							  </div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
							  <div class="card-block">
							    <p class="card-text">java基本</p>
							  </div>
							</div>
						</div>
					</div>
					<div class="row">
		 				<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card2.jpg">
							  <div class="card-block">
							    <p class="card-text">html</p>
							  </div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card3.jpg">
							  <div class="card-block">
							    <p class="card-text">javaScript</p>
							  </div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card3.jpg">
							  <div class="card-block">
							    <p class="card-text">java基本</p>
							  </div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/card2.jpg">
							  <div class="card-block">
							    <p class="card-text">java基本</p>
							  </div>
							</div>
						</div>
					</div>
					<p/>
					<center>
						<nav>
						  <ul class="pagination">
						    <li>
						      <a href="#" aria-label="Previous">
						        <span aria-hidden="true">上一页</span>
						        <span class="sr-only">Previous</span>
						      </a>
						    </li>
						    <li class="active">
						      <a href="#">1 <span class="sr-only">(current)</span></a>
						    </li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li class="disabled"><a>...</a></li>
						    <li><a href="#">10</a></li>
						    <li><a href="#">11</a></li>
						    <li><a href="#">12</a></li>
						    <li>
						      <a href="#" aria-label="Next">
						        <span aria-hidden="true">下一页</span>
						        <span class="sr-only">Next</span>
						      </a>
						    </li>
						  </ul>
						</nav>
					</center>
					<p/><br/>
			  </div>
			  <div role="tabpanel" class="tab-pane" id="div2">
		  		<div class="row">
	 				<div class="col-sm-3">
						<div class="card">
						  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
						  <div class="card-block">
						    <p class="card-text">html</p>
						  </div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="card">
						  <img class="card-img-top" src="<%=basePath%>/resource/images/card2.jpg">
						  <div class="card-block">
						    <p class="card-text">javaScript</p>
						  </div>
						</div>
					</div>
				</div>
			  </div>
			  <div role="tabpanel" class="tab-pane" id="div3">
			  	   <div class="alert alert-info" role="alert">
					  <strong>提示!</strong>目前没有学完的课程
				   </div>
			  </div>
		    </div>
		</div>
	</div>
	<jsp:include page="/foot.jsp"></jsp:include>
</body>
</html>