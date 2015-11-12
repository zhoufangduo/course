package com.et.course.admin.user;

import com.jfinal.plugin.activerecord.Model;

public class User extends Model<User> {

	private static final long serialVersionUID = 1L;

	public static User me = new User();

	public void getUsers(int pageNumber, int pageSize, String... params) {
		
	}

}
