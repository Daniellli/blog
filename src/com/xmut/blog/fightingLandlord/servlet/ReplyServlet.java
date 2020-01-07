package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.xmut.blog.fightingLandlord.biz.BlogBiz;
import com.xmut.blog.fightingLandlord.biz.ReplyBiz;
import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.bizImp.ReplyBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.entity.Comment;
import com.xmut.blog.fightingLandlord.entity.Reply;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class ReplyServlet
 */
@WebServlet("/ReplyServlet")
public class ReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		ReplyBiz reply = new ReplyBizImp();
		HttpSession session = request.getSession();

		String content = request.getParameter("content");
		String cId = request.getParameter("commentId");
		System.out.println(content);
		
		Reply newReply = new Reply(Integer.parseInt(cId), ((User) session.getAttribute("currentUser")), content,
				new Date());
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if (reply.addReply(newReply)) {
			Blog blog = (Blog) session.getAttribute("blogDetail");
			//找到评论 ，把更新的回复加上去
			List<Comment> comments = blog.getComments();
			for(int i = 0 ;i<comments.size();i++) {
				if(comments.get(i).getCommentId()==Integer.parseInt(cId)) {//找到
					comments.get(i).getReplys().add(newReply);// 将新评论加到session的blogDetail中,
				}
			}
			session.setAttribute("blogDetail", blog);
			Gson gson = new Gson();
			String json = gson.toJson(newReply);
			out.print(json);
			out.flush();
			out.close();
		}

	}
}
