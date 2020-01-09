package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xmut.blog.fightingLandlord.dao.UserDao;
import com.xmut.blog.fightingLandlord.daoImpl.UserDaoImp;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class ForgetServlet
 */
@WebServlet("/ForgetServlet")
public class ForgetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";

		String username = request.getParameter("username");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		UserDao userDao = new UserDaoImp();
		User currentUser = userDao.findPassword(username, question, answer);
		response.setContentType("text/html;charset=utf-8");
		// HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		if (currentUser != null) {
			request.setAttribute("checkUser", currentUser);
			request.getRequestDispatcher("content/forgetPassModify.jsp").forward(request, response);
			// out.println("<script>window.location.href='" + basePath +
			// "content/forgetPassModify.jsp'</script>");
		} else
			out.println("<script type='text/javascript'>  alert('please check your answer is right or not!');"
					+ " history.go(-1); </script>");

	}
}
