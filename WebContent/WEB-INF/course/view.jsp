<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@ taglib prefix="course" uri="/WEB-INF/menu.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>易通软件-课程介绍</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<link href="<%=basePath%>/resource/images/logo.ico" rel="shortcut icon">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/css/all.css">
	<script src="<%=basePath%>/resource/jquery/jquery.min.js"></script>
	<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
	<style type="text/css">
		.course_name{
			font-size: 25px;
		}
		
		.course_title{
			float: right;
			margin-right: 300px;
		}
		body{
			background: #eee;
		}
		
		.card{
			background: #fff;
		}
		
		.col_card{
			position: relative;
			background: #fff;
   			border: .0625rem solid #e5e5e5;
    		border-radius: .25rem;
		}
		
		.teach_head{
			width: 50px;
		    height: 50px;
		    border-radius: 10px;
		    cursor: pointer;
		}
		
		#home{
			font-size: 15px;
		}
		
		.tab-pane .title{
			font-weight: bold;
			margin-top: 20px;
			font-size: 16px;
		}
		
	</style>
</head>
<body>
	<div>
	    <course:menu/>
	</div>
	<div class="body-container">
		<div class="container">
			<p/><br/>
			<div class="card">
			  <div class="card-block">
			  	<img  src="<%=basePath%>/resource/images/course.png">
			  	<div class="course_title">
				  	<span class="course_name">
				    	官方主题
				  	</span>
				  	<p/><br/>
				  	<span>
				  		创建者:初始化管理员
				  	</span>
				  	<p/>
				  	<span>
				  		创建日期:2015-12-12
				  	</span>
			  	</div>
			  </div>
			</div>
			<p/>
			
			 <div class="row">
			    <div class="col-sm-9">
			     	<div class="card">
						<div class="card-block">
							<ul class="nav nav-tabs" role="tablist">
							  <li class="nav-item">
							    <a class="nav-link active" href="#home" role="tab" data-toggle="tab">课程概览</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" href="#profile" role="tab" data-toggle="tab">课&nbsp;时</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" href="#messages" role="tab" data-toggle="tab">评&nbsp;价</a>
							  </li>
							</ul>
							
							<!-- Tab panes -->
							<div class="tab-content">
							  <div role="tabpanel" class="tab-pane active" id="home">
							  	<label class="title">课程介绍</label>
							  	<p/><br/>
							  	EduSoho可以添加本地视频，也可以导入优酷、土豆、网易公开课的视频。
							  	<p/>
								<p/>
								本地视频支持MP4格式，如果开通EduSoho教育云视频，可以上传MP4、AVI、FLV、WMA、MOV视频，省空间省流量且四
								<br/>
								重加密技术保护视频安全：
								<p/>
								第一重加密：观看身份验证，谁买谁观看，防盗播；
								<p/>
								第二重加密：视频水印、隐形视频指纹，一秒识别翻录者；
								<p/>
								第三重加密：先进的播放地址加密，100%无法被常用工具下载；
								<p/>
								第四重加密：源文件级别加密，视频即使被非法下载也无法播放。
								<p/>
								
								<br><p/>
								<label class="title">课程目标</label>
								<p/>知晓EduSoho功能
								<p/>熟悉EduSoho后台操作
								<br><p/>
								 
								<label class="title">适合人群</label>
								<p/>使用EduSoho软件的用户
							  </div>
							  <div role="tabpanel" class="tab-pane" id="profile">课时</div>
							  <div role="tabpanel" class="tab-pane" id="messages">评价</div>
							</div>
						</div>
					</div>
				</div>
			    <div class="col-sm-3">
			     	<div class="col_card">
						<div class="card-block">
							授课教师
							<br/><p/>
							<center>
								<img class="teach_head" src="/course/resource/images/head.png">
								<br/><p/>
								周老师
							</center>
						</div>
					</div>
			    </div>
			 </div>
		</div>
	</div>
</body>
</html>