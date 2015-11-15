package com.et.course.admin;

import com.et.course.model.SqlSessionModel;

public class Admin extends SqlSessionModel {

	public static Admin me = new Admin();

	private String username;

	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
