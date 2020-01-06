package com.xmut.blog.fightingLandlord.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xmut.blog.fightingLandlord.dao.UserDao;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.entity.Category;
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
	 * 
	 * @param pwd
	 *            密码
	 * 
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
						res.getInt("u_sex"), res.getInt("u_age"), res.getString("u_email"), res.getInt("u_type"),
						res.getString("u_question"), res.getString("u_answer"), res.getString("u_telephone"));
			}
			util.closeAll();// 关闭连接
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	/**
	 * @param user
	 *            要添加的用户对象
	 * @return 添加的結果
	 * @author Daniel
	 * @since 2019年12月31日 下午2:13:18
	 */
	@Override
	public boolean register(User user) {
		boolean flag = false;
		try {
			flag = util.update(
					"insert into user(u_name,u_pwd,u_sex,u_age,u_email,u_type,u_question,u_answer,u_telephone)values(?,?,?,?,?,?,?,?,?)",
					user.getUserName(), user.getUserPwd(), user.getUserSex(), user.getUserAge(), user.getUserEmail(),
					user.getUserType(), user.getUserQuestion(), user.getUserAnswer(), user.getUserTelephone());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	/**
	 * @param id
	 *            要删除的user id
	 * @return 删除的结果
	 * @author Daniel
	 * @since 2019年12月31日 下午2:13:18
	 */
	@Override
	public boolean deleteUserById(Integer id) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			flag = util.update("delete from user where u_id = ?", id);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	/**
	 * 根据user id更新user
	 * 
	 * @param user
	 *            要更新的user
	 * @return 删除的结果
	 * @author Daniel
	 * @since 2019年12月31日 下午2:13:18
	 */

	@Override
	public boolean updateUser(User user) {
		boolean flag = false;
		try {
			flag = util.update(
					"update user set u_name = ? and u_pwd=? and u_sex= ? and u_age= ? and u_email = ? and u_type=? u_question = ? u_answer = ? u_telephone=? where u_id = ?",
					user.getUserName(), user.getUserPwd(), user.getUserSex(), user.getUserAge(), user.getUserEmail(),
					user.getUserType(), user.getUserId(), user.getUserQuestion(), user.getUserAnswer(),
					user.getUserTelephone());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	/**
	 * 通过id查找user
	 * 
	 * @param id
	 *            要查的user id
	 * @return user对象 没找到返回null
	 * @author Daniel
	 * @since 2019年12月31日 下午2:13:18
	 */
	@Override
	public User queryUserById(Integer id) {
		User user = null;
		try {
			ResultSet res = util.query("select * from user where u_id = ?", id);

			if (res.next()) {
				user = new User(res.getInt("u_id"), res.getString("u_name"), res.getString("u_pwd"),
						res.getInt("u_sex"), res.getInt("u_age"), res.getString("u_email"), res.getInt("u_type"),
						res.getString("u_question"), res.getString("u_answer"), res.getString("u_telephone"));

				res = util.query("SELECT * FROM show_blog_with_like_comment where u_id=?;", id);
				List<Blog> blog = new ArrayList<Blog>();
				while (res.next()) {
					User u = new User();// User 对象
					u.setUserId(res.getInt("u_id"));
					u.setUserName(res.getString("u_name"));
					u.setUserPortrait(res.getString("portrait"));
					Category cat = new Category();// 分类对象
					cat.setcId(res.getInt("b_category_id"));
					Blog b = new Blog(res.getInt("b_id"), u, res.getString("b_name"), res.getInt("like_number"),
							res.getString("b_content"), res.getString("b_audio"), res.getString("b_video"),
							res.getString("b_photo"), cat, res.getInt("comment_number"));
					blog.add(b);
				}
				user.setBlogs(blog);
			}
			util.closeAll();// 关闭连接
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	/**
	 * 
	 * @return 所有user
	 * @author Daniel
	 * @since 2019年12月31日 下午2:13:18
	 */
	@Override
	public List<User> queryAllUser() {
		// TODO Auto-generated method stub
		List<User> list = null;
		try {
			ResultSet res = util.query("select * from user ");

			while (res.next()) {
				User user = new User(res.getInt("u_id"), res.getString("u_name"), res.getString("u_pwd"),
						res.getInt("u_sex"), res.getInt("u_age"), res.getString("u_email"), res.getInt("u_type"),
						res.getString("u_question"), res.getString("u_answer"), res.getString("u_telephone"));
				list.add(user);
			}
			util.closeAll();// 关闭连接
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}
}
