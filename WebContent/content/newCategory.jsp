<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>

<base href="<%=basePath%>">
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="${basePath }img/elements/fav.png">
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
<link rel="stylesheet" href="${basePath }css/owl.carousel.css">
<link rel="stylesheet" href="${basePath }css/font-awesome.min.css">
<link rel="stylesheet" href="${basePath }css/nice-select.css">
<link rel="stylesheet" href="${basePath }css/magnific-popup.css">
<link rel="stylesheet" href="${basePath }css/bootstrap.css">
<link rel="stylesheet" href="${basePath }css/main.css">
</head>
<body>
	<!-- Start banner Area -->
	<section class="generic-banner relative">
		<!-- Start Header Area -->
		<header class="default-header">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<a class="navbar-brand" href="${basePath }index.jsp"> <img
						src="${basePath }img/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="lnr lnr-menu"></span>
					</button>

					<div
						class="collapse navbar-collapse justify-content-end align-items-center"
						id="navbarSupportedContent">
						<ul class="navbar-nav scrollable-menu">
<<<<<<< HEAD
							<li><a href="${basePath }index.jsp">Back</a></li>

							<li><a href="${basePath }GetPersonalInfo?userId=${sessionScope.currentUser.userId}">personal</a></li>
=======
							<li><a href="../index.jsp">Back</a></li>
							<li><a href="${basePath }">personal</a></li>
							<!-- <li><a href="index.html#news">News</a></li>
							<li><a href="index.html#travel">Travel</a></li>
							<li><a href="index.html#fashion">fashion</a></li>
							<li><a href="index.html#team">team</a></li>
							Dropdown
							<li class="dropdown"><a class="dropdown-toggle" href="#"
								id="navbardrop" data-toggle="dropdown"> Pages </a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="single.html">Single</a> <a
										class="dropdown-item" href="category.html">Category</a> <a
										class="dropdown-item" href="search.html">Search</a> <a
										class="dropdown-item" href="archive.html">Archive</a> <a
										class="dropdown-item" href="generic.html">Generic</a> <a
										class="dropdown-item" href="elements.html">Elements</a>
								</div></li> -->
>>>>>>> 5911844bc64f219ea8a234ddf021e271762e0394
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<!-- End Header Area -->
		<div class="container">
			<div class="row height align-items-center justify-content-center">
				<div class="col-lg-10">
					<div class="generic-banner-content">
						<h2 class="text-white text-center">New Category</h2>
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
						<h3 class="mb-30">New Category</h3>
						<form action="${basePath }NewCategoryServlet">
							<div class="mt-10">
								<input type="text" name="name" placeholder="Category Name"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'First Name'" required
									class="single-input">
							</div>
							<div class="mt-10">
								<input type="submit" value="Add">
							</div>
						</form>
					</div>
					<div class="col-lg-3 col-md-4 mt-sm-30"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Align Area -->
	<script src="${basePath }js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="${basePath }js/vendor/bootstrap.min.js"></script>
	<script src="${basePath }js/owl.carousel.min.js"></script>
	<script src="${basePath }js/jquery.sticky.js"></script>
	<script src="${basePath }js/jquery.nice-select.min.js"></script>
	<script src="${basePath }js/parallax.min.js"></script>
	<script src="${basePath }js/jquery.magnific-popup.min.js"></script>
	<script src="${basePath }js/main.js"></script>
</body>
</html>