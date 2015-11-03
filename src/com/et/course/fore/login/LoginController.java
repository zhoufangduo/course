package com.et.course.fore.login;

import javax.servlet.http.Cookie;

import com.et.course.constant.CONSTANT;
import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "/login", viewPath = "/login")
public class LoginController extends BasicController {

	public void toLogin() {
		this.render("login.jsp");
	}

	public void login() {
		
		LoginUser user  = LoginUser.me.getLogin(getParams("username", "password"));
		
		setCookie();
		
		if (user != null) {
			this.setSessionAttr(CONSTANT.USER, user);
			render("../index.jsp");
		}else{
			redirect("/login/toLogin?error=true");
		}
	}

	private void setCookie() {
		if ("true".equals(getPara("remeber"))) {
			Cookie userCookie = new Cookie("username", getPara("username"));
			setCookie(userCookie);
			
			Cookie passCookie = new Cookie("password", getPara("password"));
			setCookie(passCookie);
			
			Cookie remeberCookie = new Cookie("remeber","true");
			setCookie(remeberCookie);
		}else{
			removeCookie("username");
			removeCookie("password");
			removeCookie("remeber");
		}
	}
	
	public void logout(){
		this.removeSessionAttr(CONSTANT.USER);
		redirect("/");
	}
}
