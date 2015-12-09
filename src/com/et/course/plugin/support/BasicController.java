package com.et.course.plugin.support;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import com.et.course.admin.user.User;
import com.et.course.constant.CONSTANT;
import com.jfinal.core.Controller;

public class BasicController extends Controller {
	
	private static Logger logger = Logger.getLogger(BasicController.class);
	
	protected Map<String, String> getParams(){
		Map<String, String> param = new HashMap<String, String>();
		Enumeration<String> names = getParaNames();
		while (names.hasMoreElements()) {
			String name = (String) names.nextElement();
			String value = getPara(name);
			param.put(name, value);
		}
		
		return param;
	}
	
	protected Object[] getParams(String ... param){
		
		Object[]params = new Object[param.length];
		
		StringBuffer buffer = new StringBuffer("Parameters={");
		
		for(int i = 0 ; i < param.length ; i ++){
			params[i] = getPara(param[i]);
			buffer.append(param[i]).append(":").append(params[i]);
			if (i < param.length-1) {
				buffer.append(",");
			}
		}
		
		logger.info(buffer.append("}").toString());
		
		return params;
	}
	
	protected String getUserId(){
		return String.valueOf((Integer)getSessionAttr(CONSTANT.USER_ID));
	}
	
	protected String getUserName(){
		User user = getSessionAttr(CONSTANT.USER);
		if (user != null) {
			return user.getUsername();
		}
		
		return "";
	}
}
