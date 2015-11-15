package com.et.course.admin;

import java.util.Map;

import com.et.course.admin.user.User;
import com.et.course.constant.CONSTANT;
import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "admin", viewPath = "/admin")
public class AdminController extends BasicController {

	public void manager() {

		User user = this.getSessionAttr(CONSTANT.USER);

		Map<String, String> params = getParams();
		params.put("username", user.getUsername());

		if (Admin.me.selectOne("Login.getAdmin", params) != null) {

			setSessionAttr(CONSTANT.ADMIN_USER, true);

			render("index.jsp");
		} else {
			redirect("/admin?error=true");
		}
	}

	public void toPass() {
		render("index.jsp");
	}
}
