<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>用户登录</title>

<link href="${basePath}css/login.css" type="text/css" rel="stylesheet">
<script src="${basePath}tools/jquery-3.4.1.min.js"></script>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	list-style: none;
}

body {
	position: relative;
}
</style>
</head>
<body>
	<div class="login">
		<div class="message">Blog-Login</div>
		<div id="darkbannerwrap"></div>

		<form method="post" action="${basePath}LoginServlet"

			autocomplete="off">
			<input name="action" value="login" type="hidden"> <input
				name="username" placeholder="User Name" required type="text">
			<hr class="hr15">
			<input name="pwd" placeholder="Password" required type="password">
			<hr class="hr15">
			<input value="Cancel" style="width: 100%;" id="back" type="button"
				onclick="window.history.go(-1)">
			<hr class="hr15">
			<input value="Login" style="width: 100%;" type="submit">
			<!-- 此处type可以写button ,加上函数onClick="xx"  script写xx函数$("#form").submit();-->
			<hr class="hr20">
			<a href="${basePath}content/register.jsp">No account?Register
				promptly</a> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<br/>
				<a href="${basePath }content/forgetPassCheck.jsp">Forget Password</a>
		</form>
	</div>

</body>
</html>
