package com.et.course.model;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSession;

import com.et.course.plugin.mybatis.SqlSessionStaticFactory;

public abstract class SqlSessionModel {

	protected SqlSession session;
	
	private void initSession(){
		this.session = SqlSessionStaticFactory.openSession();
	}

	public <T> T selectOne(String sql) {
		initSession();
		return session.selectOne(sql);
	}

	public <T> T selectOne(String sql, Object params) {
		initSession();
		return session.selectOne(sql, params);
	}

	public <T> List<T> selectList(String sql) {
		initSession();
		return session.selectList(sql);
	}

	public <T> List<T> selectList(String sql, Object params) {
		initSession();
		return session.selectList(sql, params);
	}

	public Map<Object, Object> selectMap(String arg0, String arg1) {
		initSession();
		return session.selectMap(arg0, arg1);
	}

	public Map<Object, Object> selectMap(String arg0, Object arg1, String arg2) {
		initSession();
		return session.selectMap(arg0, arg1, arg2);
	}

	public int insert(String sql) {
		initSession();
		return session.insert(sql);
	}

	public int insert(String sql, Object params) {
		initSession();
		return session.insert(sql, params);
	}

	public int update(String sql) {
		initSession();
		return session.update(sql);
	}

	public int update(String sql, Object params) {
		initSession();
		return session.update(sql, params);
	}

	public int delete(String sql) {
		initSession();
		return session.delete(sql);
	}

	public int delete(String sql, Object params) {
		initSession();
		return session.delete(sql, params);
	}

	public void commit() {
		initSession();
		session.commit();
	}

	public void commit(boolean isCommit) {
		initSession();
		session.commit(isCommit);
	}

	public void rollback() {
		initSession();
		session.rollback();
	}

	public void rollback(boolean rollback) {
		initSession();
		session.rollback(rollback);
	}

	public void close() {
		initSession();
		session.close();
	}

	public void clearCache() {
		initSession();
		session.clearCache();
	}

	public Configuration getConfiguration() {
		initSession();
		return session.getConfiguration();
	}

	public <T> Object getMapper(Class<T> clazz) {
		initSession();
		return session.getMapper(clazz);
	}

	public Connection getConnection() {
		initSession();
		return session.getConnection();
	}
}
