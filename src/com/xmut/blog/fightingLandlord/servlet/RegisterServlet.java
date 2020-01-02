package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String telephone = request.getParameter("phoneNumber");
		String username = request.getParameter("userName");
		String pwd = request.getParameter("password");
		String email = request.getParameter("email");
		String age = request.getParameter("age");
		String sex = request.getParameter("sex");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");

		User user = new User();
		user.setUserTelephone(telephone);
		user.setUserName(username);
		user.setUserPwd(pwd);
		user.setUserEmail(email);
		user.setUserEmail(age);
		user.setUserEmail(sex);
		user.setUserQuestion(question);
		user.setUserAnswer(answer);
		user.setUserType(0);
		UserBiz userBiz = new UserBizImp();
		PrintWriter out = response.getWriter();

		if (userBiz.register(user)) {
		
			out.println("<script>alert('register successfully!')</script>");
			out.println("<script>window.location.href='http://localhost:8080/blog/content/login.jsp'</script>");
		} else {
			out.println("<script>alert('fail to register!')</script>");
			out.println("<script>window.history.go(-1)</script>");
		}

	}

}
