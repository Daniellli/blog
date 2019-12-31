package com.xmut.blog.fightingLandlord.entity;

/**
 * Collection table
 * 
 * @author Daniel
 * @since 2019年12月31日 下午1:40:03
 */
public class Collection {
	private Integer blogId;//博客id
	private Integer userId;//用户id

	public Collection() {
		super();
	}

	public Integer getBlogId() {
		return blogId;
	}

	public void setBlogId(Integer blogId) {
		this.blogId = blogId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

}
