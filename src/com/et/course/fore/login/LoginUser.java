package com.et.course.fore.login;

import com.jfinal.plugin.activerecord.Model;

public class LoginUser extends Model<LoginUser>{
	
	private static final long serialVersionUID = 1L;

	public final static LoginUser dao = new LoginUser();

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
