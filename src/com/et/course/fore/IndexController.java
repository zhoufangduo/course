package com.et.course.fore;

import com.et.course.constant.CONSTANT;
import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "/", viewPath = "/", hasRoot = false)
public class IndexController extends BasicController {

	public IndexController() {
		init();
	}

	private void init() {

	}

	public void index() {
		render("index.jsp");
	}

	public void admin() {

		Boolean isPass = getSessionAttr(CONSTANT.ADMIN_USER);

		if (isPass != null && isPass) {
			redirect("/admin/toPass");
		} else {
			render("WEB-INF/admin/unlock.jsp");
		}

	}

}
