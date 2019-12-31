package com.xmut.blog.ddz.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * 连接数据库
 * 
 * @author cf
 * @since 2019-12-30 14:18:51
 */
public class Dbconnect {
	private static String url = "jdbc:mysql://localhost:3306/JspServlet"; // 数据库地址
	private static String userName = "root"; // 数据库用户名
    private static String passWord = "123";//数据库密码
	private static Connection conn = null;
 
	private Dbconnect() {
 
	}
 
	public static Connection getConnection() {
		if (null == conn) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url, userName, passWord);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return conn;
	}
 
	public static void main(String[] args) { // 测试数据库是否连通
		System.err.println(getConnection());
	}
}