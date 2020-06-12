package com.xmut.blog.fightingLandlord.utils;

import java.util.Date;

public class Test {

	public static void main(String[] args) {
		Date dateU = new Date();
		java.sql.Date date = new java.sql.Date(dateU.getTime());

		int days = 0;

		// ����黹ʱ��
		String date_str = String.valueOf(date);
		String dd = date_str.substring(8, 10);
		String DD = date_str.substring(0, 8) + String.valueOf(Integer.parseInt(dd) + days);
		java.sql.Date backTime = java.sql.Date.valueOf(DD);
	}
}
