package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xmut.blog.fightingLandlord.bizImp.CategoryBizImp;
import com.xmut.blog.fightingLandlord.entity.Category;

@WebServlet("/NewCategoryServlet")
public class NewCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";

		String name = request.getParameter("name");

		Category ca = new Category();
		ca.setcName(name);
		PrintWriter out = response.getWriter();
		if (new CategoryBizImp().addCategory(ca)) {
			out.print("<script>alert('add successfully ')</script>");
			out.print("<script>window.location.href= '" + basePath + "content/newCategory.jsp'</script>");
		} else {
			out.print("<script>alert('fail to add ')</script>");
			out.print("<script>window.history.go(-1)</script>");
		}

	}
}
