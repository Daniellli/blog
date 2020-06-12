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
				<li><a href="${basePath }index.jsp">Back</a></li>

			</ul>
		</div>
	</div>
	</nav> </header>
	<!-- End Header Area -->
	<section class="generic-banner relative">
	<div class="container">
		<div class="row height align-items-center justify-content-center">
			<div class="col-lg-10">
				<div class="generic-banner-content">
					<h2 class="text-white text-center">The Elements Page</h2>
					<p class="text-white">
						It won’t be a bigger problem to find one video game lover in your
						<br> neighbor. Since the introduction of Virtual Game.
					</p>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- End banner Area -->

	<!-- Start Align Area -->
	<div class="whole-wrap pb-100">
		<div class="container">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30">Personal</h3>
						<form action="${basePath }UpdateUserServlet" method="post"
							class="post-wrapper pt-100">

							<input type="hidden" name="userid"
								value="${sessionScope.currentUser.userId }">


							<div class="mt-10">
								phone <input type="text" name="phone"
									value="${sessionScope.currentUser.userTelephone }"
									class="single-input">
							</div>
							<div class="mt-10">
								name <input type="text" name="name"
									value="${sessionScope.currentUser.userName }"
									class="single-input">
							</div>
							<div class="mt-10">
								password <input type="text" name="password"
									value="${sessionScope.currentUser.userPwd }"
									class="single-input">
							</div>
							<div class="mt-10">
								age <input type="text" name="age"
									value="${sessionScope.currentUser.userAge }"
									class="single-input">
							</div>
							<div class="input-group-icon mt-10">
								sex
								<div class="form-select" id="default-select"">

									<c:choose>
										<c:when test="${sessionScope.currentUser.userSex == 1 }">
											<input type="radio" name="sex" value="1" checked />Male &nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="sex" value="0" />Female
											</c:when>
										<c:otherwise>
											<input type="radio" name="sex" value="1" />Male &nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="sex" value="0" checked />Female
											</c:otherwise>
									</c:choose>

								</div>
							</div>
							<div class="mt-10">
								question <input type="text" name="question"
									value="${sessionScope.currentUser.userQuestion}"
									class="single-input" />
							</div>

							<div class="mt-10">
								answer <input type="text" name="answer"
									value="${sessionScope.currentUser.userAnswer}"
									class="single-input">
							</div>
							<input type=hidden name="email"
								value="${sessionScope.currentUser.userEmail}"
								class="single-input">

							<button type="submit">UPDATE</button>
						</form>
					</div>
					<div class="col-lg-3 col-md-4 mt-sm-30"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Align Area -->

	<!-- End post Area -->
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
									<input name="email" placeholder="Enter Email"
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
						<li><img src=".${basePath }img/i8.jpg" alt=""></li>
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
</body>
</html>
