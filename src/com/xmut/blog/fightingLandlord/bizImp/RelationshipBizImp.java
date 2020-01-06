package com.xmut.blog.fightingLandlord.bizImp;

import java.util.List;

import com.xmut.blog.fightingLandlord.biz.RelationshipBiz;
import com.xmut.blog.fightingLandlord.dao.RelationshipDao;
import com.xmut.blog.fightingLandlord.daoImpl.RelationshipDaoImp;
import com.xmut.blog.fightingLandlord.entity.Relationship;

public class RelationshipBizImp implements RelationshipBiz {

	RelationshipDao dao = new RelationshipDaoImp();

	@Override
	public boolean addRelationship(Relationship entity) {

		if (entity != null && entity.getLeftUserId() != null && entity.getRightUserId() != null) {
			return dao.addRelationship(entity);
		}
		return false;
	}

	@Override
	public boolean deleteRelationship(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateRelationship(Relationship entity) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Relationship> queryAllRelationship() {
		// TODO Auto-generated method stub
		return null;
	}

}
