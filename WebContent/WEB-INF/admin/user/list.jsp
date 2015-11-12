<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
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
	</style>
</head>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
	<div class="body-container">
		<br />
		<p />
		<div class="container">
			<form action="" class="form-inline">
				<div class="input-group">
					<span class="input-group-addon">班级</span> 
					<select class="c-select">
						<option selected>1402</option>
						<option value="1">1403</option>
						<option value="2">1501</option>
						<option value="3">1502</option>
						<option value="3">1503</option>
					</select> 
				</div>
				&nbsp;
				<div class="input-group" style="width: 58%;">
					<span class="input-group-addon">用户名</span> 
					<input type="text" class="form-control" placeholder="用户名匹配"> 
					<span class="input-group-btn">
						<button type="button" class="btn btn-secondary">搜&nbsp;索</button>
					</span>
				</div>
				
				&nbsp;
				<button type="button" class="btn btn-primary">创&nbsp;建</button>
				<button type="button" class="btn btn-info">导&nbsp;入</button>
				<button type="button" class="btn btn-info">导&nbsp;出</button>
			</form>

			<br />
			<table class="table table-hover">
				<thead>
					<tr>
						<th>序号</th>
						<th>姓名</th>
						<th>用户名</th>
						<th>班级</th>
						<th>EMAIL</th>
						<th>联系电话</th>
						<th>创建时间</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>1401</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>@mdo</td>
					</tr>
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
</body>
</html>