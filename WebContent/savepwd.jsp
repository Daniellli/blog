<%@ page language="java" import="java.util.*,java.sql.*,com.jspsmart.upload.*,dbc.ConnDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户验证</title>
    
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
  
  
  String selectuser=session.getAttribute("username").toString();
  String pwd=request.getParameter("pwd");

  ConnDB conndb=new ConnDB();
 
conndb.OpenConn();
 String sql="update login set pwd=? where username="+selectuser;
 
 PreparedStatement pstmt=conndb.createPStmt(sql);
 pstmt.setString(1,pwd);
 
 int result=conndb.pstmtUpdate();
 if(result!=0){ 
 out.println("<script type='text/javascript'>  alert('修改密码成功，跳转登录页面'); location.href='login.jsp'; </script>");//执行插入成功跳转
 }else{
 out.println("<script type='text/javascript'>  alert('修改密码失败，请重新尝试！'); location.href='forget1.jsp'; </script>");//执行插入失败跳转
 }
 %>
  
  </body>
</html>
