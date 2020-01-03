package com.xmut.blog.fightingLandlord.entity;

import java.util.Date;

/**
 * 
 * 评论id和博客id默认为0 不为0表示对于的点赞
 * 
 * @author DixinFan
 *
 */
public class Praise {
	private Integer praiseId;// 点赞id
	private Integer userId;// 点赞用户id
	private Integer blogId;// 博客id
	private Integer commentId;// 评论id
	private Date praiseTime;

	public Date getPraiseTime() {
		return praiseTime;
	}

	public void setPraiseTime(Date praiseTime) {
		this.praiseTime = praiseTime;
	}

	public Praise() {
		super();
	}

	public Praise(Integer praiseId, Integer userId, Integer blogId, Integer commentId) {
		super();
		this.praiseId = praiseId;
		this.userId = userId;
		this.blogId = blogId;
		this.commentId = commentId;
	}

	public Integer getPraiseId() {
		return praiseId;
	}

	public void setPraiseId(Integer praiseId) {
		this.praiseId = praiseId;
	}

	public Integer getUserId() {
		return userId;
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

	public Integer getCommentId() {
		return commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

}
