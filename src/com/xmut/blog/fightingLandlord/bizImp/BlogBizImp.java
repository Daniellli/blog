package com.xmut.blog.fightingLandlord.bizImp;

import java.util.List;

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

	@Override
	public List<Blog> autoComplete(String key) {
		List<Blog> list = null;
		if (key != null && !key.equals("")) {
			list = dao.autoComplete(key);
		}
		return list;
	}

	@Override
	public List<Blog> getAllBlog() {
		return dao.getAllBlog();
	}

	@Override
	public Blog getBlogById(Integer id) {

		if (id != null) {
			return dao.getBlogById(id);
		} else {
			return null;
		}

	}

	@Override
	public boolean thumbsUp(Integer id) {
		return dao.thumbsUp(id);
	}

	@Override
	public List<Blog> findBlogByCategoryId(Integer id) {

		if (id != null) {
			return dao.findBlogByCategoryId(id);
		}
		return null;
	}

	/**
	 * @author DixinFan
	 * 
	 */
	@Override
	public List<Blog> findBlogByName(String name) {
		if (name != null && name.length() != 0) {
			return dao.findBlogByName(name);
		}
		return null;

	}

}
