<%--
  Created by IntelliJ IDEA.
  User: 895311923
  Date: 2019/4/25
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
	String msg = (String) request.getSession().getAttribute("msg");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>用户登录</title>

<link href="../css/login.css" type="text/css" rel="stylesheet">
<script src="../tools/jquery-3.4.1.min.js"></script>

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
		<div class="message">宁大生活助手-用户登录</div>
		<div id="darkbannerwrap"></div>

		<form method="post" action="http://localhost:8080/blog/LoginServlet"
			autocomplete="off">
			<input name="action" value="login" type="hidden"> 
			<input
				name="username" placeholder="登录用户名" required type="text">
			<hr class="hr15">
			<input name="pwd" placeholder="密码" required type="password">
			<hr class="hr15">
			<input value="取消" style="width: 100%;" id="back" type="button">
			<hr class="hr15">
			<input value="登录" style="width: 100%;" type="submit">
			<!-- 此处type可以写button ,加上函数onClick="xx"  script写xx函数$("#form").submit();-->
			<hr class="hr20">
			<a href="register.jsp">无账号?立即注册</a>
			<!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
		</form>
	</div>
	<script type="text/javascript">
    var msge = "<%=msg%>"
		document.getElementById("back").addEventListener("click", function(ev) {
			window.location.href = "../index.jsp";//方便清空servlet传过来的值http://localhost/logout
		})
		if (msge != "null") {
			alert(msge);
		}
	</script>
</body>
</html>
