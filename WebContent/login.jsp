<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

<title>用户登录</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="application/x-javascript">
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 







</script>
<!-- //Meta-Tags -->

<!-- Style -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>Blog</h1>
	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">

			<h2>登 录</h2>
			<form action="checklogin.jsp" method="post">
				<input type="text" Name="username" placeholder="用户名" required
					lay-verify="required|identity" autocomplete="off"> <input
					type="password" Name="pwd" placeholder="密码" required
					lay-verify="required|identity" autocomplete="off">
				<div class="send-button w3layouts agileits">
					<input type="submit" value="登 录" name="ok">
				</div>
			</form>
			<a href="forget1.jsp">忘记密码?</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

			<a href="gllogin.jsp">管理员登录</a>

			<div class="social-icons w3layouts agileits">

				<p>
					<a href="reg.jsp">- 注册 -</a>
				</p>

			</div>
			<div class="clear"></div>
		</div>
		<div class="register w3layouts agileits">
			<h2></h2>
			<img src="images/timg.jpg">
			<div class="send-button w3layouts agileits"></div>
			<div class="clear"></div>
		</div>

		<div class="clear"></div>

	</div>

</body>
<!-- //Body -->
</html>