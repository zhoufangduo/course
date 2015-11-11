<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@ taglib prefix="course" uri="/WEB-INF/menu.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>易通软件-用户登录</title>
	<link href="<%=basePath%>/resource/images/logo.ico" rel="shortcut icon">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/bootstrap/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath%>/resource/css/all.css">
	<script src="<%=basePath%>/resource/jquery/jquery.min.js"></script>
	<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
	<style type="text/css">
		.login_card{
			margin:107px 0px 50px;
			width: 500px;
		}
		.link{
			font-size: 15px;
		}
		a:hover {
			text-decoration: none;
		}
		.c-indicator{
			border: 1px solid #025aa5;
		}
		.card-header{
			font-weight: bold;
		}
	</style>
	<script type="text/javascript">
	
		$(function(){
			
			var allcookies = document.cookie;    
			  
			function getCookie(cookie_name){  
				var allcookies = document.cookie;  
				var cookie_pos = allcookies.indexOf(cookie_name);
				if (cookie_pos != -1){  
					cookie_pos += cookie_name.length + 1;
					var cookie_end = allcookies.indexOf(";", cookie_pos);  
					if (cookie_end == -1){  
						cookie_end = allcookies.length;  
					}  
					var value = unescape(allcookies.substring(cookie_pos, cookie_end));
				}  
				return value;  
			}  
			
			$("#username").val(getCookie('username'));
			$("#password").val(getCookie('password'));
			$("#remeber").attr("checked",getCookie('remeber'));
			$("#username").focus();
			
		});
		
	</script>
</head>
<body>
	<div>
	    <course:menu/>
	</div>
	
	<div class="body-container">
		<center>
			<div class="login_card">
				<div class="card">
					 <div class="card-header">
					   	 用户登录
					  </div>
					  <div class="card-block">
					  	 <br/>
					   	 <form action="<%=basePath%>/login/login" method="post">
					   	 	<c:if test="${param.error == true}">
						   	 	<div class="alert alert-danger" role="alert">
								  	<i class="fa fa-warning"></i>&nbsp;账号或者密码错误!
								</div>
								<br/>
							</c:if>
					   	 	<div class="form-group row">
							    <label for="username" class="col-sm-2 form-control-label">账号</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" id="username" 
							      		name="username" placeholder="账号">
							    </div>
							</div>
							<br/>
							<div class="form-group row">
							    <label for="password" class="col-sm-2 form-control-label">密码</label>
							    <div class="col-sm-10">
							      <input type="password" class="form-control" id="password" 
							      		name="password" placeholder="密码">
							    </div>
							</div>
							<div class="form-group row">
							    <div class="col-sm-offset-2">
							     	<div class="col-xs-3" style="margin-top: 6px;">
			    					  <label class="c-input c-checkbox">
										  <input type="checkbox" value="true" name="remeber" id="remeber">
										  <span class="c-indicator"></span>
										     记住密码
								 	 </label>
			  						</div>
								    <div class="col-xs-9" style="text-align: right;">
								  		<button type="submit" class="btn btn-primary" style="width: 120px;">登&nbsp;&nbsp;录</button>
								    </div>
							    </div>
							</div>
							<br/>
							<div class="form-group row">
								<span class="link">
									<a href="">找回密码</a> 
									| 还没有注册帐号? <a href="">立即注册</a>
								</span>
							</div>
							<br/>
							<div class="form-group row">
								<a href="" class="link"><span class="social-icon social-icon-qq"></span>&nbsp;QQ帐号</a>&nbsp;&nbsp;
								<a href="" class="link"><span class="social-icon social-icon-renren"></span>&nbsp;人人帐号</a>&nbsp;&nbsp;
								<a href="" class="link"><span class="social-icon social-icon-weixin"></span>&nbsp;微信登录</a>
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