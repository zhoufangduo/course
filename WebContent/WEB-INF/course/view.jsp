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
			margin-right: 450px;
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
		</div>
	</div>
</body>
</html>