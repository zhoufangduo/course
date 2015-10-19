package com.et.course.fore.login;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey="/login",viewPath="/login")
public class LoginController extends BasicController{
	
	public void toLogin(){
		this.render("login.jsp");
	}
	
	public void login(){
		
		
	}
}
