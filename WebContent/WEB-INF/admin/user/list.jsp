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
		
		.form-group .c-select{
			border-radius:.25rem;
		}
		
		.table-sm td, .table-sm th {
			padding: .5rem;
		}
		
		.dropdown-item{
			font-size: 13px;
		}
	</style>
</head>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
	<div class="body-container">
		<br />
		<p />
		<div class="container">
			<form action="<%=basePath%>/admin/user/index?user=true" class="form-inline">
				<div class="input-group">
					<span class="input-group-addon">班级</span> 
					<select class="c-select" name="classId">
						<option value="" selected>全部</option>
						<option value="0">1402</option>
						<option value="1">1403</option>
						<option value="2">1501</option>
						<option value="3">1502</option>
						<option value="3">1503</option>
					</select> 
				</div>
				&nbsp;
				<div class="input-group" style="width: 58%;">
					<span class="input-group-addon">用户名</span> 
					<input type="text" class="form-control" placeholder="用户名匹配" name="username"> 
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
							<th scope="row" width="5%">${st.index+1}</th>
							<td width="12%">${user.name}</td>
							<td width="10%">${user.username}</td>
							<td>${user.className}</td>
							<td>${user.email}</td>
							<td>${user.createTime}</td>
							<td>
								<div class="btn-group">
								  <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" 
								  		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    	编辑
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">删除</a>
								    <a class="dropdown-item" href="#">修改</a>
								  </div>
								</div>
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
	 
	<form action="" method="post">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		          <span class="sr-only">Close</span>
		        </button>
		        <h5 class="modal-title" id="myModalLabel">创建新用户</h5>
		      </div>
		      <div class="modal-body" style="padding: 30px;">
	       		 <div class="form-group row">
				    <label for="username" class="col-sm-2 form-control-label">用户名</label>
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="username" name="username" placeholder="登录用户名">
				    </div>
				 </div>
				 <div class="form-group row">
				    <label for="name" class="col-sm-2 form-control-label">姓&nbsp;名</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="name" name="name" placeholder="姓名">
				    </div>
				 </div>
				 <div class="form-group row">
				    <label for="password" class="col-sm-2 form-control-label">密&nbsp;码</label>
				    <div class="col-sm-10">
				      <input type="password" class="form-control" id="password" name="password" placeholder="登录的密码">
				    </div>
				 </div>
				 <div class="form-group row">
				    <label for="classId" class="col-sm-2 form-control-label">班&nbsp;级</label>
				    <div class="col-sm-10">
				     	<select class="c-select" id="classId" name="classId" style="width: 100%">
				     		<option value="" selected>全部</option>
							<option value="0">1402</option>
							<option value="1">1403</option>
							<option value="2">1501</option>
							<option value="3">1502</option>
							<option value="3">1503</option>
				     	</select>
				    </div>
				 </div>
				 <div class="form-group row">
				    <label for="sex" class="col-sm-2 form-control-label">性&nbsp;别</label>
				    <div class="col-sm-10">
				     	<select class="c-select" name="sex" id="sex" style="width: 100%">
				     		<option value="MALE" selected>男</option>
							<option value="FEMALE">女</option>
				     	</select>
				    </div>
				 </div>
				 
				 <div class="form-group row">
				    <label for="role" class="col-sm-2 form-control-label">角&nbsp;色</label>
				    <div class="col-sm-10">
				     	<select class="c-select" name="role" id="role" style="width: 100%">
				     		<option value="ADMIN">管理员</option>
							<option value="TEACHER">老师</option>
							<option value="STUDENT" selected>学生</option>
				     	</select>
				    </div>
				 </div>
				 
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">取&nbsp;消</button>
		        <button type="submit" class="btn btn-primary">保&nbsp;存</button>
		      </div>
		    </div>
		  </div>
		</div>
	</form>
</body>
</html>