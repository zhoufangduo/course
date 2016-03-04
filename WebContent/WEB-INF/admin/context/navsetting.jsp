<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>易通软件-后台管理-首页导航栏设置</title>
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
		<div class="container">
			<ol class="breadcrumb" style="margin-bottom: 5px;">
			  <li>内容管理</li>
			  <li class="active">导航栏菜单</li>
			</ol>
			<div style="float: right;">
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">创&nbsp;建</button>
				<br/><p/>
			</div>
		
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th width="10%">序列</th>
			      <th width="20%">名字</th>
			      <th>URL</th>
			      <th width="20%">操作</th>
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
			      <td colspan="2">Larry the Bird</td>
			      <td>@twitter</td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</div>
	
	<form action="<%=basePath%>/admin/type/add?type=true" method="post">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		          <span class="sr-only">Close</span>
		        </button>
		        <h5 class="modal-title" id="myModalLabel">新建导航栏菜单</h5>
		      </div>
		      <div class="modal-body" style="padding: 30px;">
	       		 <div class="form-group row">
				    <label for="name" class="col-sm-2 form-control-label">名称</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="name" name="name" placeholder="名称 ">
				    </div>
				 </div>
				 <div class="form-group row">
				    <label for="description" class="col-sm-2 form-control-label">父菜单</label>
				    <div class="col-sm-10">
				      	<select class="c-select" style="width: 100%">
						  <option selected></option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>
				    </div>
				 </div>
				<div class="form-group row">
				    <label for="name" class="col-sm-2 form-control-label">RUL</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="name" name="name" placeholder="URL地址,例如:http://www.xxx.com ">
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