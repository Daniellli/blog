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

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String telephone = request.getParameter("phone");

		User user = new User();
		user.setUserAnswer(answer);
		user.setUserEmail(email);
		user.setUserName(username);
		user.setUserPwd(pwd);
		user.setUserQuestion(question);
		user.setUserTelephone(telephone);
		UserBiz userBiz = new UserBizImp();
		PrintWriter out = response.getWriter();
		if (userBiz.register(user)) {
			out.println("<script>alert('register successfully!')</script>");
			out.println("<script>window.location.href='http://localhost:8080/blog/login.jsp'</script>");
		}else {
			out.println("<script>alert('fail to register!')</script>");
			out.println("<script>window.history.go(-1)</script>");
		}

		// System.out.println(question + " " + answer + " " + username + " " + email + "
		// " + pwd + " " + telephone);

		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
