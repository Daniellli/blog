package com.xmut.blog.fightingLandlord.bizImp;

import java.util.List;

import com.xmut.blog.fightingLandlord.biz.UserBiz;
import com.xmut.blog.fightingLandlord.dao.UserDao;
import com.xmut.blog.fightingLandlord.daoImpl.UserDaoImp;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * UserBiz实现类
 * 
 * @author Daniel
 * 
 * @since 2019年12月31日 下午5:31:48
 */

public class UserBizImp implements UserBiz {

	UserDao userdao = new UserDaoImp();

	/**
	 * 根据用户名密码检查用户是否注册过
	 * 
	 * @param name
	 *            pwd 用户输入的用户名和密码
	 * @return user对象,没注册返回null
	 * @author Daniel
	 * @since 2019年12月31日 下午5:31:48
	 */

	@Override
	public User checkLogin(String name, String pwd) {

		User user = null;
		if (name == null || name.equals("") || pwd == null || pwd.equals("")) {
			user = null;// 输入不合法
		} else {
			user = userdao.checkLogin(name, pwd);
		}
		return user;
	}

	/**
	 * 注册用户
	 * 
	 * @param user
	 *            要注册的用户对象
	 * @return 注册的结果，如果用户没有输入输入不合法数据都返回false
	 * @author Daniel
	 * @since 2019年12月31日 下午5:31:48
	 */

	@Override
	public boolean register(User user) {
		boolean flag = false;
		if (user == null || user.getUserName() == null || user.getUserName().equals("") || user.getUserPwd() == null
				|| user.getUserPwd().equals("")) {
			flag = false;
		} else {
			flag = userdao.register(user);
		}
		return flag;
	}

	@Override
	public boolean deleteUserById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateUser(User user) {
		if (user != null) {
			return userdao.updateUser(user);
		}
		return false;
	}

	@Override
	public User queryUserById(Integer id) {
		if (id != null) {
			return userdao.queryUserById(id);
		}
		return null;
	}

	@Override
	public User queryUserByIdSimple(Integer id) {
		if (id != null) {
			return userdao.queryUserById(id);
		}
		return null;
	}

	@Override
	public User queryUserByName(String name) {
		if (name != null) {
			return userdao.queryUserByName(name);
		}
		return null;
	}

	@Override
	public List<User> queryAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> queryFriends(int id) {
		if (id != 0) {
			return userdao.queryFriends(id);
		}
		return null;
	}

	@Override
	public boolean modifyUser(User user) {

		if (user != null) {
			return userdao.modifyUser(user);
		}
		return false;
	}

	@Override
	public User findPassword(String name, String question, String answer) {
		if (name != null && question != null && answer != null) {
			return userdao.findPassword(name, question, answer);
		}
		return null;
	}

	@Override
	public String getQuestionByUserName(String name) {
		if (name != null) {
			return userdao.getQuestionByUserName(name);
		}
		return null;
	}

	@Override
	public boolean updateUserSimply(User user) {
		if (user != null) {
			return userdao.updateUserSimply(user);
		}
		// TODO Auto-generated method stub
		return false;
	}

}
