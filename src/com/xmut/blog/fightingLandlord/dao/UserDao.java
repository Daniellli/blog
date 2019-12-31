package com.xmut.blog.fightingLandlord.dao;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.User;

public interface UserDao {
	//登录方法
	public User checkLogin(String name,String pwd);
	
	//注册方法
	public boolean register(User user);
	
	
	//删除方法
	public boolean deleteUserById(Integer id);
	
	
	//修改方法
	public boolean updateUser(User user);
	
	
	//根据id查询返回一条用户
	public User queryUserById(Integer id);
	
	
	//查询所有用户
	public List<User> queryAllUser();
	
	
}
	