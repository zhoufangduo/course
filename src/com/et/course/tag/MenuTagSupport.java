package com.et.course.tag;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import com.et.course.constant.CONSTANT;
import com.et.course.fore.login.LoginUser;

public class MenuTagSupport extends BodyTagSupport {

	private static final long serialVersionUID = 1L;
	
	private StringBuffer buffer = new StringBuffer();
	
	private String contextPath ;
	
	@Override
	public int doEndTag() throws JspException {
		
		this.contextPath = ((HttpServletRequest)this.pageContext.getRequest())
				.getContextPath();
		
		init();
		
		HttpSession session = this.pageContext.getSession();
		LoginUser user = (LoginUser)session.getAttribute(CONSTANT.USER);
		
		if(user == null){
			buffer.append("<span style='margin-left: 70px;'>");
			buffer.append("<a href='").append(contextPath).append("/login/toLogin' class='btn btn-success'>登录</a>&nbsp;&nbsp;");
			buffer.append("<a href='#' class='btn btn-secondary'>注册</a></span>");
		}else{
			buffer.append("<span class='nav-user'><div class='btn-group'>");
			buffer.append("<a data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>");
			buffer.append("<img class='head' src='").append(contextPath).append("/resource/images/head.png'></a>");
			
			buffer.append("<div class='dropdown-menu' style='margin-top:11px;margin-left:-55px;font-size: 13px;'>");
			buffer.append("<span class='dropdown-header'>").append(user.getStr("NAME")).append("</span>");
			buffer.append("<div class='dropdown-divider'></div>");
			if (user.get("ROLE", "STUDENT").equals("ADMIN")) {
				buffer.append("<a class='dropdown-item' href='").append(contextPath)
				.append("/admin'><span class='fa fa-cog'></span>&nbsp;后台管理  </a>");
				buffer.append("<div class='dropdown-divider'></div>");
				
			}
			buffer.append("<a class='dropdown-item' href='").append(contextPath).append("/mycourse/index'><span class='fa fa-cloud'></span>&nbsp;我的课程  </a>");
			buffer.append("<a class='dropdown-item' href='#'><span class='fa fa-user'></span>&nbsp;个人主页  </a>");
			buffer.append("<a class='dropdown-item' href='#'><span class='fa fa-cog'></span>&nbsp;个人设置</a>");
			buffer.append("<a class='dropdown-item' href='").append(contextPath).
			append("/login/logout'><span class='fa fa-circle-o-notch'>").append("</span>&nbsp;退出登录  </a></div></div></span>");
			
			buffer.append("<a class='message' href='#'><span class='fa fa-bell fa-lg'>")
				  .append("</span>&nbsp;消息 </a>");
		}
		
		buffer.append("</form></nav>");
		
		writeMenu();
		
		return SKIP_BODY;
	}

	private void writeMenu() {
		try {
			this.pageContext.getOut().write(buffer.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void init() {
		
		
		
		buffer.append("<nav class='navbar navbar-fixed-top navbar-dark bg-inverse'>");
		buffer.append("<a class='navbar-brand' href='").append(contextPath).append("'>");
		buffer.append("<img class='logo' src='").append(contextPath).append("/resource/images/easytopLOGO.png'/></a>");
		buffer.append("<ul class='nav navbar-nav'>");
		
		buffer.append("<li class='nav-item'><a class='nav-link' href='#'>我的课程 <span class='sr-only'>(current)</span></a></li>");
		buffer.append("<li class='nav-item'><a class='nav-link' href='#'>师资力量</a></li>");
		buffer.append("<li class='nav-item'><a class='nav-link' href='#'>关于系统</a></li>");
		buffer.append("<li class='nav-item active'><a class='nav-link' href='#'>帮助</a></li>");
		
		buffer.append("</ul>");
		
		buffer.append("<form class='form-inline navbar-form pull-right' action=''>");
		buffer.append("<input class='form-control' type='text' placeholder='搜索内容'>&nbsp;");
		buffer.append("<button class='btn btn-info-outline' type='submit'>搜&nbsp;索</button>");
	}

}
