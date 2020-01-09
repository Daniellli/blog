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

/**
 * Servlet implementation class GetQuestion
 */
@WebServlet("/GetQuestion")
public class GetQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		UserBiz user = new UserBizImp();
		String name = request.getParameter("userName");
		String question = user.getQuestionByUserName(name);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("[{\"question\":\"" + question + "\"}]");
		out.flush();
		out.close();
	}
}
