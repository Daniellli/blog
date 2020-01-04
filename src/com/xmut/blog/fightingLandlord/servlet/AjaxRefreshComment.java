package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.xmut.blog.fightingLandlord.biz.BlogBiz;
import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;

/**
 * Servlet implementation class AjaxRefreshComment
 */
@WebServlet("/AjaxRefreshComment")
public class AjaxRefreshComment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BlogBiz biz = new BlogBizImp();

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String bid = request.getParameter("bid");

		Blog blogDetail = biz.getBlogById(Integer.parseInt(bid));
		// PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		String json = gson.toJson(blogDetail.getComments());
		
		PrintWriter out = response.getWriter();
		out.print(json);
		
	}
}
