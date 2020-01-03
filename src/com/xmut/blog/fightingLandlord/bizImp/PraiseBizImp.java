package com.xmut.blog.fightingLandlord.bizImp;

import java.util.List;

import com.xmut.blog.fightingLandlord.biz.PraiseBiz;
import com.xmut.blog.fightingLandlord.dao.PraiseDao;
import com.xmut.blog.fightingLandlord.daoImpl.PraiseDaoImp;
import com.xmut.blog.fightingLandlord.entity.Praise;

public class PraiseBizImp implements PraiseBiz {

	PraiseDao dao = new PraiseDaoImp();

	@Override
	public boolean addPraise(Praise entity) {
		boolean flag=false;
		if(entity!=null) {
			flag =dao.addPraise(entity);
		}
		return flag;
	}

	@Override
	public boolean deletePraise(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Praise> queryAllPraise() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @return true or false 赞过返回true otherwise false
	 */
	@Override
	public Boolean findPraiseByUserIdAndBlogId(Integer userId, Integer blogId) {

		if (userId != null && blogId != null) {
			return dao.findPraiseByUserIdAndBlogId(userId, blogId);
		}else {
			return false;
		}

	}

}
