<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-fixed-top navbar-dark bg-inverse">
	<a class="navbar-brand" href="#">易通软件教育后台管理</a>
	<ul class="nav navbar-nav">
		<li class="nav-item"><a class="nav-link" href="#">课程管理</a></li>
		<li class="nav-item"><c:choose>
				<c:when test="${param.user == 'true'}">
					<a class="nav-link active" href="<%=basePath%>/admin/user/index?user=true">用户管理</a>
				</c:when>
				<c:otherwise>
					<a class="nav-link" href="<%=basePath%>/admin/user/index?user=true">用户管理</a>
				</c:otherwise>
			</c:choose></li>
		<li class="nav-item"><c:choose>
				<c:when test="${param.clazz == 'true'}">
					<a class="nav-link active" href="<%=basePath%>/admin/class/index?clazz=true">班级管理</a>
				</c:when>
				<c:otherwise>
					<a class="nav-link" href="<%=basePath%>/admin/class/index?clazz=true">班级管理</a>
				</c:otherwise>
			</c:choose></li>
	</ul>
	<form class="form-inline navbar-form pull-right">
		<a class="btn btn-info-outline" href="<%=basePath%>">首页</a>
	</form>
</nav>