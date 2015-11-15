package com.et.course.plugin.mybatis;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class SqlSessionStaticFactory {

	private static List<SqlSession> sqlSessions = new ArrayList<SqlSession>();
	
	private static SqlSessionFactory sessionFactory ;

	private SqlSessionStaticFactory() {}

	public static SqlSession openSession(){
		if (sqlSessions.size() < 5) {
			createSession(30);
		}
		SqlSession session = sqlSessions.get(0);
		sqlSessions.remove(0);
		return session;
	}
	
	public static void closeSession(SqlSession session){
		sqlSessions.add(session);
	}

	static void initSession(SqlSessionFactory factory) {
		sessionFactory = factory;
		createSession(50);
	}
	
	private static void createSession(int size){
		for(int i = 0; i < size; i ++){
			sqlSessions.add(sessionFactory.openSession());
		}
	}
}
