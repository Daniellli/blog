package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xmut.blog.fightingLandlord.biz.UserBiz;
import com.xmut.blog.fightingLandlord.bizImp.UserBizImp;
import com.xmut.blog.fightingLandlord.entity.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		UserBiz userBiz = new UserBizImp();
		User currentUser = userBiz.checkLogin(username, pwd);
		PrintWriter out = response.getWriter();

		if (currentUser != null) {
			out.println("<script>alert('login successfully!')</script>");
			out.println("<script>window.location.href='http://localhost:8080/blog/main.jsp'</script>");

		} else {
			out.println("<script>alert('fail to login,please check password and account number!')</script>");
			out.println("<script>window.history.go(-1)</script>");
		}
	}
}
