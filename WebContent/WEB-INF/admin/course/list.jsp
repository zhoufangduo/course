<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>易通软件-后台管理-用户管理</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<link href="<%=basePath%>/resource/images/logo.ico" rel="shortcut icon">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/css/all.css">
	<script src="<%=basePath%>/resource/jquery/jquery.min.js"></script>
	<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
	<style type="text/css">
		.input-group .c-select{
			border-bottom-right-radius:3px;border-top-right-radius:3px;
		}
		.c-select{
			font-family: "微软雅黑";
		}
		
		.c-indicator{
			border: 1px solid #025aa5;
			font-size: 1px;
		}
		
		.state{
			font-size: 14px;
		}
		
		.table-sm td, .table-sm th {
			padding: .5rem;
		}
		
		

	</style>
</head>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
	<div class="body-container">
		<br />
		<p />
		<div class="container">
	 	 	<form action="<%=basePath%>/admin/course/list" class="form-inline">
				<input type="hidden" name="course" value="true">
				<div class="input-group">
					<span class="input-group-addon">班级</span> 
					<select class="c-select" name="classId">
						<option value="" selected>全部</option>
						<c:forEach items="${requestScope.clazzs}" var="clazz">
							<option value="${clazz.id}" 
									<c:if test="${param.classId == clazz.id}">selected="selected"</c:if>
							>${clazz.name}</option>
						</c:forEach>
					</select> 
				</div>
				&nbsp;&nbsp;
				<div class="input-group">
					<span class="input-group-addon">创建者</span> 
					<select class="c-select" name="classId">
						<option value="" selected>全部</option>
						<c:forEach items="${requestScope.clazzs}" var="clazz">
							<option value="${clazz.id}" 
									<c:if test="${param.classId == clazz.id}">selected="selected"</c:if>
							>${clazz.name}</option>
						</c:forEach>
					</select> 
				</div>
				&nbsp;&nbsp;
				<div class="input-group" style="width: 50%;">
					<span class="input-group-addon">课程</span> 
					<input type="text" class="form-control" placeholder="课程匹配" name="username" value="${param.username}"> 
					<span class="input-group-btn">
						<button type="submit" class="btn btn-secondary">搜&nbsp;索</button>
					</span>
				</div>
				<p/>
				<div class="state">
				  	<label class="c-input c-checkbox">
					  <input type="checkbox" value="true" name="remeber" id="remeber">
					  <span class="c-indicator"></span>全部
			 	 	</label>
			 	    <label class="c-input c-checkbox">
					  <input type="checkbox" value="true" name="remeber" id="remeber">
					  <span class="c-indicator"></span>已学院
			 	 	</label>
			 	 	<label class="c-input c-checkbox">
					  <input type="checkbox" value="true" name="remeber" id="remeber">
					  <span class="c-indicator"></span>学习中
			 	 	</label>
			 	 	<label class="c-input c-checkbox">
					  <input type="checkbox" value="true" name="remeber" id="remeber">
					  <span class="c-indicator"></span>推荐
			 	 	</label>
				</div>
			</form>
			<p/><br/>
			<div>
				<div class="row">
	 				<div class="col-sm-4">
						<div class="card">
						  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
						  <div class="card-block">
						    <p class="card-text">
						    	html
						    	<span style="float: right;">
						    		<span class="fa fa-users fa-lg"></span>&nbsp;15
						    	</span> 
						    </p>
						  </div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="card">
						  <img class="card-img-top" src="<%=basePath%>/resource/images/card2.jpg">
						  <div class="card-block">
						    <p class="card-text">javaScript</p>
						  </div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="card">
						  <img class="card-img-top" src="<%=basePath%>/resource/images/card3.jpg">
						  <div class="card-block">
						    <p class="card-text">java基本</p>
						  </div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<div class="card">
						  <img class="card-img-top" src="<%=basePath%>/resource/images/card.jpg">
						  <div class="card-block">
						    <p class="card-text">java基本</p>
						  </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>