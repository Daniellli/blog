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
import com.xmut.blog.fightingLandlord.biz.RelationshipBiz;
import com.xmut.blog.fightingLandlord.bizImp.CommentBizImp;
import com.xmut.blog.fightingLandlord.bizImp.RelationshipBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.entity.Comment;
import com.xmut.blog.fightingLandlord.entity.Relationship;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class FollowServlet
 */
@WebServlet("/FollowServlet")
public class FollowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		RelationshipBiz relationship = new RelationshipBizImp();

		StringBuffer sb = new StringBuffer("");

		String followedUserId = request.getParameter("followedUserId");
		String mainUserId = request.getParameter("mainUserId");

		Relationship ship = new Relationship(Integer.parseInt(mainUserId), Integer.parseInt(followedUserId));

		response.setContentType("text/html;charset=utf-8");

		if (relationship.addRelationship(ship)) {// 添加成功
			// 更新当前的详情blog
			sb.append("[{\"flag\":1}]");// 关注成功的flag
		} else {
			sb.append("[{\"flag\":0}]");
		}

		PrintWriter out = response.getWriter();
		out.print(sb.toString());
		out.flush();
		out.close();

	}
}
