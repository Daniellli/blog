package com.xmut.blog.fightingLandlord.entity;

import java.util.Date;

/**
 * Comment table
 * 
 * @author Daniel
 * @since 2019年12月31日 下午1:40:03
 */
public class Comment {

	private Integer userId;//用户id
	private Integer blogId;//博客id
	private String commentContent;//评论内容
	private Date commentTime;//评论内容
	private Integer commentThumbup;//点赞数

	public Integer getUserId() {
		return userId;
	}

	public Comment() {
		super();
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getBlogId() {
		return blogId;
	}

	public void setBlogId(Integer blogId) {
		this.blogId = blogId;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public Date getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	public Integer getCommentThumbup() {
		return commentThumbup;
	}

	public void setCommentThumbup(Integer commentThumbup) {
		this.commentThumbup = commentThumbup;
	}

}
