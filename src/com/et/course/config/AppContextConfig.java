package com.et.course.config;

import com.et.course.config.interceptor.ActionInterceptor;
import com.et.course.plugin.ConfigRoutePlugin;
import com.et.course.plugin.mybatis.MyBatiesPlugin;
import com.et.course.util.PathUtils;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.render.ViewType;

public class AppContextConfig extends JFinalConfig {

	@Override
	public void configConstant(Constants me) {

		// 加载少量必要配置，随后可用PropKit.get(...)获取值
		me.setDevMode(true);
		me.setEncoding("UTF-8");
		me.setViewType(ViewType.JSP);
	}

	@Override
	public void configHandler(Handlers me) {}

	@Override
	public void configInterceptor(Interceptors me) {
		me.add(new ActionInterceptor());
	}

	@Override
	public void configPlugin(Plugins me) {
		String filePath = PathUtils.getPath("mybatis-config.xml");
		String jdbcConfig = PathUtils.getPath("jdbc.properties");
		me.add(new MyBatiesPlugin(filePath, jdbcConfig));
	}

	@Override
	public void configRoute(Routes me) {
		ConfigRoutePlugin plugin = new ConfigRoutePlugin(me);
		plugin.initRoute("com.et.course");
	}
}
