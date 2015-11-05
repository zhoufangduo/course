package com.et.course.fore;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey="/",viewPath="/",hasRoot=false)
public class IndexController extends BasicController {
	
	
	public IndexController(){
		init();
	}
	
	private void init() {
		
		
	}

	public void index() {
		render("index.jsp");
	}
}
