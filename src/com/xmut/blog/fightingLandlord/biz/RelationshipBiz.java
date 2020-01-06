package com.xmut.blog.fightingLandlord.biz;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.Relationship;

/**
 * 
 * 20200106
 * @author DixinFan
 *
 */
public interface RelationshipBiz {

	// 发表Relationship
	public boolean addRelationship(Relationship entity);

	// 删除Relationship
	public boolean deleteRelationship(Integer id);

	// 修改Relationship
	public boolean updateRelationship(Relationship entity);

	// 查询所有Relationship
	public List<Relationship> queryAllRelationship();
}
