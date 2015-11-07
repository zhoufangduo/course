package com.et.course.admin;

import com.jfinal.plugin.activerecord.Model;

public class Admin extends Model<Admin>{

	private static final long serialVersionUID = 1L;
	
	public static Admin me = new Admin();
	
	public boolean validate(String username,String password){
		
		Admin object = findFirst("SELECT * FROM ADMIN_PASSWORD WHERE USERNAME=? AND PASSWORD=MD5(?)",username,password);
		
		if (object != null) {
			return true;
		}
		
		return false;
	}

}
