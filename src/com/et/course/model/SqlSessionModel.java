package com.et.course.model;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSession;

import com.et.course.plugin.mybatis.SqlSessionStaticFactory;

public abstract class SqlSessionModel {

	protected SqlSession session;

	private void before() {
		this.session = SqlSessionStaticFactory.openSession();
	}
	
	private void after() {
		if (session != null) {
			commit();
			close();
		}
	}

	public <T> T selectOne(String sql) {
		before();
		try {
			return session.selectOne(sql);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public <T> T selectOne(String sql, Object params) {
		before();
		try {
			return session.selectOne(sql, params);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public <T> List<T> selectList(String sql) {
		before();
		try {
			return session.selectList(sql);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public <T> List<T> selectList(String sql, Object params) {
		before();
		try {
			return session.selectList(sql, params);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public Map<Object, Object> selectMap(String arg0, String arg1) {
		before();
		try {
			return session.selectMap(arg0, arg1);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public Map<Object, Object> selectMap(String arg0, Object arg1, String arg2) {
		before();
		try {
			return session.selectMap(arg0, arg1, arg2);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public int insert(String sql) {
		before();
		try {
			return session.insert(sql);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			after();
		}
	}

	public int insert(String sql, Object params) {
		before();
		try {
			return session.insert(sql, params);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			after();
		}
	}

	public int update(String sql) {
		before();
		try {
			return session.update(sql);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			after();
		}
	}

	public int update(String sql, Object params) {
		before();
		try {
			return session.update(sql, params);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			after();
		}
	}

	public int delete(String sql) {
		before();
		try {
			return session.delete(sql);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			after();
		}
	}

	public int delete(String sql, Object params) {
		before();
		try {
			return session.delete(sql, params);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			after();
		}
	}

	public void commit() {
		session.commit();
	}

	public void commit(boolean isCommit) {
		session.commit(isCommit);
	}

	public void rollback() {
		session.rollback();
	}

	public void rollback(boolean rollback) {
		session.rollback(rollback);
	}

	public void close() {
		if (session != null) {
			session.close();
		}
	}

	public void clearCache() {
		session.clearCache();
	}

	public Configuration getConfiguration() {
		before();
		try {
			return session.getConfiguration();
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public <T> Object getMapper(Class<T> clazz) {
		before();
		try {
			return session.getMapper(clazz);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public Connection getConnection() {
		before();
		try {
			return session.getConnection();
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}
}
