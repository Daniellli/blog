package com.xmut.blog.fightingLandlord.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.xmut.blog.fightingLandlord.dao.UserDao;
import com.xmut.blog.fightingLandlord.entity.User;
import com.xmut.blog.fightingLandlord.utils.*;

/**
 * UserDao 接口实现类
 * 
 * @author Daniel
 * 
 * @since 2019年12月31日 下午2:13:18
 */

public class UserDaoImp implements UserDao {

	private DbConnection util = new DbConnection();

	/**
	 * @param name
	 *            登录名
	 * @param pwd
	 *            密码
	 * @return User 登录的用户对象 如果为null表示用户名或者密码错误
	 * @author Daniel
	 * @since 2019年12月31日 下午2:13:18
	 */
	@Override
	public User checkLogin(String name, String pwd) {
		User user = null;
		try {
			ResultSet res = util.query("select * from user where u_name = ? and u_pwd = ?", name, pwd);

			if (res.next()) {
				user = new User(res.getInt("u_id"), res.getString("u_name"), res.getString("u_pwd"),
						res.getInt("u_sex"), res.getInt("u_age"), res.getString("u_email"), res.getInt("u_type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			res;
		}
		return user;
	}

	@Override
	public boolean register(User user) {
		boolean flag = false;
		try {
			int a = util.update("insert into user(u_name,u_pwd,u_sex,u_age,u_email,u_type)values(?,?,?,?,?,?)",
					user.getUserName(), user.getUserPwd(), user.getUserSex(), user.getUserAge(), user.getUserEmail(),
					user.getUserType());
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean deleteUserById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User queryUserById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> queryAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
