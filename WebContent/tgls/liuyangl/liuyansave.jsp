<%@ page language="java" import="java.util.Date,java.sql.*,com.jspsmart.upload.*" pageEncoding="UTF-8"%>
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
   <% //文件上传代码开始
   SmartUpload su =new SmartUpload();
  su.initialize(pageContext);
  su.setMaxFileSize(100000);
  su.setAllowedFilesList("jpg,JPG,gif,png");
  su.setDeniedFilesList("exe,bat,jsp,js,htm,html");
   su.upload();
     su.save("/upload");
     //文件上传代码结束
	%>
   <%
  request.setCharacterEncoding("UTF-8");
 
    String username=session.getAttribute("username").toString();
   String liuyan=su.getRequest().getParameter("liuyan");
  Date date=new Date();
    String Date=date.toLocaleString();
String title=su.getRequest().getParameter("title");
String photo="upload/"+su.getFiles().getFile(0).getFileName();

   
 Class.forName("org.gjt.mm.mysql.Driver");//加载驱动程序类型
 String url="jdbc:mysql://localhost:3306/liuyan?user=root&password=123&useUnicode=true&characterEncoding=UTF-8";//设置连接数据库参数
 Connection conn=DriverManager.getConnection(url);//创建数据库连接
 
 Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);//发送SQL语句给数据库管理系统
 /*String sql="insert into bookinfo(bookid,bookname,number,author,category,location,publishTime,description) values('"+bookid+"','"+bookname+"',"+booknumber+",'"+author+"',"+categoryid+",'"+locate+"','"+publishTime+"','"+description+"')";//定义插入SQL语句
 System.out.print(sql);
 int result=stmt.executeUpdate(sql);//执行SQL语句
 */
 String liuyansql="insert into liuyan(username,liuyan,Date,title,photo) values(?,?,?,?,?)";
 PreparedStatement pstmt=conn.prepareStatement(liuyansql);
 pstmt.setString(1,username);
 
 pstmt.setString(2,liuyan);
 pstmt.setString(3,Date);
 pstmt.setString(4,title);
 pstmt.setString(5,photo);

 
 int result=pstmt.executeUpdate();
 if(result!=0){ 
 %>
<jsp:forward page="liuyangl.jsp"></jsp:forward>
<%//执行插入成功跳转
 }else{
 %>
<jsp:forward page="liuyanadd.jsp"></jsp:forward>
<%//执行插入失败跳转
 }
 %>
  </body>
</html>
