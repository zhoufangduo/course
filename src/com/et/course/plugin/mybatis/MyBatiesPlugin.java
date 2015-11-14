package com.et.course.plugin.mybatis;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.jfinal.plugin.IPlugin;

public class MyBatiesPlugin implements IPlugin {

	private FileInputStream inputStream;

	private Properties properties;

	public MyBatiesPlugin(String filePath, String jdbc) {
		init(filePath, jdbc);

	}

	private void init(String filePath, String jdbc) {

		try {
			this.inputStream = new FileInputStream(filePath);
			this.properties = new Properties();
			this.properties.load(new FileInputStream(jdbc));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean start() {

		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(inputStream, properties);
		
		MyBatisSessionFactory.initSession(sessionFactory);

		return true;
	}

	@Override
	public boolean stop() {
		return true;
	}

}
