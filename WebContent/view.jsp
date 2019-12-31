<%@ page language="java" import="java.util.*,java.sql.*,dbc.ConnDB" pageEncoding="UTF-8"%>>
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
   %>
			<!-- contact -->
			<div id="contact" class="contact">
				<div class="container">
					<!-- head-section -->
					<div class="head-section text-center">
						<h2>留言详情</h2>
						<span> </span>
					</div>
					<!-- /head-section -->
					<!-- contact-grids -->
					<div class="contact-grids">
						<div class="col-md-4 contact-left">
							
							<h4>标题：<%=rs.getString("title") %></h4>
							
							<ul class="address">
								<li>发布用户：<%=rs.getString("username") %> </li>
								<li> 发布时间：<%=rs.getString("Date") %></li>
								
							</ul>
							
						</div>
						<div class="col-md-8 contact-right">
							<form>
								
								<div class="subject-box">
									<textarea><%=rs.getString("liuyan") %></textarea>
									<%String photo=rs.getString("photo");
					%>
					<a href="download.jsp?downloadnum=<%=rs.getInt("num") %>"><img src="<%=photo %>" width="100" height="100"/></a>
								</div>
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							</form>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!-- contact-grids -->
				</div>
			</div>
			<!-- contact -->
			<!-- footer -->
			<div class="footer">
				<div class="container"> 	<div class="footer-right">
						<p><a href="main.jsp" class="scroll">返回主页<span> </span></a></p>
						
									<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
					</div>
										<div class="footer-left">
						<div class="contact-grids">
						<div class="col-md-4 contact-left">
							
						</div>
						<div class="col-md-8 contact-right">
								
						<div class="clearfix"> </div>
					</div>
					</div>
					<div class="footer-right">
					
					<div class="foot-mid">
					<div class="visitors">
					</div>
						<div class="foot-bottom">
    	 <p>Copyright 2019 Design by <a href="#">Hongsijie</a></p>
    </div>
				</div>
			</div>
			</div>
			</div>
			</div><%} %>
			<!-- footer -->
			
		<!-- /container -->
	
	</body>
</html>

