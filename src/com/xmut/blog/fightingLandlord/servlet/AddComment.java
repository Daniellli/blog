package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.xmut.blog.fightingLandlord.biz.CommentBiz;
import com.xmut.blog.fightingLandlord.bizImp.CommentBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.entity.Comment;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class AddComment
 */
@WebServlet("/AddComment")
public class AddComment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		CommentBiz commentbiz = new CommentBizImp();
		// StringBuffer sb = new StringBuffer("");

		String blogId = request.getParameter("bId");
		String userId = request.getParameter("userId");
		String message = request.getParameter("message");

		Comment comment = new Comment(((User) session.getAttribute("currentUser")), Integer.parseInt(blogId), message,
				new Date(), 0);

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if (commentbiz.addComment(comment)) {// 添加成功
			// 更新当前的详情blog
			comment = commentbiz.queryCommentForId(comment);
			comment.setUser(((User) session.getAttribute("currentUser")));
			System.out.println(comment.getCommentContent());
			System.out.println("hello world");

			Blog blog = (Blog) session.getAttribute("blogDetail");
			blog.getComments().add(comment);
			blog.setBlogCommentNumber(blog.getBlogCommentNumber() + 1);
			Gson gson = new Gson();
			// String newCommentJson = gson.toJson(blog.getComments());// comment json
			String newCommentJson = gson.toJson(comment);
			session.setAttribute("blogDetail", blog);
			out.println(newCommentJson);// 输出
			out.flush();
			out.close();
		}
	}
}
