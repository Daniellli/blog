package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class ChartServlet
 */
@WebServlet("/ChartServlet")
public class ChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		String method=request.getParameter("method");
		
		if(method.equals("receive")){
			
			ServletContext sc=this.getServletContext();
			
			HttpSession session=request.getSession();
			User user=(User)session.getAttribute("currentUser");
			
			String userName = user.getUserName();
			
			String amessage=(String) sc.getAttribute("message");
			sc.setAttribute("message", amessage+userName+"˵:"+request.getParameter("message")+"\r\n");
			response.sendRedirect("\r\n" + "Clientchart.jsp");
			
		}else if(method.equals("send")){
			ServletContext sc=this.getServletContext();
			
			String userName="管理员";
			
			String amessage=(String) sc.getAttribute("message");
			
			sc.setAttribute("message", amessage+userName+"˵:"+request.getParameter("message")+"\r\n");
			
			response.sendRedirect("Serverchart.jsp");
	
		}else if(method.equals("saveclient")){
			
			String content=request.getParameter("content");
			
			String outStr = new String(content.getBytes("iso-8859-1"),"UTF-8");

			request.setAttribute("content", outStr);
			
			request.getRequestDispatcher("Clientchart.jsp").forward(request, response);

		}else if(method.equals("saveserver")){
			String content=request.getParameter("content");
			
			String outStr = new String(content.getBytes("iso-8859-1"),"UTF-8");

			request.setAttribute("content", outStr);
			
			request.getRequestDispatcher("Serverchart.jsp").forward(request, response);

		}
	}

}
