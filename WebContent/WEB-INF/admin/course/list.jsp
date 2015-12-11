<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>易通软件-后台管理-课程管理</title>
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
			border-bottom-right-radius:4px;border-top-right-radius:4px;
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
		
		.course_name{
			font-weight: bold;
			text-align: center;
			font-size: 14px;
		}
		
		
		.bar{
			font-size: 12px;
		}
		
		.mark{
			color: red;
			float: right;
		}
		
	</style>
	<script type="text/javascript">
		
		function toView (id){
			window.location = "";
		}
	
	</script>
</head>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
	<div class="body-container">
		<br />
		<div class="container">
			<ol class="breadcrumb" style="margin-bottom: 5px;">
			  <li>课程管理</li>
			  <li class="active">课程列表</li>
			</ol>
			<p />
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
				<div class="input-group">
					<span class="input-group-addon">分类</span> 
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
					<label class="c-input c-radio">
					  <input id="radio1" name="radio" type="radio">
					  <span class="c-indicator"></span>
					 	 全部
					</label>
					&nbsp;
					<label class="c-input c-radio">
					  <input id="radio1" name="radio" type="radio">
					  <span class="c-indicator"></span>
					 	 学习中
					</label>
					&nbsp;
					<label class="c-input c-radio">
					  <input id="radio2" name="radio" type="radio">
					  <span class="c-indicator"></span>
					  	已学完
					</label>
					&nbsp;
					<label class="c-input c-radio">
					  <input id="radio2" name="radio" type="radio">
					  <span class="c-indicator"></span>
					  	推荐
					</label>
				</div>
			</form>
			<p/><br/>
			<div class="row">
				<c:forEach items="${requestScope.list}" var="course" varStatus="st">
					<c:if test="${st.count % 5 == 0}">
						<p class="row" />
					</c:if>
	 				<div class="col-sm-3" onclick="toView('${course.id}')" style="cursor: pointer;">
						<div class="card">
						  <c:if test="${course.logo == null}">
							  <img class="card-img-top" src="<%=basePath%>/resource/images/course.png">
						  </c:if>
						  <div class="card-block">
						  	<div class="course_name" style="margin-top: -6px;">
							    ${course.name}
						    </div>
					    	<div class="bar">
					    		<span class="label label-danger">
							    	<i class="fa fa-star fa-lg"></i>推荐
								</span>
						    	<span style="float: right;">
						    		<span class="fa fa-users fa-lg"></span>&nbsp;无成员
						    	</span> 
					    	</div>
						  </div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>