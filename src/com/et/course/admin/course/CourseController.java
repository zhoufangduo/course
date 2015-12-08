package com.et.course.admin.course;

import com.et.course.fore.course.Course;
import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "admin/course", viewPath = "/admin/course")
public class CourseController extends BasicController{
	
	public void list(){
		Course.me.selectList("", getParams());
		render("list.jsp");
	}
}
