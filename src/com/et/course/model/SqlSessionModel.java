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
			close();
		}
	}

	public int insert(String sql, Object params) {
		before();
		try {
			return session.insert(sql, params);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public int update(String sql) {
		before();
		try {
			return session.update(sql);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public int update(String sql, Object params) {
		before();
		try {
			return session.update(sql, params);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public int delete(String sql) {
		before();
		try {
			return session.delete(sql);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public int delete(String sql, Object params) {
		before();
		try {
			return session.delete(sql, params);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public void commit() {
		before();
		try {
			session.commit();
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public void commit(boolean isCommit) {
		before();
		try {
			session.commit(isCommit);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public void rollback() {
		before();
		try {
			session.rollback();
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public void rollback(boolean rollback) {
		before();
		try {
			session.rollback(rollback);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
	}

	public void close() {
		if (session != null) {
			System.out.println("SqlSessionModel.close()");
			session.close();
		}
	}

	public void clearCache() {
		before();
		try {
			session.clearCache();
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			close();
		}
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
