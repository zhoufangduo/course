package com.et.course.plugin;

import java.io.File;
import com.et.course.constant.CONSTANT;
import com.et.course.plugin.annotation.Controller;
import com.jfinal.config.Routes;

public class ConfigRoutePlugin {
	
	private PluginClassLoader loader;
	
	public ConfigRoutePlugin(Routes routes){
		this.loader = new PluginClassLoader(routes);
	}
	
	public void initRoute(String controllerPath){
		String root = loader.getContextRoot() + File.separator +
				controllerPath.replace(".", File.separator);
		
		loader.load(new File(root));
	}
	
	private static class PluginClassLoader{
		
		private Routes routes;

		public PluginClassLoader(Routes routes) {
			this.routes = routes;
		}

		@SuppressWarnings("unchecked")
		public void load(File dir) {
			if (dir == null) {
				return ;
			}
			
			if (dir.isDirectory()) {
				File[]files = dir.listFiles();
				for(File file : files){
					load(file);
				}
			}else{
				if (dir.isFile() && dir.getPath().endsWith(".class")) {
					try {
						String className = dir.getPath().replace(this.getContextRoot()+ File.separator,"");
							   className = className.replace(File.separator, ".").replace(".class", "");
							   
						Class<com.jfinal.core.Controller> clazz =  (Class<com.jfinal.core.Controller>)
									   Thread.currentThread().getContextClassLoader().loadClass(className);
							   
						initClassToRoutes(clazz);
						
					} catch (ClassNotFoundException e) {
						e.printStackTrace();
					}
				}
			}
		}
		
		private void initClassToRoutes(Class<com.jfinal.core.Controller> clazz) {
			Controller controller = clazz.getAnnotation(Controller.class);
			if (controller != null) {
				
				String controllerkey = controller.controllerKey();
				boolean hasRoot = controller.hasRoot();
				String viewPath = controller.viewPath();
				if (hasRoot) {
					viewPath = CONSTANT.JSP_ROOT + viewPath;
				}
				
				routes.add(controllerkey, clazz, viewPath);
			}
		}

		public File getFile(String source){
			source = Thread.currentThread().getContextClassLoader().getResource(source).getPath();
			File file = new File(source);
			return file;
		}
		
		public String getContextRoot(){
			String path = getFile("").getPath();
			return path;
		}
		
	}
}
