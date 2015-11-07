package com.et.course.plugin;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Properties;

import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.Model;

public class BeanMappingUtil {
	
	@SuppressWarnings("unchecked")
	public static void loadToPlugin(String file,ActiveRecordPlugin plugin){
		
		Properties properties = new Properties();
		
		try {
			properties.load(new FileInputStream(file));
			Enumeration<Object> keys =  properties.keys();
			while (keys.hasMoreElements()) {
				String tableName = (String) keys.nextElement();
				String className = properties.getProperty(tableName);
				plugin.addMapping(tableName, (Class<? extends Model<?>>) Class.forName(className));
			}
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}
}
