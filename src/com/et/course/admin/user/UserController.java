package com.et.course.admin.user;

import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.et.course.admin.clazz.Clazz;
import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "admin/user", viewPath = "/admin/user")
public class UserController extends BasicController {

	public void index() {
		setAttr("users", User.me.selectList("User.getUsers", getParams()));
		setAttr("clazzs", Clazz.me.selectList("Class.getClazzs"));
		render("list.jsp");
	}

	public void add() {
		Map<String, String> params = getParams();
		params.put("creater",String.valueOf(getUserId()));

		User.me.insert("User.add", params);
		redirect("/admin/user/index?user=true");
	}
	
	public void deleteById(){
		String id = getPara("id");
		if (StringUtils.isNotEmpty(id)) {
			User.me.delete("User.deleteById", id);
		}
		
		redirect("/admin/user/index?user=true");
	}
}
