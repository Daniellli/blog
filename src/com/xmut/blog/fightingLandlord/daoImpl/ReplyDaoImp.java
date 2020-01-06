package com.xmut.blog.fightingLandlord.daoImpl;

import java.util.List;

import com.xmut.blog.fightingLandlord.dao.ReplyDao;
import com.xmut.blog.fightingLandlord.entity.Reply;
import com.xmut.blog.fightingLandlord.utils.DbConnection;

public class ReplyDaoImp implements ReplyDao {

	DbConnection util = new DbConnection();

	@Override
	public boolean addReply(Reply entity) {
		boolean flag = false;
		try {

			// thumbs-up无效
			flag = util.update("insert into reply(c_id,u_id,r_content,r_time)values(?,?,?,?)", entity.getCommentId(),
					entity.getUser().getUserId(), entity.getReplyContent(), entity.getReplyTime());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean deleteReply(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Reply> queryAllReply() {
		// TODO Auto-generated method stub
		return null;
	}

}
