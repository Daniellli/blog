package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xmut.blog.fightingLandlord.biz.UserBiz;
import com.xmut.blog.fightingLandlord.bizImp.UserBizImp;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class GetPersonalInfo
 */
@WebServlet("/GetPersonalInfo")
public class GetPersonalInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";

		UserBiz user = new UserBizImp();

		int userId = Integer.parseInt(request.getParameter("userId"));
		User userDetail = user.queryUserById(userId);
		HttpSession session = request.getSession();

		session.setAttribute("userDetail", userDetail);
		response.sendRedirect(basePath + "content/personalDetail.jsp");
	}
}
