package com.et.course.fore.login;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "/login", viewPath = "/login")
public class LoginController extends BasicController {

	private LoginUser user = new LoginUser();

	public void toLogin() {
		this.render("login.jsp");
	}

	public void login() {
		LoginUser loginUser  = user.findFirst("SELECT * FROM USER WHERE USERNAME=? AND PASSWORD=MD5(?)",
				getParams("username", "password"));
		
	}
}
