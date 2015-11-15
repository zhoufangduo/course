package com.et.course.admin.clazz;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "admin/class", viewPath = "/admin/class")
public class ClassController extends BasicController {
	
	public void index(){
		
		render("index.jsp");
	}
}
