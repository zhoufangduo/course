package com.et.course.fore.login;

import javax.servlet.http.Cookie;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "/login", viewPath = "/login")
public class LoginController extends BasicController {

	public void toLogin() {
		this.render("login.jsp");
	}

	public void login() {
		
		LoginUser user  = LoginUser.me.getLogin(getParams("username", "password"));
		
		if (user != null) {
			this.setSessionAttr("user", user);
		}
		
		if ("true".equals(getPara("remeber"))) {
			Cookie userCookie = new Cookie("username", getPara("username"));
			setCookie(userCookie);
			
			Cookie passCookie = new Cookie("password", getPara("password"));
			setCookie(passCookie);
		}
	}
}
