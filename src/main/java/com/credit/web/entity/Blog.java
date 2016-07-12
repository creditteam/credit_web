package com.credit.web.entity;

import java.util.Date;

public class Blog {

	private Integer id;
	private Short blogType;
	private String blogTitle;
	private String blogContext;
	private Date createTime;

	public Blog() {

	}

	public Blog(Integer id, Short blogType, String blogTitle,
			String blogContext, Date createTime) {
		super();
		this.id = id;
		this.blogType = blogType;
		this.blogTitle = blogTitle;
		this.blogContext = blogContext;
		this.createTime = createTime;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Short getBlogType() {
		return blogType;
	}

	public void setBlogType(Short blogType) {
		this.blogType = blogType;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getBlogContext() {
		return blogContext;
	}

	public void setBlogContext(String blogContext) {
		this.blogContext = blogContext;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

}
