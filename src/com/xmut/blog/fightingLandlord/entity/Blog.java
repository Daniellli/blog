package com.xmut.blog.fightingLandlord.entity;

/**
 * blog table 
 * @author Daniel
 * @since 2019年12月31日 下午1:40:03
 */
public class Blog {
	private Integer blogId;  //博客id
	private Integer userId;//用户id
	private String blogName;
	private Integer blogThumbup;//点赞数量
	private String blogContent;//博客内容
	private String blogAudio;//博客视频地址
	private String blogVideo;//博客音频地址
	private String blogPhoto;//博客图片地址
	private Integer categoryId;//博客分类
	
	public Blog() {
		super();
	}
	
	public Blog(Integer blogId, Integer userId, String blogName, Integer blogThumbup, String blogContent,
			String blogAudio, String blogVideo, String blogPhoto, Integer categoryId) {
		super();
		this.blogId = blogId;
		this.userId = userId;
		this.blogName = blogName;
		this.blogThumbup = blogThumbup;
		this.blogContent = blogContent;
		this.blogAudio = blogAudio;
		this.blogVideo = blogVideo;
		this.blogPhoto = blogPhoto;
		this.categoryId = categoryId;
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

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	
	
	
	
	
	
}
