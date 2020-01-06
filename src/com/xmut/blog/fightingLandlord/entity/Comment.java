package com.xmut.blog.fightingLandlord.entity;

import java.util.Date;

/**
 * Comment table
 * 
 * @author Daniel
 * @since 2019年12月31日 下午1:40:03
 */
public class Comment {
	private Integer commentId;
	private User user;// 用户id
	private Integer blogId;// 博客id
	private String commentContent;// 评论内容
	private Date commentTime;// 评论内容
	private Integer commentThumbup;// 点赞数

	public Comment() {
		super();
	}

	public Comment(User user, Integer blogId, String commentContent, Date commentTime, Integer commentThumbup) {
		super();
		this.user = user;
		this.blogId = blogId;
		this.commentContent = commentContent;
		this.commentTime = commentTime;
		this.commentThumbup = commentThumbup;
	}

	public Comment(Integer commentId, User user, Integer blogId, String commentContent, Date commentTime,
			Integer commentThumbup) {
		super();
		this.commentId = commentId;
		this.user = user;
		this.blogId = blogId;
		this.commentContent = commentContent;
		this.commentTime = commentTime;
		this.commentThumbup = commentThumbup;
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

	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user
	 *            the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @return the commentId
	 */
	public Integer getCommentId() {
		return commentId;
	}

	/**
	 * @param commentId
	 *            the commentId to set
	 */
	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

}
