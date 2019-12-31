<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		
		<link rel="stylesheet" type="text/css" href="../../layui/css/layui.css">
		
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="../../css/jquery.mCustomScrollbar.css">
	

		<!-- 公共样式 结束 -->
		
		<style>
			.layui-form{
				margin-right: 30%;
			}
		</style>

	</head>

	<body>
		<form id="addForm" class="layui-form" action="usersave.jsp"  method="post">
		<div class="cBody">
			
				<div class="layui-form-item">
					<label class="layui-form-label">用户名</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="username"   required lay-verify="required|identity" autocomplete="off" class="layui-input">
					</div>
			
				
					</div>
					<div class="layui-form-item">
					<label class="layui-form-label">邮箱</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="email"  class="layui-input">
					</div>
				</div>
				
					</div>
					<div class="layui-form-item">
					<label class="layui-form-label">联系方式</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="phone"  required lay-verify="required|identity" autocomplete="off" class="layui-input">
					</div>
				</div>
				
				
					<div class="layui-form-item">
					<label class="layui-form-label">登录密码</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="pwd" required lay-verify="required|identity" autocomplete="off" class="layui-input">
					</div>
				</div>
				
					
					<div class="layui-form-item">
					<label class="layui-form-label">密保问题</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="question"  required lay-verify="required|identity" autocomplete="off" class="layui-input">
					</div>
					
						</div>
					<div class="layui-form-item">
					<label class="layui-form-label">密保答案</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="answer"  required lay-verify="required|identity" autocomplete="off" class="layui-input">
					</div>
				</div>
				
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit lay-filter="submitBut">立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
		
			
		

			</form>
	</body>

</html>