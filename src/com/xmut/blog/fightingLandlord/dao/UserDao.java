package com.xmut.blog.fightingLandlord.dao;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.User;

public interface UserDao {
	// 登录方法
	public User checkLogin(String name, String pwd);

	// 注册方法
	public boolean register(User user);

	// 删除方法
	public boolean deleteUserById(Integer id);

	// 修改方法
	public boolean updateUser(User user);

	// 根据id查询返回一条用户
	public User queryUserById(Integer id);

	// 根据id查询返回一条用户
	public User queryUserByIdSimple(Integer id);

	// 根据name查询返回一条用户
	public User queryUserByName(String name);

	// 查询所有用户
	public List<User> queryAllUser();

	// 查询所有关注的好友
	public List<User> queryFriends(int id);

	// 修改密码
	public boolean modifyUser(User user);

	// 找回密码
	public User findPassword(String name, String question, String answer);

	// get question获取密保问题
	public String getQuestionByUserName(String name);

	/**
	 * 客户端修改密码 简洁版
	 */
	public boolean updateUserSimply(User user);

}
