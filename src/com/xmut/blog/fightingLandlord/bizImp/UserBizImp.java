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
		// TODO Auto-generated method stub
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
	public List<User> queryAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
