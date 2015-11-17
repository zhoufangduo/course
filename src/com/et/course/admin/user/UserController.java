package com.et.course.admin.user;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "admin/user", viewPath = "/admin/user")
public class UserController extends BasicController {

	public void index() {
		setAttr("users", User.me.selectList("User.getUsers", getParams()));
		render("list.jsp");
	}
	
	public void add(){
		User.me.insert("User.add", getParams());
		redirect("index?user=true");
	}
}
