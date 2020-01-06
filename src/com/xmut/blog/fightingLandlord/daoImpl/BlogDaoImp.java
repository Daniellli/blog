package com.xmut.blog.fightingLandlord.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.smartcardio.CommandAPDU;

import com.xmut.blog.fightingLandlord.dao.BlogDao;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.entity.Category;
import com.xmut.blog.fightingLandlord.entity.Comment;
import com.xmut.blog.fightingLandlord.entity.User;
import com.xmut.blog.fightingLandlord.utils.DbConnection;

/**
 * BlogDao接口实现类
 * 
 * @author cf
 * @since 2020年1月2日09:43:57
 */
public class BlogDaoImp implements BlogDao {
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

			// thumbs-up无效
			flag = util.update(
					"insert into blog(b_id,b_name,u_id,b_thumbs_up,b_content,b_audio,b_video,b_photo,b_category_id)values(?,?,?,?,?,?,?,?,?)",
					blog.getBlogId(), blog.getBlogName(), blog.getUser().getUserId(), blog.getBlogThumbup(),
					blog.getBlogContent(), blog.getBlogAudio(), blog.getBlogVideo(), blog.getBlogPhoto(),
					blog.getCategory().getcId());
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
					"update blog set b_name = ?  and b_content= ? and b_audio= ? and b_video = ? and b_photo =? and  b_category_id = ? where b_id = ?",
					blog.getBlogName(), blog.getBlogContent(), blog.getBlogAudio(), blog.getBlogVideo(),
					blog.getBlogPhoto(), blog.getCategory().getcId(), blog.getBlogId());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	/**
	 * 
	 * @author Daniel 2020 下午9:26:10
	 * @param key
	 * @return
	 */
	@Override
	public List<Blog> autoComplete(String key) {
		List<Blog> list = new ArrayList<Blog>();
		try {
			ResultSet res = util.query("select * from blog where b_name like ? ", "%" + key + "%");
			while (res.next()) {
				Blog b = new Blog();
				b.setBlogName(res.getString("b_name"));
				b.setBlogContent(res.getString("b_content"));
				b.setBlogId(res.getInt("b_id"));
				list.add(b);
			}
			util.closeAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Blog> getAllBlog() {
		List<Blog> list = new ArrayList<Blog>();
		try {
			ResultSet res = util.query("select * from  show_blog_with_like_comment ");
			while (res.next()) {
				User u = new User();
				u.setUserId(res.getInt("u_id"));
				u.setUserName(res.getString("u_name"));
				u.setUserPortrait(res.getString("portrait"));
				Category cat = new Category();
				cat.setcId(res.getInt("b_category_id"));
				Blog b = new Blog(res.getInt("b_id"), u, res.getString("b_name"), res.getInt("like_number"),
						res.getString("b_content"), res.getString("b_audio"), res.getString("b_video"),
						res.getString("b_photo"), cat, res.getInt("comment_number"));
				list.add(b);
			}
			util.closeAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * @author DixinFan
	 * 
	 */
	@Override
	public Blog getBlogById(Integer id) {
		Blog b = null;
		try {
			ResultSet res = util.query("select * from  show_blog_with_like_comment where b_id = ? ", id);
			if (res.next()) {
				User u = new User();
				u.setUserId(res.getInt("u_id"));
				u.setUserName(res.getString("u_name"));
				u.setUserPortrait(res.getString("portrait"));
				Category cat = new Category();
				cat.setcId(res.getInt("b_category_id"));
				b = new Blog(res.getInt("b_id"), u, res.getString("b_name"), res.getInt("like_number"),
						res.getString("b_content"), res.getString("b_audio"), res.getString("b_video"),
						res.getString("b_photo"), cat, res.getInt("comment_number"));

				res = util.query("select * from comment as c ,user as u  where c.u_id = u.u_id and c.b_id =?", id);
				List<Comment> comment = new ArrayList<>();
				while (res.next()) {
					User user = new User();
					user.setUserName(res.getString("u_name"));
					user.setUserId(res.getInt("u_id"));
					user.setUserPortrait(res.getString("portrait"));
					Comment c = new Comment(res.getInt("c_id"),user, res.getInt("b_id"), res.getString("c_content"), res.getTime("c_time"),
							res.getInt("c_thumbs_up"));
					comment.add(c);
				}
				b.setComments(comment);
			}
			util.closeAll();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return b;
	}

	@Override
	public boolean thumbsUp(Integer id) {
		boolean flag = false;
		try {
			flag = util.update("update blog set b_thumbs_up =b_thumbs_up+1  where b_id = ?", id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	/**
	 * 
	 * 
	 * @author DixinFan
	 * 
	 */

	@Override
	public List<Blog> findBlogByCategoryId(Integer id) {
		List<Blog> list = new ArrayList<Blog>();
		try {
			ResultSet res = util.query("select * from  show_blog_with_like_comment where b_category_id = ?", id);
			while (res.next()) {
				User u = new User();
				u.setUserId(res.getInt("u_id"));
				u.setUserName(res.getString("u_name"));
				u.setUserPortrait(res.getString("portrait"));
				Category cat = new Category();
				cat.setcId(res.getInt("b_category_id"));
				Blog b = new Blog(res.getInt("b_id"), u, res.getString("b_name"), res.getInt("like_number"),
						res.getString("b_content"), res.getString("b_audio"), res.getString("b_video"),
						res.getString("b_photo"), cat, res.getInt("comment_number"));
				list.add(b);
			}
			util.closeAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Blog> findBlogByName(String name) {
		List<Blog> list = new ArrayList<Blog>();
		try {
			ResultSet res = util.query("select * from  show_blog_with_like_comment where  b_name = ?", name);
			while (res.next()) {
				User u = new User();
				u.setUserId(res.getInt("u_id"));
				u.setUserName(res.getString("u_name"));
				u.setUserPortrait(res.getString("portrait"));
				Category cat = new Category();
				cat.setcId(res.getInt("b_category_id"));
				Blog b = new Blog(res.getInt("b_id"), u, res.getString("b_name"), res.getInt("like_number"),
						res.getString("b_content"), res.getString("b_audio"), res.getString("b_video"),
						res.getString("b_photo"), cat, res.getInt("comment_number"));
				list.add(b);
			}
			util.closeAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
