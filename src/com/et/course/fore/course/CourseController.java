package com.et.course.fore.course;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey="/mycourse",viewPath="/course",hasRoot=true)
public class CourseController extends BasicController{
	public void index(){
		render("index.jsp");
	}
}
