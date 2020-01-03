package com.xmut.blog.fightingLandlord.bizImp;

import java.util.List;

import com.xmut.blog.fightingLandlord.biz.CommentBiz;
import com.xmut.blog.fightingLandlord.dao.CommentDao;
import com.xmut.blog.fightingLandlord.daoImpl.CommentDaoImp;
import com.xmut.blog.fightingLandlord.entity.Comment;

public class CommentBizImp implements CommentBiz {

	CommentDao dao = new CommentDaoImp();

	@Override
	public boolean addComment(Comment entity) {
		if (entity != null) {
			return dao.addComment(entity);
		} else
			return false;
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

}
