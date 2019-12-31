<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
		<meta name="renderer" content="webkit">
		<!--国产浏览器高速模式-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="author" content="穷在闹市" />
		<!-- 作者 -->
		<meta name="revised" content="穷在闹市.v3, 2019/05/01" />
		<!-- 定义页面的最新版本 -->
		<meta name="description" content="网站简介" />
		<!-- 网站简介 -->
		<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
		<title>穷在闹市出品</title>

		<!-- 公共样式 开始 -->
		<link rel="stylesheet" type="text/css" href="../../css/base.css">
		<link rel="stylesheet" type="text/css" href="../../css/iconfont.css">
		<script type="text/javascript" src="../../framework/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="../../layui/css/layui.css">
		<script type="text/javascript" src="../../layui/layui.js"></script>
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="../../css/jquery.mCustomScrollbar.css">
		<script src="../../framework/jquery-ui-1.10.4.min.js"></script>
		<script src="../../framework/jquery.mousewheel.min.js"></script>
		<script src="../../framework/jquery.mCustomScrollbar.min.js"></script>
		<script src="../../framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->
		
		<style>
			.layui-form{
				margin-right: 30%;
			}
		</style>

	</head>

	<body>
	<%
    int id=Integer.parseInt(request.getParameter("id"));
			Class.forName("org.gjt.mm.mysql.Driver");
			String url = "jdbc:mysql://localhost:3306/liuyan?user=root&password=123&useUnicode=true&characterEncoding=UTF-8"; 
			Connection conn = DriverManager.getConnection(url);
			Statement stmt = conn.createStatement(
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_UPDATABLE);

	String sql = "select * from login where id=" + id;
	ResultSet rs = stmt.executeQuery(sql);
	if (rs.next()) {

   %>
		<div class="cBody">
			<form id="addForm" class="layui-form" action="">
				<div class="layui-form-item">
					<label class="layui-form-label">用户ID</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="ID"  class="layui-input" value="<%=rs.getInt("id") %>">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">用户名</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="username"  autocomplete="off" class="layui-input" value="<%=rs.getString("username") %>">
					</div>
				</div>
				
				
				
				<div class="layui-form-item">
					<label class="layui-form-label">邮箱</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="email"  class="layui-input" value="<%=rs.getString("email") %>">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">手机号码</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="phone" required lay-verify="required|phone" autocomplete="off" class="layui-input" value="<%=rs.getInt("phone") %>">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">登录密码</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="password" autocomplete="off" class="layui-input" value="<%=rs.getString("pwd") %>">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">密保问题</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="question" autocomplete="off" class="layui-input" value="<%=rs.getString("question") %>">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">密保答案</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="answer" class="layui-input" value="<%=rs.getString("answer") %>">
					</div>
				</div>
				
				
				
				
				
				
			
		

		</div>
		<%} %>
	</body>

</html>