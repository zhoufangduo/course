<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>易通软件-后台管理-班级管理</title>
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
	<jsp:include page="../menu.jsp"></jsp:include>
	<div class="body-container">
		<br />
		<p />
		<div class="container">
			<br />
			<table class="table table-hover">
				<thead>
					<tr>
						<th>序号</th>
						<th>班级</th>
						<th>创建时间</th>
						<th>创建者</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>1401</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>