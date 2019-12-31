<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Home</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/styleadd.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		  <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		 <meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!-- webfonts -->
		<link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Asap:400,700' rel='stylesheet' type='text/css'>
		<!-- webfonts -->
	</head>
	<body>
		<%
    int num=Integer.parseInt(request.getParameter("num"));
			Class.forName("org.gjt.mm.mysql.Driver");
			String url = "jdbc:mysql://localhost:3306/liuyan?user=root&password=123&useUnicode=true&characterEncoding=UTF-8"; 
			Connection conn = DriverManager.getConnection(url);
			Statement stmt = conn.createStatement(
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_UPDATABLE);

	String sql = "select * from liuyan where num=" + num;
	ResultSet rs = stmt.executeQuery(sql);
	if (rs.next()) {
	String title = rs.getString("title");
	String username = rs.getString("username");
	String Date = rs.getString("Date");
	String liuyan = rs.getString("liuyan");
   %>
			<!-- contact -->
			
		<FORM METHOD=POST ACTION="saveupdatemsg.jsp?num=<%=num%>">
			<div id="contact" class="contact">
				<div class="container">
					<!-- head-section -->
					<div class="head-section text-center">
						<h2>修改留言</h2>
						<span> </span>
					</div>
					<!-- /head-section -->
					<!-- contact-grids -->
					<div class="contact-grids">
						<div class="col-md-4 contact-left">
							
							<h4>标题：<font color=black><INPUT TYPE="text" NAME="title"
							value="<%=rs.getString("title")%>"></font></h4>
							
							<ul class="address">
							<li>留言编号：<font color=black><INPUT TYPE="text" NAME="num"
							value="<%=rs.getInt("num")%>"> </font></li>
								<li>发布用户：<font color=black><INPUT TYPE="text" NAME="username"
							value="<%=rs.getString("username")%>"> </font></li>
								<li> 发布时间：<font color=black><INPUT TYPE="text" NAME="Date"
							value="<%=rs.getString("Date")%>"></font></li>
								
							</ul>
							
						</div>
						<div class="col-md-8 contact-right">
							
								
								<div class="subject-box">
									<textarea  NAME="liuyan">
							<%=rs.getString("liuyan")%></textarea>
									<%String photo=rs.getString("photo");
					%>
					<a href="download.jsp?downloadid=<%=rs.getInt("num") %>"><img src="<%=photo %>" width="100" height="100"/></a>
								</div>
							
							
						
						<input type="submit" value="保存" />
						</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!-- contact-grids -->
				</div>
			
			</FORM>
			<% }%>
			<!-- contact -->
			<div class="footer">
				<div class="container"> 
					
					<div class="footer-right">
						
						
									<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
					</div>
				</div>
			</div>
			<!-- footer -->
		<!-- /container -->