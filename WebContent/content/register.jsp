<%--
  Created by IntelliJ IDEA.
  User: 895311923
  Date: 2019/4/21
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="../css/uGlobal.css" />
<link rel="stylesheet" type="text/css" href="../css/uRegiest.css" />

<script src="../tools/jquery-3.4.1.min.js"></script>
<script src="../js/cxregister.js"></script>

<style>
body {
	background: url(../img/header-bg.jpg) no-repeat center;
	background-size: cover;
}

.g_register .g_r_style span.pwderror {
	/* background: url(../img/ver_error.png) no-repeat center; */
	
}
</style>
</head>
<body>

	<!--用户注册-->
	<form id="form" name="form" action="../RegisterServlet" method="post"
		autocomplete="off" enctype="multipart/form-data">
		<div class="g_register posCenter" style="display: block;">
			<div class="g_r_title">用户注册</div>
			<!-- 	<div>
				<div style="width: 50%; float: left;">头像</div>
				<div style="width: 50%; float: left;">
					<input type="file" name="portraits" class="form-control">
				</div>
			</div> -->
			<div class="g_r_form">
				<p class="g_r_tel">
					<input class="g_tel" readonly type="tele" placeholder="手机号"
						onblur="verifyPhone(this);" onfocus="verifyPhoneFocus(this);"
						id="phone" name="phoneNumber" autocomplete="off" /> <span></span>
				</p>
				<p class="g_v_err" id="error_phone"></p>
				<p class="g_r_name mt30">
					<input class="g_tel" type="text" placeholder="姓名" id="realname"
						name="userName" onblur="verifyRealnameBlur(this);"
						onfocus="verifyRealnameFocus(this);" /> <span class=""></span>
				</p>
				<p class="g_v_err" id="error_realname"></p>
				<p class="g_r_pass mt30">
					<input class="g_tel" type="password" maxlength="16"
						placeholder="密码" id="password" name="password"
						onkeyup="verifyPassword(this);" onblur="verifyPwdBlur(this);"
						onfocus="verifyPwdFocus(this);" /> <span class=""></span> <em
						onclick="changeType(this);" class=""></em>
				</p>
				<ul class="g_pass_style" style="display: none;" id="pwdtip">
					<li class="g_r_style" id="pwdli1"><span class="g_span_pass"
						id="span1"></span>不能包含空格</li>
					<li class="g_r_style" id="pwdli2"><span class="g_span_nopass"
						id="span2"></span>长度为8-16个字符</li>
					<li class="g_r_style" id="pwdli3"><span class="g_span_nopass"
						id="span3"></span>必须包含字母、数字、符号中至少两种</li>
				</ul>

				<p class="g_r_name mt30">
					<input class="g_tel" type="email" placeholder="邮箱" name="email"
						required="required" />
				</p>

				<p class="g_r_name mt30">
					<input class="g_tel" type="number" placeholder="年龄" name="age"
						required="required" />
				</p>

				<div
					style="height: 50px; margin-top: 10px; font-size: 20px; color: #333333; text-align: center;">
					<input class="radio" style="height: 30px; width: 30px;"
						type="radio" name="sex" value="1" checked />男 <input
						class="radio" type="radio" style="height: 30px; width: 30px;"
						name="sex" value="0" /> 女
				</div>

				<p class="g_r_name mt30">
					<input class="g_tel" type="text" placeholder="密保问题" name="question"
						required="required" />

				</p>
				<p class="g_r_name mt30">
					<input class="g_tel" type="text" placeholder="密保答案" name="answer"
						required="required" />
				</p>



				<p class="g_submit mt40" onclick="backZhuye();"
					style="cursor: pointer;">取 消</p>
				<p class="g_submit mt40" onclick="register();"
					style="cursor: pointer;">注 册</p>
				<%--<a href="/">返回主页</a>--%>
			</div>
		</div>
		<!--登录跳转-->


	</form>
</body>
</html>
