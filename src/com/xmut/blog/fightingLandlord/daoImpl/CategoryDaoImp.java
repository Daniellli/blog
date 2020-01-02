package com.xmut.blog.fightingLandlord.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xmut.blog.fightingLandlord.dao.CategoryDao;
import com.xmut.blog.fightingLandlord.entity.Category;
import com.xmut.blog.fightingLandlord.entity.User;
import com.xmut.blog.fightingLandlord.utils.DbConnection;

public class CategoryDaoImp implements CategoryDao {

	private DbConnection util = new DbConnection();

	@Override
	public boolean addCategory(Category entity) {
		boolean flag = false;
		try {
			flag = util.update("insert into category(c_name)values(?)", entity.getcName());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean deleteCategory(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateCategory(Category entity) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 查找所有分类
	 * 
	 * @author Daniel
	 * 
	 */

	@Override
	public List<Category> queryAllCategory() {
		List<Category> list = new ArrayList<Category>();
		try {
			ResultSet res = util.query("select * from category ");

			while (res.next()) {
				Category cat = new Category();
				cat.setcId(res.getInt("c_id"));
				cat.setcName(res.getString("c_name"));
				list.add(cat);
			}
			util.closeAll();// 关闭连接
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
