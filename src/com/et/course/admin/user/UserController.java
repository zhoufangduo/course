package com.et.course.admin.user;

import com.jfinal.core.*;
import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;
import com.jfinal.plugin.activerecord.Config;

@Controller(controllerKey = "admin/user", viewPath = "/admin/user")
public class UserController extends BasicController {

	public void index() {
		render("list.jsp");

	}
}
