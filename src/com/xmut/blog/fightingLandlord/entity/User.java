package com.xmut.blog.fightingLandlord.entity;

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

	public User() {
		super();
	}

	public User(Integer userId, String userName, String userPwd, Integer userSex, Integer userAge, String userEmail,
			Integer userType) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userSex = userSex;
		this.userAge = userAge;
		this.userEmail = userEmail;
		this.userType = userType;
	}

	public Integer getUserId() {
		return userId;
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

}
