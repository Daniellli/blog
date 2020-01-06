<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
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
<link rel="stylesheet" href="../css/linearicons.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/owl.carousel.css">
<link rel="stylesheet" href="../css/main.css">
</head>
<body>

	<!-- head -->
	<header class="default-header"> <nav
		class="navbar navbar-expand-lg navbar-light">
	<div class="container">
		<a class="navbar-brand" href="index.html"> <img src="img/logo.png"
			alt="">
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
				<!-- 	<li><a href="category.jsp">分类</a></li>
				<li><a href="#travel">热搜</a></li>
				Dropdown
				<li class="dropdown"><a class="dropdown-toggle" href="#"
					id="navbardrop" data-toggle="dropdown"> 个人 </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="single.jsp">个人主页</a> <a
							class="dropdown-item" href="postBlog.jsp">发布博客</a>

					</div></li> -->
			</ul>
		</div>
	</div>
	</nav> </header>

	<!-- 蓝色部分 -->
	<section class="top-section-area section-gap">
	<div class="container">
		<div class="row justify-content-between align-items-center d-flex">
			<div class="col-lg-8 top-left">
				<h1 class="text-white mb-20">发布博客</h1>
				<!-- <ul>
					<li><a href="">分类</a><span class="lnr lnr-arrow-right"></span></li>
					<li><a href="">内容</a></li>
				</ul> -->
			</div>
		</div>
	</div>
	</section>
	<!-- 主要内容 -->
	<form action="http://localhost:8080/blog/UploadServlet" method="post"
		enctype="multipart/form-data" class="post-wrapper pt-100">
		<input type="hidden" value="${sessionScope.currentUser.userName }"
			name="userName">

		<div class="post-wrapper pt-100">
			<!-- Start post Area -->
			<section class="post-area">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="single-page-post">
							<img class="img-fluid" src="../img/single.jpg" alt="">
							<div class="top-wrapper ">
								<div class="row d-flex justify-content-between">
									<h2 class="col-lg-8 col-md-12 text-uppercase">
										<p>
											标题： <input type="text" placeholder="标题" name="title">
										</p>
									</h2>

								</div>
							</div>

							<!-- 分类 -->
							<div class="category">
								<label for="">category</label> <select name="category">
									<c:forEach var="cat" items="${sessionScope.category }">
										<option value="${cat.cId }">${cat.cName }</option>
									</c:forEach>
								</select>
							</div>
							<div class="single-post-content">
								<p>
									Content <input name="content" type="text" class="form-control"
										id="" placeholder="Your article">
								</p>
							</div>
							<div class="single-post-content">
								<p>
									Photo <input name="Photo" type="file" class="form-control">
								</p>
							</div>
							<div class="single-post-content">
								<p>
									Photo <input name="video" type="file" class="form-control">
								</p>
							</div>
							<button type="submit">POST</button>
						</div>
					</div>
	</form>

	<!-- 右边 -->
	<div class="col-lg-4 sidebar-area ">

		<div class="single_widget about_widget">
			<img src="../img/asset/s-img.jpg" alt="">
			<!--<h2 class="text-uppercase"></h2>
			<p>hello world</p>
			 <div class="social-link">
				<a href="#"><button class="btn">
						<i class="fa fa-facebook" aria-hidden="true"></i> Like
					</button></a> <a href="#"><button class="btn">
						<i class="fa fa-twitter" aria-hidden="true"></i> follow
					</button></a>
			</div> -->
		</div>
		<div class="single_widget cat_widget">
			<h4 class="text-uppercase pb-20">分类</h4>
			<ul>
				<c:forEach var="cat" items="${sessionScope.category }">
					<li><a href="#">${cat.cName }<span>37</span></a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	</div>
	</div>
	</section>

	</div>
	<!-- End post Area -->

	<!--  footer Area -->
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
						<li><img src="../img/i1.jpg" alt=""></li>
						<li><img src="../img/i2.jpg" alt=""></li>
						<li><img src="../img/i3.jpg" alt=""></li>
						<li><img src="../img/i4.jpg" alt=""></li>
						<li><img src="../img/i5.jpg" alt=""></li>
						<li><img src="../img/i6.jpg" alt=""></li>
						<li><img src="../img/i7.jpg" alt=""></li>
						<li><img src="../img/i8.jpg" alt=""></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!-- End footer Area -->



	<script src="../js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="../js/vendor/bootstrap.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<script src="../js/parallax.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/jquery.sticky.js"></script>
	<script src="../js/main.js"></script>
</body>
</html>
