package com.xmut.blog.fightingLandlord.dao;

import java.util.List;

import com.xmut.blog.fightingLandlord.entity.Relationship;

/**
 * 
 * 
 * @author DixinFan
 *
 *
 */

public interface RelationshipDao {

	// 发表Relationship
	public boolean addRelationship(Relationship entity);

	// 删除Relationship
	public boolean deleteRelationship(Integer id);

	// 修改Relationship
	public boolean updateRelationship(Relationship entity);

	// 查询所有Relationship
	public List<Relationship> queryAllRelationship();

}
