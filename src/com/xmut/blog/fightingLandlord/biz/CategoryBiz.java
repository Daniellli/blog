package com.xmut.blog.fightingLandlord.biz;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.Category;

public interface CategoryBiz {
	//发表分类
	public boolean addCategory (Category entity);
	//删除分类
	public boolean deleteCategory (Integer id);
	//修改分类
	public boolean updateCategory (Category entity);
	//查询所有分类
	public List<Category> queryAllCategory();
	
}
