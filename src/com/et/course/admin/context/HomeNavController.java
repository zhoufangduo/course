package com.et.course.admin.context;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "context/homeNav", viewPath = "/admin/context")
public class HomeNavController extends BasicController{
	
	public void index(){
		render("navsetting.jsp");
	}
	
	
	
	
	
}
