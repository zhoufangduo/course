package com.et.course.config.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;

public class SqlSessionInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {

		doBefore();

		inv.invoke();

		doAfter();
	}

	private void doAfter() {

	}

	private void doBefore() {

	}
}
