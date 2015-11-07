package com.et.course.util;

public class PathUtils {
	
	public static String getPath(String resource){
		return getLoader().getResource(resource).getPath();
	}
	
	public static String getCurrentPath(){
		return getPath("");
	}
	
	private static ClassLoader getLoader(){
		return Thread.currentThread().getContextClassLoader();
	}
}
