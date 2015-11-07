<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String basePath = request.getContextPath();%>
<%@ taglib prefix="course" uri="/WEB-INF/menu.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>易通软件-后台密码登录</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<link href="<%=basePath%>/resource/images/logo.ico" rel="shortcut icon">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/css/all.css">
	<script src="<%=basePath%>/resource/jquery/jquery.min.js"></script>
	<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
	<style type="text/css">
		.login_card{
			margin:200px 50px;
			width: 550px;
		}
		.card-header{
			font-weight: bold;
		}
		.pwdTip{
			font-size: 14px;
		}
	</style>
</head>
<body>
	<div>
		<course:menu />
	</div>
	<div class="body-container">
		<center>
			<div class="login_card">
				<div class="card">
					<div class="card-header">密保验证</div>
					<div class="card-block">
						<br />
						<form action="<%=basePath%>/admin/manager" method="post">
							<c:if test="${param.error == true}">
								<div class="alert alert-danger" role="alert">
									<i class="fa fa-warning"></i>&nbsp;账号或者密码错误!
								</div>
								<br/>
							</c:if>
							<div class="form-group row">
								<label for="password" class="col-sm-2 form-control-label">后台密码</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="password"
										name="password" placeholder="后台密保" style="width: 75%;float: left;">
										&nbsp;
									<input type="submit" value="进&nbsp;入" class="btn btn-primary">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-12">
									<label class="pwdTip">
										进入后台管理，请先输入密保，只有通过密保验证成功之后，才能进入后台管理
									</label>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</center>
	</div>
	<jsp:include page="/foot.jsp"></jsp:include>
</body>
</html>