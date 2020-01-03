package com.xmut.blog.fightingLandlord.entity;

import java.util.List;

/**
 * blog table
 * 
 * @author Daniel
 * @since 2019年12月31日 下午1:40:03
 */
public class Blog {
	private Integer blogId; // 博客id
	private User user;// 用户id
	private String blogName;
	private Integer blogThumbup;// 点赞数量
	private String blogContent;// 博客内容
	private String blogAudio;// 博客视频地址
	private String blogVideo;// 博客音频地址
	private String blogPhoto;// 博客图片地址
	private Category category;// 博客分类
	private Integer blogCommentNumber;// 评论数量
	private List<Comment> comments;// 用戶评论
	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public Blog() {
		super();
	}

	public Integer getBlogId() {
		return blogId;
	}

	public Blog(Integer blogId, User user, String blogName, Integer blogThumbup, String blogContent, String blogAudio,
			String blogVideo, String blogPhoto, Category category, Integer commentNumber) {
		super();
		this.blogId = blogId;
		this.user = user;
		this.blogName = blogName;
		this.blogThumbup = blogThumbup;
		this.blogContent = blogContent;
		this.blogAudio = blogAudio;
		this.blogVideo = blogVideo;
		this.blogPhoto = blogPhoto;
		this.category = category;
		this.blogCommentNumber = commentNumber;

	}

	public void setBlogId(Integer blogId) {
		this.blogId = blogId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getBlogThumbup() {
		return blogThumbup;
	}

	public void setBlogThumbup(Integer blogThumbup) {
		this.blogThumbup = blogThumbup;
	}

	public String getBlogContent() {
		return blogContent;
	}

	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}

	public String getBlogAudio() {
		return blogAudio;
	}

	public void setBlogAudio(String blogAudio) {
		this.blogAudio = blogAudio;
	}

	public String getBlogVideo() {
		return blogVideo;
	}

	public void setBlogVideo(String blogVideo) {
		this.blogVideo = blogVideo;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getBlogPhoto() {
		return blogPhoto;
	}

	public void setBlogPhoto(String blogPhoto) {
		this.blogPhoto = blogPhoto;
	}

	public String getBlogName() {
		return blogName;
	}

	public void setBlogName(String blogName) {
		this.blogName = blogName;
	}

	/**
	 * @return the blogCommentNumber
	 */
	public Integer getBlogCommentNumber() {
		return blogCommentNumber;
	}

	/**
	 * @param blogCommentNumber
	 *            the blogCommentNumber to set
	 */
	public void setBlogCommentNumber(Integer blogCommentNumber) {
		this.blogCommentNumber = blogCommentNumber;
	}

}
