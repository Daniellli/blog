package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.xmut.blog.fightingLandlord.biz.BlogBiz;
import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;

/**
 * Servlet implementation class GetBlogByCategoryId
 */
@WebServlet("/GetBlogByCategoryId")
public class GetBlogByCategoryId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		BlogBiz blog = new BlogBizImp();

		int cid = Integer.parseInt(request.getParameter("cid"));

		List<Blog> blogs = blog.findBlogByCategoryId(cid);
		String json = null;
		if (blogs != null) {
			Gson gson = new Gson();
			json = gson.toJson(blogs);
		}

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();

	}
}
