package com.xmut.blog.fightingLandlord.bizImp;

import java.util.List;

import com.xmut.blog.fightingLandlord.biz.ReplyBiz;
import com.xmut.blog.fightingLandlord.dao.ReplyDao;
import com.xmut.blog.fightingLandlord.daoImpl.ReplyDaoImp;
import com.xmut.blog.fightingLandlord.entity.Reply;

public class ReplyBizImp implements ReplyBiz {

	ReplyDao dao = new ReplyDaoImp();

	@Override
	public boolean addReply(Reply entity) {

		if (entity != null) {
			return dao.addReply(entity);
		}

		return false;
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
