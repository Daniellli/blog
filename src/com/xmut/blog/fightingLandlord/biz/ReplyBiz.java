package com.xmut.blog.fightingLandlord.biz;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.Reply;

public interface ReplyBiz {
	// add Reply
	public boolean addReply(Reply entity);

	// delete Reply
	public boolean deleteReply(Integer id);

	// query Reply
	public List<Reply> queryAllReply();

}
