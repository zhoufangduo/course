<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "http://www.w3.org/TR/html4/loose.dtd">
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
		
		.form-group .c-select{
			border-radius:.25rem;
			
		}
		
		.table-sm td, .table-sm th {
			padding: .5rem;
		}
		
		.btn-group .dropdown-item{
			font-size: 13px;
		}
	</style>
</head>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
	<div class="body-container">
		<br />
		<div class="container">
			<ol class="breadcrumb" style="margin-bottom: 5px;">
			  <li>用户管理</li>
			  <li class="active">用户列表</li>
			</ol>
			<p />
			<form action="<%=basePath%>/admin/user/index" class="form-inline">
				<input type="hidden" name="user" value="true">
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
				&nbsp;
				<div class="input-group" style="width: 54%;">
					<span class="input-group-addon">用户名</span> 
					<input type="text" class="form-control" placeholder="用户名匹配" name="username" value="${param.username}"> 
					<span class="input-group-btn">
						<button type="submit" class="btn btn-secondary">搜&nbsp;索</button>
					</span>
				</div>
				
				&nbsp;
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">创&nbsp;建</button>
				<button type="button" class="btn btn-info">导&nbsp;入</button>
				<button type="button" class="btn btn-info">导&nbsp;出</button>
			</form>

			<br />
			<table class="table table-hover table-sm">
				<thead>
					<tr>
						<th>序号</th>
						<th>姓名</th>
						<th>用户名</th>
						<th>班级</th>
						<th>EMAIL</th>
						<th>创建时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.users}" var="user" varStatus="st">
						<tr>
							<th scope="row">${st.index+1}</th>
							<td>${user.name}</td>
							<td>${user.username}</td>
							<td>${user.className}</td>
							<td>${user.email}</td>
							<td>${user.createTime}</td>
							<td width="10%">
								<c:choose>
									<c:when test="${user.role != 'ADMIN'}">
										<div class="btn-group">
										  <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" 
										  		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										    	编辑
										  </button>
										  <div class="dropdown-menu">
										    <a class="dropdown-item" href="<%=basePath%>/admin/user/deleteById?id=${user.id}">删除</a>
										    <a class="dropdown-item" href="#">修改</a>
										  </div>
										</div>
									</c:when>
									<c:otherwise>
										<a class="btn btn-secondary btn-sm">详情</a>
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
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
		</div>
	</div>
	
	<jsp:include page="add.jsp"/>
	
	<jsp:include page="update.jsp"/>
	
</body>
</html>