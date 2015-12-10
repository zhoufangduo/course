<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>易通软件-后台管理-课程分类管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<link href="<%=basePath%>/resource/images/logo.ico" rel="shortcut icon">
		<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=basePath%>/resource/css/all.css">
		<script src="<%=basePath%>/resource/jquery/jquery.min.js"></script>
		<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function deleteById(id,name){
				if(window.confirm("你确定要删除该分类:" + name+"?")){
					window.location = "<%=basePath%>/admin/type/deleteById?id=" + id;
				}
			}
		</script>
		<style type="text/css">
		
			table{  
			   
			    table-layout:fixed;
			}
			  
			td{  
			    word-break:keep-all;
			    white-space:nowrap;
			    overflow:hidden; 
			    text-overflow:ellipsis; 
			}  
		</style>
	</head>
	<body>
		<jsp:include page="../../menu.jsp"></jsp:include>
		<div class="body-container">
			<br/>
			<div class="container">
				<ol class="breadcrumb" style="margin-bottom: 5px;">
				  <li>课程管理</li>
				  <li class="active">课程分类</li>
				</ol>
				<p />
				<div style="float: right;">
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">创&nbsp;建</button>
					<br/><p/>
				</div>
				<table class="table table-hover table-sm">
					<thead>
						<tr>
							<th>序号</th>
							<th>分类</th>
							<th>创建者</th>
							<th>创建时间</th>
							<th>描述</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${requestScope.types}" var="type" varStatus="st">
							<tr>
								<th scope="row" width="5%">${st.index+1}</th>
								<td width="10%" title="${type.name}">
									${type.name}
								</td>
								<td width="12%" title="${type.creater}">
									${type.creater}
								</td>
								<td width="28%"  title="${type.createTime}">
									${type.createTime}
								</td>
								<td title="${type.description}">
									${type.description}
								</td>
								<td width="10%">
									<a class="btn btn-secondary btn-sm" href="javascript:deleteById(${type.id},'${type.name}')">删除</a>
								</td>
							</tr>
						</c:forEach>
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
			        <h5 class="modal-title" id="myModalLabel">新建课程分类</h5>
			      </div>
			      <div class="modal-body" style="padding: 30px;">
		       		 <div class="form-group row">
					    <label for="name" class="col-sm-2 form-control-label">名称</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="name" name="name" placeholder="课程分类名称 ">
					    </div>
					 </div>
					 <div class="form-group row">
					    <label for="description" class="col-sm-2 form-control-label">描&nbsp;述</label>
					    <div class="col-sm-10">
					      	<textarea class="form-control" id="description" name="description" rows="5"></textarea>
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