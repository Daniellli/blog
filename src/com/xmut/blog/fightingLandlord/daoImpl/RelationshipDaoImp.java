package com.xmut.blog.fightingLandlord.daoImpl;

import java.util.List;

import com.xmut.blog.fightingLandlord.dao.RelationshipDao;
import com.xmut.blog.fightingLandlord.entity.Relationship;
import com.xmut.blog.fightingLandlord.utils.DbConnection;

/**
 * 
 * @author DixinFan
 *20200106
 */
public class RelationshipDaoImp implements RelationshipDao {

	DbConnection util = new DbConnection();

	@Override
	public boolean addRelationship(Relationship entity) {
		boolean flag = false;
		try {
			flag = util.update("insert into relationship(l_u_id,r_u_id)values(?,?)", entity.getLeftUserId(),
					entity.getRightUserId());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
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
