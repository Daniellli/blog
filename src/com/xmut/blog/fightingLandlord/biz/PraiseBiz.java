package com.xmut.blog.fightingLandlord.biz;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.Praise;

public interface PraiseBiz {
	// 点赞
	public boolean addPraise(Praise entity);

	// 删赞
	public boolean deletePraise(Integer id);

	// 查询所有赞
	public List<Praise> queryAllPraise();

	// 根据user id 找赞
	public Boolean findPraiseByUserIdAndBlogId(Integer userId, Integer blogId);
}
