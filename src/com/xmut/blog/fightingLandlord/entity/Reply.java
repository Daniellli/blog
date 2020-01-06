package com.xmut.blog.fightingLandlord.entity;

import java.util.Date;

/**
 * 
 * @author DixinFan
 *
 */

public class Reply {
	
	private Integer replyId;
	private Integer commentId;
	private User user;
	private String replyContent;
	private Date replyTime;
	
	public Reply(Integer replyId, Integer commentId, User user, String replyContent, Date replyTime) {
		super();
		this.replyId = replyId;
		this.commentId = commentId;
		this.user = user;
		this.replyContent = replyContent;
		this.replyTime = replyTime;
	}
	public Reply() {
		super();
	}
	public Reply(Integer commentId, User user, String replyContent, Date replyTime) {
		super();
		this.commentId = commentId;
		this.user = user;
		this.replyContent = replyContent;
		this.replyTime = replyTime;
	}
	public Integer getReplyId() {
		return replyId;
	}
	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
	}
	public Integer getCommentId() {
		return commentId;
	}
	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Date getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
	}
	
	
	
	
	
}
