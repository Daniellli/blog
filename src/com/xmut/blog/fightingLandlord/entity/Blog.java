package com.xmut.blog.fightingLandlord.entity;

/**
 * blog table 
 * @author Daniel
 * @since 2019年12月31日 下午1:40:03
 */
public class Blog {
	private Integer blogId;  //博客id
	private Integer userId;//用户id
	private Integer blogThumbup;//点赞数量
	private String blogContent;//博客内容
	private String blogAudio;//博客视频地址
	private String blogVideo;//博客音频地址
	private String blogPhoto;//博客图片地址
	
	public Blog() {
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
	
	
	
	
	
	
}
