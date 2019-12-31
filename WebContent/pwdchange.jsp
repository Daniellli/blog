<%@ page language="java" import="java.util.*,java.sql.*,javax.naming.*,javax.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>修改密码</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>留言管理系统</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
		
			<h2>修改密码</h2>
			<form action="savepwd.jsp" method="post">
			
				<input type="password" Name="pwd" placeholder="输入新密码"  id=pwd  required lay-verify="required|identity" autocomplete="off">
				<input type="password" Name="pwd1" placeholder="确认新密码"   id=pwd1  required lay-verify="required|identity" autocomplete="off">
			
		
			<div class="send-button w3layouts agileits">
			
					<input type="submit" value="保存" name="ok">
				</div></form>
	

				
		
			<div class="clear"></div>
		</div>
		
		<div class="register w3layouts agileits">
			<h2></h2>
			<img src="images/timg.jpg">
			<div class="send-button w3layouts agileits">
		
		
</div>

			<div class="clear"></div>
		</div>

		<div class="clear"></div>

	</div>

	


	<div class="footer w3layouts agileits">
		<p>Copyright &copy; More Templates</p>
	</div>
		

</body>
<!-- //Body -->

</html>