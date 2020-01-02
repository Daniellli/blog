package com.xmut.blog.fightingLandlord.bizImp;

import java.util.List;

import com.xmut.blog.fightingLandlord.dao.CategoryDao;
import com.xmut.blog.fightingLandlord.entity.Category;
import com.xmut.blog.fightingLandlord.daoImpl.CategoryDaoImp;;

public class CategoryBizImp implements CategoryDao {

	private CategoryDao dao = new CategoryDaoImp();

	@Override
	public boolean addCategory(Category entity) {

		boolean flag = false;
		if (entity != null && entity.getcName() != null && !entity.getcName().equals("")) {
			flag = dao.addCategory(entity);
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

	@Override
	public List<Category> queryAllCategory() {
		List<Category> list = null;
		list = dao.queryAllCategory();
		return list;
	}

}
