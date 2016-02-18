package com.et.course.admin.context;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "admin/context", viewPath = "/admin/context")
public class ContextController extends BasicController {
	
	public void index(){
		redirect("/context/homeNav/index?context=true");
	}

}
