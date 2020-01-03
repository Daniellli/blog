package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xmut.blog.fightingLandlord.biz.PraiseBiz;
import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.bizImp.PraiseBizImp;
import com.xmut.blog.fightingLandlord.entity.Praise;

/**
 * Servlet implementation class RecivePraiseServlet
 */
@WebServlet("/RecivePraiseServlet")
public class RecivePraiseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuffer sb = new StringBuffer("");
		// PraiseService praises = new PraiseServiceImpl();
		// ArticleService ars = new ArticleServiceImpl();
		// CommentService cms = new CommentServiceImpl();
		PraiseBiz praise = new PraiseBizImp();
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("anthorid");// 点赞用户的id
		String articleId = request.getParameter("articleid");// 文章id
		String commentId = request.getParameter("commentid");// 评论id
		String dataType = request.getParameter("dataType");// 传输数据类型
		String sendType = request.getParameter("sendType");// 发送类型
		if ("json".equals(dataType)) {
			if (articleId != null && !articleId.equals("0")) {
				// 查找是否有对文章点赞记录
				if (praise.findPraiseByUserIdAndBlogId(Integer.parseInt(userId), Integer.parseInt(articleId))) // 返回true表示点赞过
				{
					sb.append("{");
					sb.append("\"praiseflag\":1");
					sb.append("}");
				} else {
					Praise p = new Praise();
					p.setBlogId(Integer.parseInt(articleId));
					p.setUserId(Integer.parseInt(userId));
					p.setPraiseTime(new Date());
					new BlogBizImp().thumbsUp(Integer.parseInt(articleId));// blog表的赞数加1
					praise.addPraise(p);//新增点赞 信息
					sb.append("{");
					sb.append("\"praiseflag\":0");
					sb.append("}");
				}
			}
			// if (commentId != null && !commentId.equals("0")) {
			// // 查找是否有对评论点赞记录
			// Praise pr = praises.findCommentPraise(Integer.parseInt(commentId), userId);
			// if (pr != null) {
			// sb.append("{");
			// sb.append("\"praiseflag\":1");
			// sb.append("}");
			// } else {
			// cms.addCommentNum(Integer.parseInt(commentId));
			// praises.addCommentPraise(Integer.parseInt(commentId), userId);
			// sb.append("{");
			// sb.append("\"praiseflag\":0");
			// sb.append("}");
			// }
			// }
			response.setContentType("text/html;charset=utf-8");
		}
		PrintWriter out = response.getWriter();
		out.println(sb.toString());//输出
		out.flush();
		out.close();
	}

}
