package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xmut.blog.fightingLandlord.biz.BlogBiz;
import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;

/**
 * Servlet implementation class GetBlogDetail
 */
@WebServlet("/GetBlogDetail")
public class GetBlogDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BlogBiz biz = new BlogBizImp();

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
<<<<<<< HEAD
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";
=======

		
>>>>>>> 5911844bc64f219ea8a234ddf021e271762e0394
		String bid = request.getParameter("bid");

		
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
		
		
		Blog blogDetail = biz.getBlogById(Integer.parseInt(bid));
		HttpSession session = request.getSession();
		session.setAttribute("blogDetail", blogDetail);
<<<<<<< HEAD
		response.sendRedirect(basePath + "content/singleBlog.jsp");
=======
		response.sendRedirect(basePath+"content/singleBlog.jsp");
>>>>>>> 5911844bc64f219ea8a234ddf021e271762e0394
	}
}
