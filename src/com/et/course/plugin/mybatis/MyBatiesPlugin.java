package com.et.course.plugin.mybatis;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.jfinal.plugin.IPlugin;

public class MyBatiesPlugin implements IPlugin {

	private String filePath;

	public MyBatiesPlugin(String filePath) {
		System.out.println("MyBatiesPlugin.MyBatiesPlugin()");
		this.filePath = filePath;
	}

	@Override
	public boolean start() {

		FileInputStream inputStream;
		try {

			inputStream = new FileInputStream(filePath);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder()
					.build(inputStream);
			
			MyBatisSessionFactory.initSession(sessionFactory);
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

		return true;
	}

	@Override
	public boolean stop() {
		return true;
	}

}
