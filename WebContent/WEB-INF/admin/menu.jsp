<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath(); %>
<nav class="navbar navbar-fixed-top navbar-dark bg-inverse">
	<a class="navbar-brand" href="#">易通软件教育后台管理</a>
	<ul class="nav navbar-nav">
		<li class="nav-item"><a class="nav-link" href="#">课程管理</a></li>
		<li class="nav-item"><a class="nav-link" href="<%=basePath%>/admin/user/index">用户管理</a></li>
		<li class="nav-item"><a class="nav-link" href="<%=basePath%>/admin/class/index">班级管理</a></li>
	</ul>
	<form class="form-inline navbar-form pull-right">
		<a class="btn btn-info-outline" href="<%=basePath%>">首页</a>
	</form>
</nav>