package com.xmut.blog.fightingLandlord.entity;

import java.util.List;

/**
 * User table 
 * @author Daniel
 * @since 2019年12月31日 下午1:40:03
 */

public class User {
	private Integer userId; //用户id
	private String userName;//用户名
	private String userPwd;//用户密码
	private Integer userSex;//用户性别
	private Integer userAge;//用户年龄
	private String userEmail;//用户邮箱
	private Integer userType;//用户类型，用户、管理员
	private String userQuestion;//密保问题
	private String userAnswer;//密保答案
	private String userTelephone;//密保答案
	private String userPortrait;//密保答案
	
	private List<Blog> blogs;//该用户发布的所有博客
	
	

	public String getUserQuestion() {
		return userQuestion;
	}

	public String getUserTelephone() {
		return userTelephone;
	}

	public void setUserTelephone(String userTelephone) {
		this.userTelephone = userTelephone;
	}

	public void setUserQuestion(String userQuestion) {
		this.userQuestion = userQuestion;
	}

	public String getUserAnswer() {
		return userAnswer;
	}

	public void setUserAnswer(String userAnswer) {
		this.userAnswer = userAnswer;
	}

	public User() {
		super();
	}



	public User(Integer userId, String userName, String userPwd) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
	}

	public User(Integer userId, String userName, String userPwd, Integer userSex, Integer userAge, String userEmail,
			Integer userType, String userQuestion, String userAnswer, String userTelephone) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userSex = userSex;
		this.userAge = userAge;
		this.userEmail = userEmail;
		this.userType = userType;
		this.userQuestion = userQuestion;
		this.userAnswer = userAnswer;
		this.userTelephone = userTelephone;
	}

	public Integer getUserId() {
		return userId;
	}

	public User(Integer userId) {
		super();
		this.userId = userId;
	}

	
	public User(Integer userId, String userName) {
		super();
		this.userId = userId;
		this.userName = userName;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public Integer getUserSex() {
		return userSex;
	}

	public void setUserSex(Integer userSex) {
		this.userSex = userSex;
	}

	public Integer getUserAge() {
		return userAge;
	}

	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}

	/**
	 * @return the userPortrait
	 */
	public String getUserPortrait() {
		return userPortrait;
	}

	/**
	 * @param userPortrait the userPortrait to set
	 */
	public void setUserPortrait(String userPortrait) {
		this.userPortrait = userPortrait;
	}

	/**
	 * @return the blogs
	 */
	public List<Blog> getBlogs() {
		return blogs;
	}

	/**
	 * @param blogs the blogs to set
	 */
	public void setBlogs(List<Blog> blogs) {
		this.blogs = blogs;
	}

}
