package com.xmut.blog.fightingLandlord.bizImp;

import com.xmut.blog.fightingLandlord.biz.BlogBiz;
import com.xmut.blog.fightingLandlord.dao.BlogDao;
import com.xmut.blog.fightingLandlord.dao.UserDao;
import com.xmut.blog.fightingLandlord.daoImpl.BlogDaoImp;
import com.xmut.blog.fightingLandlord.daoImpl.UserDaoImp;
import com.xmut.blog.fightingLandlord.entity.Blog;

public class BlogBizImp implements BlogBiz {
	// 业务逻辑层调用数据访问层
	private BlogDao dao = new BlogDaoImp();

	/**
	 * @return Blog
	 * @author cf
	 * @since 2020年1月2日10:21:00
	 */
	public boolean addBlog(Blog blog) {
		if (blog.getBlogName() == null || blog.getBlogContent() == null) {
			return false;
		}
		return dao.addBlog(blog);
	}

	public boolean deleteBlog(Integer id) {
		return dao.deleteBlog(id);
	}

	public boolean updateBlog(Blog blog) {
		if (blog.getBlogName() == null || blog.getBlogContent() == null) {
			return false;
		}
		return dao.updateBlog(blog);
	}

}
