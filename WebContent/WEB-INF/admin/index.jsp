<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String basePath = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>易通软件-后台管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<link href="<%=basePath%>/resource/images/logo.ico" rel="shortcut icon">
<link rel="stylesheet"
	href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=basePath%>/resource/bootstrap/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>/resource/css/all.css">
<script src="<%=basePath%>/resource/jquery/jquery.min.js"></script>
<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="body-container">
		<br />
		<div class="container">
			<div class="row">
				<div class="col-sm-5">
					<div class="card">
						<div class="card-header">班级总人数</div>
						<div class="card-block">
							<table class="table">
								<thead>
									<tr>
										<th>序号</th>
										<th>班级</th>
										<th>总人数</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>1402</td>
										<td>26</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>1403</td>
										<td>13</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>1405</td>
										<td>14</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="card">
						<div class="card-header">班级课程总数</div>
						<div class="card-block">
							<table class="table">
								<thead>
									<tr>
										<th>序号</th>
										<th>班级</th>
										<th>全部</th>
										<th>学习中</th>
										<th>已学完</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>1402</td>
										<td>19</td>
										<td>1</td>
										<td>10</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>1403</td>
										<td>19</td>
										<td>1</td>
										<td>10</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>1405</td>
										<td>19</td>
										<td>1</td>
										<td>10</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<br/>
			<div class="card">
				<div class="card-header">班级课程总数</div>
				<div class="card-block">
					<table class="table">
						<thead>
							<tr>
								<th>序号</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Username</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Larry</td>
								<td>the Bird</td>
								<td>@twitter</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>