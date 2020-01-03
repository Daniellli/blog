package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.smartcardio.CommandAPDU;

import com.xmut.blog.fightingLandlord.biz.BlogBiz;
import com.xmut.blog.fightingLandlord.biz.UserBiz;
import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.bizImp.UserBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.entity.Comment;
import com.xmut.blog.fightingLandlord.entity.User;

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

		String bid = request.getParameter("bid");

		Blog blogDetail = biz.getBlogById(Integer.parseInt(bid));
		// PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		session.setAttribute("blogDetail", blogDetail);
		response.sendRedirect("http://localhost:8080/blog/content/singleBlog.jsp");
	}
}
