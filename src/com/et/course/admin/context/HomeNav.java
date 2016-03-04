package com.et.course.admin.context;

import com.et.course.model.SqlSessionModel;

public class HomeNav extends SqlSessionModel {

	public static HomeNav me = new HomeNav();

	private int id;

	private String name;

	private String url;

	private int pId;

	private int seq;

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

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

}
