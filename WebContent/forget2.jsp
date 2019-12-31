<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>密保找回</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		

	<!-- Style --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body>
<FORM METHOD=POST ACTION="checkmb.jsp" > 


	<h1>密码找回</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
		
			<h2>密保问题验证</h2>
			<font color=white>
						
				<input type="text" Name="answer" placeholder="你的答案是" required lay-verify="required|identity" autocomplete="off">
			
	
			<input type="text" Name="username" placeholder="用户名确认" required lay-verify="required|identity" autocomplete="off">
			
			
			</font>
			
			<div class="send-button w3layouts agileits">
			
					<input type="submit" value="提交" name="mibao">
				</div>
			<div class="social-icons w3layouts agileits">
				<p><a href="forget1.jsp">- 上一步  -</a></p>
				
			</div>
			
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
</FORM>

</body>
<!-- //Body -->

</html>