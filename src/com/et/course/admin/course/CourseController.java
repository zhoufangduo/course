package com.et.course.admin.course;

import java.util.List;

import com.et.course.fore.course.Course;
import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "admin/course", viewPath = "/admin/course")
public class CourseController extends BasicController{
	
	public void list(){
		List<Course> list = Course.me.selectList("Course.list", getParams());
		this.setAttr("list", list);
		render("list.jsp");
	}
}
