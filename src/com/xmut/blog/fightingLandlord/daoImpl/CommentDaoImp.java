package com.xmut.blog.fightingLandlord.daoImpl;

import java.sql.ResultSet;
import java.util.List;

import com.xmut.blog.fightingLandlord.dao.CommentDao;
import com.xmut.blog.fightingLandlord.entity.Comment;
import com.xmut.blog.fightingLandlord.entity.User;
import com.xmut.blog.fightingLandlord.utils.DbConnection;

public class CommentDaoImp implements CommentDao {

	DbConnection util = new DbConnection();

	@Override
	public boolean addComment(Comment entity) {
		boolean flag = false;
		try {
			flag = util.update("insert into comment(u_id,b_id,c_content,c_time,c_thumbs_up)values(?,?,?,?,?)",
					entity.getUser().getUserId(), entity.getBlogId(), entity.getCommentContent(),
					entity.getCommentTime(), entity.getCommentThumbup());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean deleteComment(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Comment> queryAllComment() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Comment queryCommentForId(Comment entity) {
		Comment flag = null;
		try {
			ResultSet res = util.query(
					"select * from comment where u_id = ? and b_id=? and c_content = ? and c_thumbs_up=? ",
					entity.getUser().getUserId(), entity.getBlogId(), entity.getCommentContent(),
					entity.getCommentThumbup());
			if (res.next()) {
				flag = new Comment(res.getInt("c_id"), new User(res.getInt("u_id")), res.getInt("b_id"),
						res.getString("c_content"), res.getDate("c_time"), res.getInt("c_thumbs_up"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

}
