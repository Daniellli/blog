<%@ page language="java" import="java.util.Date,java.sql.*,com.jspsmart.upload.*,dbc.ConnDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'saveUpateBook.jsp' starting page</title>
    
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
  request.setCharacterEncoding("UTF-8");
  String num=request.getParameter("num");
   String username=request.getParameter("username");
   String title=request.getParameter("title");
  String liuyan=request.getParameter("liuyan");
  String Date=request.getParameter("Date");



   %>
   <%
  ConnDB conndb=new ConnDB();
  conndb.OpenConn();
 /*
 Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);//发送SQL语句给数据库管理系统
 String sql="insert into bookinfo(bookid,bookname,number,author,category,location,publishTime,description) values('"+bookid+"','"+bookname+"',"+booknumber+",'"+author+"',"+categoryid+",'"+locate+"','"+publishTime+"','"+description+"')";//定义插入SQL语句
 System.out.print(sql);
 int result=stmt.executeUpdate(sql);//执行SQL语句
 */
 String sql="update liuyan set num=?,username=?,title=?,liuyan=?,Date=? where num="+num;
PreparedStatement pstmt=conndb.createPStmt(sql);

 pstmt.setString(1,num);
 pstmt.setString(2,username);
  pstmt.setString(3,title);
 pstmt.setString(4,liuyan);
 pstmt.setString(5,Date);
 
 int result=conndb.pstmtUpdate();
 if(result!=0){ 
 response.sendRedirect("tgls/liuyangl/liuyangl.jsp");//执行插入成功跳转
 }else{
 response.sendRedirect("updatemassage.jsp");//执行插入失败跳转
 }
 %>  </body>
</html>

