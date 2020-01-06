package com.xmut.blog.fightingLandlord.dao;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.Reply;

/**
 * 
 * @author DixinFan
 *
 */
public interface ReplyDao {
	// add Reply
	public boolean addReply(Reply entity);

	// delete Reply
	public boolean deleteReply(Integer id);

	// query Reply
	public List<Reply> queryAllReply();


}
