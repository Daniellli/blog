package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;

/**
 * Servlet implementation class GetAllBlog
 */
@WebServlet("/GetAllBlog")
public class GetAllBlog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
<<<<<<< HEAD
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";
=======
		
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
		
>>>>>>> 5911844bc64f219ea8a234ddf021e271762e0394
		List<Blog> list = new BlogBizImp().getAllBlog();

		HttpSession session = request.getSession();
		session.setAttribute("blog", list);
<<<<<<< HEAD
		response.sendRedirect(basePath + "content/showAll.jsp");
=======
		response.sendRedirect(basePath+"content/showAll.jsp");
>>>>>>> 5911844bc64f219ea8a234ddf021e271762e0394

	}
}
