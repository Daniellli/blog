package com.xmut.blog.fightingLandlord.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.xmut.blog.fightingLandlord.dao.PraiseDao;
import com.xmut.blog.fightingLandlord.entity.Praise;
import com.xmut.blog.fightingLandlord.entity.User;
/**
 * 
 * @author DixinFan
 *
 */
import com.xmut.blog.fightingLandlord.utils.DbConnection;

public class PraiseDaoImp implements PraiseDao {

	DbConnection util = new DbConnection();

	@Override
	public boolean addPraise(Praise entity) {
		boolean flag = false;
		try {
			flag = util.update("insert into praise(p_id,u_id,b_id,c_id,p_time)values(?,?,?,?,?)",
					entity.getPraiseId(), entity.getUserId(), entity.getBlogId(), entity.getCommentId(),
					entity.getPraiseTime());
		} catch (Exception ex) {
			ex.printStackTrace();
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
	 * 通过id查找parise ,判断用户是否点赞过
	 * 
	 * @param userId
	 *            ,blogId
	 * @return true or false 找到返回true
	 * @author Daniel
	 * @since 2019年12月31日 下午2:13:18
	 */

	@Override
	public Boolean findPraiseByUserIdAndBlogId(Integer userId, Integer blogId) {
		Boolean p = false;
		try {
			ResultSet res = util.query("select * from Praise where u_id = ? and b_id = ?", userId, blogId);
			if (res.next()) {
				p = true;
			}
			util.closeAll();// 关闭连接
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

}
