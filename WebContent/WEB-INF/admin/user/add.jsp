<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"  src="<%=basePath%>/resource/validate/validate_error.js"></script>
<script type="text/javascript"  src="<%=basePath%>/resource/validate/jquery.validate.min.js"></script>
<script type="text/javascript"  src="<%=basePath%>/resource/validate/additional-methods.min.js"></script>
<script type="text/javascript"  src="<%=basePath%>/resource/validate/messages_zh.min.js"></script>
<form action="<%=basePath%>/admin/user/add" method="post" id="addForm">
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
			      <input type="text" class="form-control" id="username" name="username" placeholder="登录用户名" value="">
			    </div>
			 </div>
			 <div class="form-group row">
			    <label for="name" class="col-sm-2 form-control-label">姓&nbsp;名</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="name" name="name" placeholder="姓名" value="">
			    </div>
			 </div>
			 <div class="form-group row">
			    <label for="password" class="col-sm-2 form-control-label">密&nbsp;码</label>
			    <div class="col-sm-10">
			      <input type="password" class="form-control" id="password" name="password" placeholder="登录的密码" value="123456">
			    </div>
			 </div>
			 <div class="form-group row">
			    <label for="classId" class="col-sm-2 form-control-label">班&nbsp;级</label>
			    <div class="col-sm-10">
			     	<select class="c-select" id="classId" name="classId" style="width: 100%">
						<c:forEach items="${requestScope.clazzs}" var="clazz">
							<option value="${clazz.id}">${clazz.name}</option>
						</c:forEach>
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
			    <label for="email" class="col-sm-2 form-control-label">Email</label>
			    <div class="col-sm-10">
			    	 <input type="text" class="form-control" name="email" id="email"  placeholder="邮件" value="">
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
<script type="text/javascript">
	$(function(){
		$.validator.addMethod("secret", function(value, element) {
			var chrnum = /^[a-zA-Z0-9]{3,}[._]?[a-zA-Z0-9._]{1,}$/;
			
			return (chrnum.test(value));
		}, "只能输入数字和字母,而且必须以字母和数字开头!");
		
		$("#addForm").validate({
			success:success,
			ignore: "",
			errorPlacement: showErrorPlacement,
			rules: {
				  username:"secret",
				  password:{
					  required:true,
					  minlength:6
				  },
				  email:{
					  required:false,
					  email:true
				  }
			}, 
			messages:{
				password:{required:"密码是必填项",minlength:"长度至少为6个字符"}
			},
			submitHandler:function(form){
	            form.submit();
	        }    
		}); 
	});
</script>