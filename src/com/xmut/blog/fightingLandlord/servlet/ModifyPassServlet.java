package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xmut.blog.fightingLandlord.bizImp.UserBizImp;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class ModifyPassServlet
 */
@WebServlet("/ModifyPassServlet")
public class ModifyPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";

		HttpSession session = request.getSession();

		String password = request.getParameter("password");
		int uid = Integer.parseInt(request.getParameter("uid"));
		System.out.println(password);
		System.out.println(uid);

		User user = new User(uid, password);
		response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();
		String res = null;
		if (new UserBizImp().modifyUser(user))
			res = "[{\"flag\":1}]";
		else
			res = "[{\"flag\":0}]";
		out.print(res);
		out.flush();
		out.close();
	}
}
