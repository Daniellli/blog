<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="${basePath }img/fav.png">
<!-- Author Meta -->
<meta name="author" content="colorlib">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>Blogger</title>
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<!--
            CSS
            ============================================= -->
<link rel="stylesheet" href="${basePath }css/linearicons.css">
<link rel="stylesheet" href="${basePath }css/font-awesome.min.css">
<link rel="stylesheet" href="${basePath }css/bootstrap.css">
<link rel="stylesheet" href="${basePath }css/owl.carousel.css">
<link rel="stylesheet" href="${basePath }css/main.css">
</head>
<body>

	<!-- Start Header Area -->
	<header class="default-header"> <nav
		class="navbar navbar-expand-lg navbar-light">
	<div class="container">
		<a class="navbar-brand" href="${basePath }index.jsp"> <img
			src="${basePath }img/logo.png" alt="">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div
			class="collapse navbar-collapse justify-content-end align-items-center"
			id="navbarSupportedContent">
			<ul class="navbar-nav scrollable-menu">
				<li><a href="javascript:window.history.go(-1)">Back</a></li>
			</ul>
		</div>
	</div>
	</nav> </header>
	<!-- End Header Area -->

	<!-- Start top-section Area -->
	<section class="top-section-area section-gap">
	<div class="container">
		<div class="row justify-content-between align-items-center d-flex">
			<div class="col-lg-8 top-left">
				<h1 class="text-white mb-20">&nbsp;&nbsp;找回密码</h1>
				<p>
					&nbsp;&nbsp;&nbsp;当您忘记密码时，系统会向您提供重新设置密码的途径。如果希望实时接收帐号风险提醒、开通更多安全保护。
				</p>
			</div>
		</div>
	</div>
	</section>
	<!-- End top-section Area -->

	<!-- 正文开始 -->

	<table align="center" background="images/white.jpg" width="788"
		height="727">
		<tr>
			<td>
				<div class="container">
					<div class="row">
						<main class="post type-post col-md-10 col-md-offset-1 sidebar">
						<!-- start tag cloud widget -->
						<div class="widget news">
							<header class="entry-head">
							<h2 class="title"></h2>
							<!-- <div class="meta">
							<p>
								当您忘记密码时，系统会向您提供重新设置密码的途径。如果希望实时接收帐号风险提醒、开通更多安全保护。
							</p> -->
						</div>
						</header>
			</td>
		</tr>
		<tr>
			<td>
				<div class="content community">

					<div class="entry-content">
						<input type="hidden" id="step" value="1" />
						<form action="http://localhost:8080/blog/ForgetServlet"
							method="post" class="post-wrapper pt-100">

							<p>
							<h3>账号核实</h3>
							<h1>&nbsp;</h1>
							<h4
								class="col-md-12 text-danger text-center text-padding-10px text-verif-tip"
								id="verifTip0">&nbsp;</h4>
							<div class="col-md-12 col-sm-12">
								<div class="form-group">
									<label for="" class="col-sm-3 control-label"> <span
										style="color: red;">*</span>用户名
									</label>
									<div class="col-md-8">
										<input id="username" name="username" type="text"
											class="required form-control" placeholder="请输入有效的账号..." />
									</div>
								</div>

								<h1>&nbsp;</h1>

								<div class="col-md-12 col-sm-12">
									<div class="form-group">
										<label for="" class="col-sm-3 control-label"> <span
											style="color: red;">*</span>密保问题
										</label>

										<div class="col-md-8">
											<input id="question" name="question" type="text"
												class="required form-control" readonly />
										</div>
									</div>
								</div>

								<h1>&nbsp;</h1>
								<div class="col-md-12 col-sm-12">
									<div class="form-group">
										<label for="" class="col-sm-3 control-label"> <span
											style="color: red;">*</span>密保答案
										</label>
										<div class="col-md-8">
											<input id="answer" name="answer" type="text"
												class="required form-control" />
										</div>
									</div>
								</div>
			</td>
		</tr>
		<tr>
			<td>


				<h1>&nbsp;</h1>
				<h1>&nbsp;</h1>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">提交</button>&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;
				<button type="reset">清空</button> <BR>
				<h1>&nbsp;</h1>
				<h1>&nbsp;</h1>
				<h1>&nbsp;</h1>
			</td>
		</tr>



		</form>

	</table>



	<table width="100%" height="28">
		<!-- 正文结束 -->

		<!-- start footer Area -->
		<footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-12">
					<div class="single-footer-widget">
						<h6>Top Products</h6>
						<ul class="footer-nav">
							<li><a href="#">Managed Website</a></li>
							<li><a href="#">Manage Reputation</a></li>
							<li><a href="#">Power Tools</a></li>
							<li><a href="#">Marketing Service</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6  col-md-12">
					<div class="single-footer-widget newsletter">
						<h6>Newsletter</h6>
						<p>You can trust us. we only send promo offers, not a single
							spam.</p>
						<div id="mc_embed_signup">
							<form target="_blank" novalidate="true"
								action="#/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="form-inline">

								<div class="form-group row" style="width: 100%">
									<div class="col-lg-8 col-md-12">
										<input name="EMAIL" placeholder="Enter Email"
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Enter Email '" required=""
											type="email">
										<div style="position: absolute; left: -5000px;">
											<input name="b_36c4fd991d266f23781ded980_aefe40901a"
												tabindex="-1" value="" type="text">
										</div>
									</div>

									<div class="col-lg-4 col-md-12">
										<button class="nw-btn primary-btn">
											Subscribe<span class="lnr lnr-arrow-right"></span>
										</button>
									</div>
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-12">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Instragram Feed</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="${basePath }img/i1.jpg" alt=""></li>
							<li><img src="${basePath }img/i2.jpg" alt=""></li>
							<li><img src="${basePath }img/i3.jpg" alt=""></li>
							<li><img src="${basePath }img/i4.jpg" alt=""></li>
							<li><img src="${basePath }img/i5.jpg" alt=""></li>
							<li><img src="${basePath }img/i6.jpg" alt=""></li>
							<li><img src="${basePath }img/i7.jpg" alt=""></li>
							<li><img src="${basePath }img/i8.jpg" alt=""></li>

						</ul>
					</div>
				</div>
			</div>
			<div class="row footer-bottom d-flex justify-content-between">
				<div class="col-lg-4 col-sm-12 footer-social">
					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
		</footer>
		<!-- End footer Area -->
		<script src="${basePath }js/vendor/jquery-2.2.4.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
			integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
			crossorigin="anonymous"></script>
		<script src="${basePath }js/vendor/bootstrap.min.js"></script>
		<script src="${basePath }js/jquery.ajaxchimp.min.js"></script>
		<script src="${basePath }js/parallax.min.js"></script>
		<script src="${basePath }js/owl.carousel.min.js"></script>
		<script src="${basePath }js/jquery.magnific-popup.min.js"></script>
		<script src="${basePath }js/jquery.sticky.js"></script>
		<script src="${basePath }js/main.js"></script>

		<script>
			$(document).ready(function() {
				$('#username').on('blur', function() {
					var userName = $("#username").val()
					$.ajax({
						type : 'get',
						datatype : 'json',
						url : '${basePath}GetQuestion?userName=' + userName,
						success : function(data) {
							data = JSON.parse(data)
							$("#question").val(data[0].question)
						}
					})
				})
			})
		</script>
</body>

</html>
