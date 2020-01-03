package com.xmut.blog.fightingLandlord.biz;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.Comment;

public interface CommentBiz {
	// add Comment
	public boolean addComment(Comment entity);

	// delete Comment
	public boolean deleteComment(Integer id);

	// hunting for all Comment
	public List<Comment> queryAllComment();
}
