package com.xmut.blog.fightingLandlord.dao;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.Comment;

public interface CommentDao {
	// add Comment
	public boolean addComment(Comment entity);

	// delete Comment
	public boolean deleteComment(Integer id);

	// hunting for all Comment
	public List<Comment> queryAllComment();
}
