<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<% String basePath = request.getContextPath();%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<form action="<%=basePath%>/admin/user/update" method="post">
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
			      <input type="text" class="form-control" id="username" name="username" placeholder="登录用户名" readonly="readonly">
			    </div>
			 </div>
			 <div class="form-group row">
			    <label for="name" class="col-sm-2 form-control-label">姓&nbsp;名</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="name" name="name" placeholder="姓名">
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
			    	 <input type="text" class="form-control" name="email" id="email"  placeholder="邮件">
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
	
function toUpdate(id){
	
}

</script>