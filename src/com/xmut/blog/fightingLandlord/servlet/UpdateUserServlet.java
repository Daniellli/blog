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
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		UserBiz user = new UserBizImp();

		String password = request.getParameter("password");
		int id = Integer.parseInt(request.getParameter("userid"));
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		int sex = Integer.parseInt(request.getParameter("sex"));
		String answer = request.getParameter("answer");
		String question = request.getParameter("question");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		User entity = new User();

		entity.setUserPwd(password);
		entity.setUserId(id);
		entity.setUserTelephone(phone);
		entity.setUserEmail(email);
		entity.setUserQuestion(question);
		entity.setUserAnswer(answer);
		entity.setUserSex(sex);
		entity.setUserAge(age);
		entity.setUserName(name);

		System.out.println("password :" + password);
		System.out.println("id :" + id);
		System.out.println("phone :" + phone);
		System.out.println("email :" + email);
		System.out.println("sex :" + sex);
		System.out.println("answer :" + answer);
		System.out.println("question :" + question);
		System.out.println("name :" + name);

		UserBiz userBiz = new UserBizImp();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if (user.updateUser(entity)) {
			request.getSession().setAttribute("currentUser", entity);
			out.println("<script>alert('update successfully!')</script>");
			out.println("<script>window.location.href='http://localhost:8080/blog/content/personal.jsp'</script>");
		} else {
			out.println("<script>alert('fail to update')</script>");
			out.println("<script>window.history.go(-1)</script>");
		}

	}
}
