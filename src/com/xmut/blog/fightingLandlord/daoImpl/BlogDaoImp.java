package com.xmut.blog.fightingLandlord.daoImpl;

import com.xmut.blog.fightingLandlord.dao.BlogDao;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.utils.DbConnection;

/**
 * BlogDao接口实现类
 * @author cf
 * @since 2020年1月2日09:43:57
 */
public class BlogDaoImp implements BlogDao{
	private DbConnection util = new DbConnection();
	/**
	 * @param blog
	 *            要发表的博客
	 * @author cf
	 * @since 2020年1月2日09:45:27
	 */
	public boolean addBlog(Blog blog) {
		boolean flag = false;
		try {
			flag = util.update(
					"insert into blog(b_id,b_name,u_id,b_thumbs_up,b_content,b_audio,b_video,b_phoyo)values(?,?,?,?,?,?,?)",
					blog.getBlogId(),blog.getBlogName(),blog.getUserId(),blog.getBlogVideo(),blog.getBlogContent(),blog.getBlogAudio(),blog.getBlogVideo(),blog.getBlogPhoto() );
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}
	
	/**
	 * @param id
	 *            要删除的BlogId
	 * @return 删除的结果
	 * @author cf
	 * @since 2020年1月2日09:56:40
	 */

	public boolean deleteBlog(Integer id) {
		boolean flag = false;
		try {
			flag = util.update("delete from blog where b_id = ?", id);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	/**
	 * @param blog
	 *            要更新的博客
	 * @author cf
	 * @since 2020年1月2日2020年1月2日10:06:18
	 */
	public boolean updateBlog(Blog blog) {
		boolean flag = false;
		try {
			flag = util.update(
					"update blog set b_name = ?  and b_content= ? and b_audio= ? and b_video = ? and b_photo =? where b_id = ?",
					blog.getBlogName(),blog.getBlogContent(),blog.getBlogAudio(),blog.getBlogVideo(),blog.getBlogPhoto());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

}
