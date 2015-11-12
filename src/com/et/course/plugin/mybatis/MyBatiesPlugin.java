package com.et.course.plugin.mybatis;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.jfinal.plugin.IPlugin;

public class MyBatiesPlugin implements IPlugin {

	private String filePath;

	private SqlSessionFactory sessionFactory;

	public MyBatiesPlugin(String filePath) {
		this.filePath = filePath;
	}

	@Override
	public boolean start() {

		FileInputStream inputStream;
		try {

			inputStream = new FileInputStream(filePath);
			this.sessionFactory = new SqlSessionFactoryBuilder()
					.build(inputStream);

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
