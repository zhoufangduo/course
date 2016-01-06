<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@ taglib prefix="course" uri="/WEB-INF/menu.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>易通软件-创建课程</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<link href="<%=basePath%>/resource/images/logo.ico" rel="shortcut icon">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/css/all.css">
	<script src="<%=basePath%>/resource/jquery/jquery.min.js"></script>
	<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
	<style type="text/css">
		
		body{
			background: #eee;
		}
		
	</style>
</head>
<body>
	<div>
	    <course:menu/>
	</div>
	<div class="body-container">
		<center>
			<div class="panel" style="width: 600px;height: 290px;">
			  <h3 style="margin: 10px;">课程名称</h3>
			  <br/><p/>
			  <form style="width: 80%;">
				  <div class="form-group row">
				    <label class="col-sm-2 form-control-label">名称</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" placeholder="课程名称">
				    </div>
				  </div>
				  <br/>
				  <div class="form-group row">
				    <div class="col-sm-offset-2 col-sm-10" >
				      <button type="submit" style="float: right;" class="btn btn-primary btn-lg">&nbsp;创&nbsp;建&nbsp;</button>
				    </div>
				  </div>
			   </form>
			</div>
		</center>
	</div>
</body>
</html>