package com.xmut.blog.fightingLandlord.biz;

import com.xmut.blog.fightingLandlord.entity.Blog;

public interface BlogBiz {
	//发表博客
	public boolean addBlog (Blog blog);
	//删除博客
	public boolean deleteBlog (Integer id);
	//修改博客
	public boolean updateBlog (Blog blog);
	

}
