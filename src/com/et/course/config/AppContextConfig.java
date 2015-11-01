package com.et.course.config;


import com.et.course.fore.login.LoginUser;
import com.et.course.plugin.ConfigRoutePlugin;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;

public class AppContextConfig extends JFinalConfig{
	
	@Override
	public void configConstant(Constants me) {
		
		// ����������Ҫ���ã�������PropKit.get(...)��ȡֵ
		PropKit.use("jdbc.properties");
		me.setDevMode(PropKit.getBoolean("devMode", true));
		me.setEncoding("UTF-8");
		me.setViewType(ViewType.JSP);
	}

	@Override
	public void configHandler(Handlers me) {
		
		
	}

	@Override
	public void configInterceptor(Interceptors me) {
		
		
	}

	@Override
	public void configPlugin(Plugins me) {
		
		// ����C3p0���ݿ����ӳز��
		C3p0Plugin c3p0Plugin = new C3p0Plugin(PropKit.get("url"), PropKit.get("user"), PropKit.get("password"));
		me.add(c3p0Plugin);
		
		// ����ActiveRecord���
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		me.add(arp);
		
		arp.addMapping("user", LoginUser.class);	// ӳ��blog �� Blogģ��
	}

	@Override
	public void configRoute(Routes me) {
		
		ConfigRoutePlugin plugin = new ConfigRoutePlugin(me);
		plugin.initRoute("com.et.course");
	}

}
