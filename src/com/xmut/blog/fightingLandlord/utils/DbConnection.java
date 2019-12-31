package com.xmut.blog.fightingLandlord.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 通用连接数据库类实现
 * 
 * @author cf
 * @since 2019-12-30 14:18:51
 */
public class DbConnection {
	private static String url = "jdbc:mysql://localhost:3306/blog?useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT%2B8"; // ���ݿ��ַ
	private static String userName = "root"; // 数据库账号
	private static String passWord = "123456";// 数据库密码
	private static Connection con = null;
	private PreparedStatement ps;
	private ResultSet rs;

	public DbConnection() {

	}

	/**
	 * 用来获取数据库连接对象的方法
	 * 
	 * @return 连接对象
	 */
	public Connection getConnection() {
		// if (null == con) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");// 加载数据库驱动
			con = DriverManager.getConnection(url, userName, passWord);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// }
		return con;
	}

	/**
	 * 关闭连接
	 */
	public void closeAll() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (con != null) {
				con.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 增删改查通用方法
	 * 
	 * @param sql
	 *            要执行的sql语句
	 * @param objects
	 *            //需要设置的参数，可以0个或多个
	 * @return 增删改是否成功 true or false
	 */

	public boolean update(String sql, Object... objects) {

		boolean flag = false;
		con = getConnection();
		try {
			ps = con.prepareStatement(sql);
			// 设置参数
			if (objects != null) {
				for (int i = 0; i < objects.length; i++) {
					ps.setObject(i + 1, objects[i]);
				}
			}

			int j = ps.executeUpdate();
			// 如果有影响行说明增删改成功
			if (j > 0)
				flag = true;

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return flag;
	}

	public ResultSet query(String sql, Object... obj) {
		con = getConnection();

		try {
			ps = con.prepareStatement(sql);
			if (obj != null) {
				for (int i = 0; i < obj.length; i++) {
					ps.setObject(i + 1, obj[i]);
				}
			}
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 连接还不能关闭，还需要取出resultSet中的数据
		return rs;
	}

}