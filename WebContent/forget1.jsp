<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>密码找回输入用户名</title>

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
		
			<h2>输入注册手机号</h2>
			<form action="forget2.jsp" method="post">
				<input type="text" name="phone" placeholder="phone number" required lay-verify="required|identity" autocomplete="off" >
	
			<ul class="tick w3layouts agileits">
				
			</ul>
			
			
			<div class="send-button w3layouts agileits">
			
					<input type="submit" value="下一步" name="mibao1">
				</div></form>
			
			<a href="login.jsp">返回登录</a>   
			<div class="social-icons w3layouts agileits">
			
				
				
			</div>
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