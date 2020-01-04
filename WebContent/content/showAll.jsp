
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">
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

	<!-- Start Header Area -->
	<header class="default-header">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<a class="navbar-brand" href="index.html"> <img
					src="../img/logo.png" alt="">
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
					<!-- 	<li><a href="#news">News</a></li>
						<li><a href="#travel">Travel</a></li>
						<li><a href="#fashion">fashion</a></li>
						<li><a href="#team">team</a></li>
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
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End Header Area -->

	<!-- Start top-section Area -->
	<section class="top-section-area section-gap">
		<div class="container">
			<div class="row justify-content-start align-items-center d-flex">
				<div class="col-lg-8 top-left">
					<h1 class="text-white mb-20">Archive News</h1>
					<ul>
						<li><a href="index.html">Home</a><span
							class="lnr lnr-arrow-right"></span></li>
						<li><a href="category.html">Category</a><span
							class="lnr lnr-arrow-right"></span></li>
						<li><a href="single.html">Fashion</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- End top-section Area -->


	<!-- Start post Area -->
	<div class="post-wrapper pt-100">
		<!-- Start post Area -->
		<section class="post-area">
			<div class="container">
				<div class="row justify-content-center d-flex">
					<div class="col-lg-8">
						<div class="post-lists search-list">
							<c:forEach var="blog" items="${sessionScope.blog }">
								<div class="single-list flex-row d-flex">
									<!-- 图片 -->
									<div class="thumb">
										<!-- <div class="date">
										<span>20</span><br>Dec
									</div> -->
										<img src="../img/asset/c3.jpg" alt="">
										<p>
											<a href="#">${blog.user.userName }</a>
										</p>
										<!-- 发布该博客的用户名、id、头像 -->

										<%-- <div>${blog.user.userName }</div>
										<div>${blog.user.userId }</div>
										<div>${blog.user.userPortrait }</div> --%>
									</div>
									<div class="detail">
										<a href="#"> <!-- 标题 -->
											<h4 class="pb-20">${blog.blogName }</h4></a>
										<!-- 文章内容 -->
										<p>${blog.blogContent }</p>
										<!-- 喜欢和评论 -->
										<p class="footer pt-20">
											<!-- 评论数和点赞数 -->
											<i class="fa fa-heart-o" aria-hidden="true"></i> <a
												href="javascript:void(0)"
												onclick="priase(${blog.blogId },0,'${blog.blogId }')">Likes
											</a><span id="${blog.blogId }">${blog.blogThumbup }</span> <i
												class="ml-20 fa fa-comment-o" aria-hidden="true"></i> <a
												href="http://localhost:8080/blog/GetBlogDetail?bid=${blog.blogId }">
												Comments ${blog.blogCommentNumber } </a>
										</p>
									</div>
								</div>
							</c:forEach>
							<div class="justify-content-center d-flex">
								<a class="text-uppercase primary-btn loadmore-btn mt-40 mb-60"
									href="#"> Load More Post</a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 sidebar-area">
						<div class="single_widget search_widget">
							<div id="imaginary_container">
								<div class="input-group stylish-input-group">
									<input type="text" class="form-control" placeholder="Search">
									<span class="input-group-addon">
										<button type="submit">
											<span class="lnr lnr-magnifier"></span>
										</button>
									</span>
								</div>
							</div>
						</div>

						<div class="single_widget cat_widget">
							<h4 class="text-uppercase pb-20">post categories</h4>
							<ul>
								<li><a href="#">Technology <span>37</span></a></li>
								<li><a href="#">Lifestyle <span>37</span></a></li>
								<li><a href="#">Fashion <span>37</span></a></li>
								<li><a href="#">Art <span>37</span></a></li>
								<li><a href="#">Food <span>37</span></a></li>
								<li><a href="#">Architecture <span>37</span></a></li>
								<li><a href="#">Adventure <span>37</span></a></li>
							</ul>
						</div>


					</div>
				</div>
			</div>
		</section>
		<!-- End post Area -->
	</div>
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

			<div class="row footer-bottom d-flex justify-content-between">


				<p class="col-lg-8 col-sm-12 footer-text">
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | made with Colorlib - More Templates <a
						href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
					- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
						target="_blank">网页模板</a>
				</p>


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

	<script>
		//praiseN,pra为span的id 

		function priase(articleid, commentid, praiseN) {
			var type = "json";
			var praiseNum = parseInt(document.getElementById(praiseN).innerHTML); //获取点赞数
			$.ajax({
						url : "http://localhost:8080/blog/RecivePraiseServlet?sendType=post&dataType="
								+ type,
						data : {
							"anthorid" : '${sessionScope.currentUser.userId}',
							"articleid" : articleid,
							"commentid" : commentid
						},
						type : "post",
						dataType : type,
						success : function(data) {
							if ("json" == type) {
								if (data != undefined && data != null) {
									var flag = data.praiseflag; // 1已点过赞
									if (flag == 0) {
										document.getElementById(praiseN).innerHTML = praiseNum + 1;
									} else if (flag == 1) {
										alert("你已经点过赞了！");
									}
								}
							}

						}
					});

		}
	</script>

</body>
</html>