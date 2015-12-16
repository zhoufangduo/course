package com.et.course.fore.course;

import com.et.course.model.SqlSessionModel;

public class Course extends SqlSessionModel {

	public static Course me = new Course();

	private int id;

	private String name;

	private String createTime;

	private String creater;

	private String description;

	private String audiences;

	private String logo;

	private String target;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAudiences() {
		return audiences;
	}

	public void setAudiences(String audiences) {
		this.audiences = audiences;
	}

	public String getCreater() {
		return creater;
	}

	public void setCreater(String creater) {
		this.creater = creater;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

}
