<%@ page language="java" import="java.util.*,java.sql.*,javax.naming.*,javax.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>核对密保问题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
    <%
    String username=request.getParameter("username");
String answer=request.getParameter("answer");
    
    Class.forName("org.gjt.mm.mysql.Driver");
			String url = "jdbc:mysql://localhost:3306/liuyan?user=root&password=123&useUnicode=true&characterEncoding=UTF-8";//����������ݿ����
			Connection conn = DriverManager.getConnection(url);
			Statement stmt = conn.createStatement(
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_UPDATABLE);
			String sql = "select * from login where username='"+username+"'  and answer='"+answer+"'";
			ResultSet result = stmt.executeQuery(sql);
    if(result.next()){
    
session.setAttribute("username",username);
%>
<jsp:forward page="pwdchange.jsp"></jsp:forward>
<%
} else{ 
out.println("<script type='text/javascript'>  alert('验证失败，请重新找回！'); location.href='forget1.jsp'; </script>");
} 
  %> 
  
  </body>
</html>

