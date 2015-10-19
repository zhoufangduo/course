package com.et.course.plugin.support;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import com.jfinal.core.Controller;

public class BasicController extends Controller {
	
	protected Map<String, String> getParam(){
		Map<String, String> param = new HashMap<String, String>();
		Enumeration<String> names = getParaNames();
		while (names.hasMoreElements()) {
			String name = (String) names.nextElement();
			String value = getPara(name);
			param.put(name, value);
		}
		
		return param;
	}
}
