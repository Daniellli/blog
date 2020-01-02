package com.xmut.blog.fightingLandlord.dao;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.Category;
import com.xmut.blog.fightingLandlord.entity.User;

public interface CategoryDao {

	// 发表分类
	public boolean addCategory(Category entity);

	// 删除分类
	public boolean deleteCategory(Integer id);

	// 修改分类
	public boolean updateCategory(Category entity);

	//查询所有分类
	public List<Category> queryAllCategory();
	
	
}
