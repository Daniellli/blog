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
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="../img/fav.png">
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
	<header class="default-header"> <nav
		class="navbar navbar-expand-lg navbar-light">
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
				<h1 class="text-white mb-20">Personal Center</h1>

			</div>
		</div>
	</div>
	</section>
	<!-- End top-section Area -->


	<!-- Start music Area -->
	<div class="post-wrapper pt-100" id="music">
		<!-- Start post Area -->

		<!-- 显示用户详情 -->

		<section class="post-area">
		<div class="single_widget about_widget">
			<img src="../img/asset/s-img.jpg"
				alt="${sessionScope.userDetail.userId }">
			<h2 class="text-uppercase">${sessionScope.userDetail.userName }</h2>
			<div class="social-link">
				<a href="#"><button class="btn">
						<i class="fa fa-facebook" aria-hidden="true"></i> Private Chat
					</button></a> <a href="#"><button class="btn">
						<i class="fa fa-twitter" aria-hidden="true"></i>Follow
					</button></a>
			</div>
		</div>
		<div class="container">
			<%-- <c:forEach var="blog" items="${sessionScope.userDetail.blogs }">
				<div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="single-page-post">
							<!-- <img class="img-fluid" src="../img/single.jpg" alt=""> -->
							<div class="top-wrapper ">
								<div class="row d-flex justify-content-between">
									<h2 class="col-lg-8 col-md-12 text-uppercase">${blog. }</h2>

								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach> --%>
			<div class="post-lists search-list">
				<c:forEach var="blog" items="${sessionScope.userDetail.blogs }">
					<div class="single-list flex-row d-flex">
						<div class="detail" id="showDetail">
							<a
								href="http://localhost:8080/blog/GetBlogDetail?bid=${blog.blogId }">
								<!-- 标题 -->
								<h4 class="pb-20">${blog.blogName }</h4>
							</a>
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
		</section>
	</div>
	<!-- End post Area -->

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
					href="http://www.cssmoban.com/" target="_blank" title="妯℃澘涔嬪">妯℃澘涔嬪</a>
				- Collect from <a href="http://www.cssmoban.com/" title="缃戦〉妯℃澘"
					target="_blank">缃戦〉妯℃澘</a>
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
