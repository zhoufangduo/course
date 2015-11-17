package com.et.course.admin.clazz;

import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.et.course.constant.CONSTANT;
import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "admin/class", viewPath = "/admin/class")
public class ClassController extends BasicController {
	
	public void index(){
		setAttr("clazzs", Clazz.me.selectList("Class.getClazzs"));
		render("index.jsp");
	}
	
	public void add(){
		Map<String, String> params = getParams();
		String id = String.valueOf(getSessionAttr(CONSTANT.USER_ID));
		params.put("creater", id);
		
		Clazz.me.insert("Class.add", params);
		redirect("/admin/class/index?clazz=true");
	}
	
	public void deleteById(){
		String id = getPara("id");
		if (StringUtils.isNotEmpty(id)) {
			Clazz.me.delete("Class.deleteById", id);
		}
		
		redirect("/admin/class/index?clazz=true");
	}
}
