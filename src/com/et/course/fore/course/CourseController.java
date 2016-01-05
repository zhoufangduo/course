package com.et.course.fore.course;

import org.apache.commons.lang3.StringUtils;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey="/mycourse",viewPath="/course",hasRoot=true)
public class CourseController extends BasicController{
	
	public void index(){
		render("index.jsp");
	}
	
	public void toAdd(){
		render("add.jsp");
	}
	
	public void view(){
		String id = getPara("id");
		if (StringUtils.isNotEmpty(id)) {
			Course.me.selectOne("Course.view", id);
		}
	}
}
