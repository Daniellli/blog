<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deleteBooks.jsp' starting page</title>
    
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
   int num=Integer.parseInt(request.getParameter("num"));
    Class.forName("org.gjt.mm.mysql.Driver");//加载驱动程序类型
 String url="jdbc:mysql://localhost:3306/liuyan?user=root&password=123&useUnicode=true&characterEncoding=UTF-8";//设置连接数据库参数
 Connection conn=DriverManager.getConnection(url);//创建数据库连接

 Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);//发送SQL语句给数据库管理系统
 String sql="delete from liuyan where num="+num;//定义插入SQL语句
 System.out.print(sql);
 int result=stmt.executeUpdate(sql);//执行SQL语句
 if(result!=0){ 
 response.sendRedirect("liuyangl.jsp");//执行插入成功跳转
 }else{
 out.println("<script type='text/javascript'>  alert('删除失败'); location.href='liuyangl.jsp'; </script>");//执行插入失败跳转
 }
    %>
  </body>
</html>