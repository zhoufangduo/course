package com.et.course.admin;

import com.et.course.constant.CONSTANT;
import com.et.course.fore.login.LoginUser;
import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "admin", viewPath = "/admin")
public class AdminController extends BasicController {

	public void manager() {
		
		LoginUser user = this.getSessionAttr(CONSTANT.USER);
		
		if (Admin.me.validate(user.getStr("USERNAME"), getPara("password"))) {
			
			setSessionAttr(CONSTANT.ADMIN_USER, true);
			
			render("index.jsp");
		}else{
			redirect("/admin?error=true");
		}
	}
	
	public void toPass(){
		render("index.jsp");
	}
}
