package com.et.course.fore.login;

import com.jfinal.plugin.activerecord.Model;

public class LoginUser extends Model<LoginUser>{
	
	private static final long serialVersionUID = 1L;
	
	public static LoginUser me = new LoginUser();
	
	public LoginUser getLogin(Object[]param){
		return findFirst("SELECT * FROM USER WHERE USERNAME=? AND PASSWORD=MD5(?)",param);
	}
}
