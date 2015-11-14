package com.et.course.config.interceptor;

import com.et.course.plugin.support.BasicController;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;

public class ActionInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		Controller controller = inv.getController();
		if (controller instanceof BasicController) {
			
		}
	}

}
