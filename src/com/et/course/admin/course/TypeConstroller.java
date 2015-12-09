package com.et.course.admin.course;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.et.course.plugin.annotation.Controller;
import com.et.course.plugin.support.BasicController;

@Controller(controllerKey = "admin/type", viewPath = "/admin/course/type")
public class TypeConstroller extends BasicController {
	
	public void list(){
		List<Type> types = Type.me.selectList("Type.list");
		setAttr("types", types);
		render("list.jsp");
	}
	
	public void add(){
		Map<String, String> params = getParams();
		if (params.size() > 0) {
			params.put("creator", getUserId());
			Type.me.insert("Type.add", params);
		}
		
		redirect("/admin/type/list?type=true");
	}
	
	public void deleteById(){
		String id = getPara("id");
		if (StringUtils.isNotEmpty(id)) {
			Type.me.delete("Type.deleteById", id);
		}
		redirect("/admin/type/list?type=true");
	}
}
