package com.et.course.admin.context;

import java.util.List;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "context/homeNav", viewPath = "/admin/context")
public class HomeNavController extends BasicController{
	
	public void index(){
		List<HomeNav> list = HomeNav.me.selectList("Homenav.select");
		this.setAttr("list", list);
		render("navsetting.jsp");
	}
	
	
	
	
	
}
