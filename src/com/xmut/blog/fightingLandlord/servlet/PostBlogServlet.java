package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.entity.Category;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class PostBlogServlet
 */
@WebServlet("/PostBlogServlet")
public class PostBlogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";
		String title = request.getParameter("title");
		int category = Integer.parseInt(request.getParameter("category"));
		String content = request.getParameter("content");

		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
		
		Blog b = new Blog();
		b.setBlogContent(content);
		b.setBlogName(title);
		b.setCategory(new Category(category));
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("currentUser");
		b.setUser(user);
		b.setBlogThumbup(0);
		PrintWriter out = response.getWriter();
		if (new BlogBizImp().addBlog(b)) {
			out.print("<script>alert('post successfully')</script>");
<<<<<<< HEAD
			out.print("<script>window.location.href='" + basePath + "content/postBlog.jsp'</script>");
=======
			out.print("<script>window.location.href='${basePath }content/postBlog.jsp'</script>");
>>>>>>> 5911844bc64f219ea8a234ddf021e271762e0394
		} else {
			out.print("<script>alert('fail to post')</script>");
			out.print("<script>window.history.go(-1)</script>");
		}
	}
}
