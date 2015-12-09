<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-fixed-top navbar-dark bg-inverse">
	<a class="navbar-brand" href="#">易通软件教育后台管理</a>
	<ul class="nav navbar-nav">
		<li class="nav-item dropdown">
			<c:choose>
				<c:when test="${param.course == 'true' || param.type==true}">
					<a class="nav-link active dropdown-toggle" data-toggle="dropdown">课程管理</a>
				</c:when>
				<c:otherwise>
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" >课程管理</a>
				</c:otherwise>
			</c:choose>
		    <div class="dropdown-menu">
		      <a class="dropdown-item" href="<%=basePath%>/admin/course/list?course=true">课程列表</a>
		      <a class="dropdown-item" href="<%=basePath%>/admin/type/list?type=true">课程分类</a>
		    </div>
	  	</li>
		
		<li class="nav-item">
			<c:choose>
				<c:when test="${param.user == 'true'}">
					<a class="nav-link active" href="<%=basePath%>/admin/user/index?user=true">用户管理</a>
				</c:when>
				<c:otherwise>
					<a class="nav-link" href="<%=basePath%>/admin/user/index?user=true">用户管理</a>
				</c:otherwise>
			</c:choose>
		</li>
		<li class="nav-item">
			<c:choose>
				<c:when test="${param.clazz == 'true'}">
					<a class="nav-link active" href="<%=basePath%>/admin/class/index?clazz=true">班级管理</a>
				</c:when>
				<c:otherwise>
					<a class="nav-link" href="<%=basePath%>/admin/class/index?clazz=true">班级管理</a>
				</c:otherwise>
			</c:choose>
		</li>
	</ul>
	<form class="form-inline navbar-form pull-right">
		<a class="btn btn-info-outline" href="<%=basePath%>">首页</a>
	</form>
</nav>
<style>
	.dropdown{
		cursor: pointer;
	}
</style>