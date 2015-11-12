package com.et.course.plugin.mybatis;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

class MyBatisSessionFactory {

	private static List<SqlSession> sqlSessions = new ArrayList<SqlSession>();

	private MyBatisSessionFactory() {

	}

	public static SqlSession openSession(){
		SqlSession session = sqlSessions.get(0);
		sqlSessions.remove(0);
		return session;
	}
	
	public static void closeSession(SqlSession session){
		sqlSessions.add(session);
	}

	public static void initSession(SqlSessionFactory sessionFactory) {
		
	}
}
