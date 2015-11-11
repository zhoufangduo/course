package com.et.course.plugin;

import com.jfinal.plugin.activerecord.Model;

public class BeanModel extends Model<BeanModel>{
	private static final long serialVersionUID = 1L;
	
	public static BeanModel me = new BeanModel();
}
