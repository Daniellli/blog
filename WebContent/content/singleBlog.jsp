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
	</nav> </header>
	<!-- End Header Area -->

	<!-- Start top-section Area -->
	<section class="top-section-area section-gap">
	<div class="container">
		<div class="row justify-content-between align-items-center d-flex">
			<div class="col-lg-8 top-left">
				<h1 class="text-white mb-20">Post Details</h1>
				<!-- <ul>
					<li><a href="index.html">Home</a><span
						class="lnr lnr-arrow-right"></span></li>
					<li><a href="category.html">Category</a><span
						class="lnr lnr-arrow-right"></span></li>
					<li><a href="single.html">Fashion</a></li>
				</ul> -->
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
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="single-page-post">
						<!-- 	<img class="img-fluid" src="../img/single.jpg" alt=""> -->
						<div class="top-wrapper ">
							<div class="row d-flex justify-content-between">
								<h2 class="col-lg-8 col-md-12 text-uppercase">
									${sessionScope.blogDetail.blogName }</h2>
								<div
									class="col-lg-4 col-md-12 right-side d-flex justify-content-end">
									<div class="desc">
										<h2>${sessionScope.blogDetail.user.userName }</h2>
										<!-- <h3>发布时间</h3> -->
									</div>
									<div class="user-img">
										<img src="../img/user.jpg" alt="">
									</div>
								</div>
							</div>
						</div>
						<div class="single-post-content">
							<p>${sessionScope.blogDetail.blogContent }</p>
						</div>
						<c:if test="${sessionScope.blogDetail.blogPhoto != null}">
							<div class="single-page-post"
								style="height: 400px; width: 700px; margin: 0 auto;">
								<img class="img-fluid"
									src="${ sessionScope.blogDetail.blogPhoto}">
							</div>
						</c:if>


						<c:if test="${sessionScope.blogDetail.blogVideo !=null }">
							<div class="single-page-post"
								style="height: 400px; width: 700px; margin: 0 auto;">
								<video src="${sessionScope.blogDetail.blogVideo}" autoplay loop
									controls="controls"></video>
							</div>
						</c:if>


						<!-- 点赞数和评论数 -->
						<div class="bottom-wrapper">
							<div class="row">
								<div class="col-lg-4 single-b-wrap col-md-12">
									<i class="fa fa-heart-o" aria-hidden="true"></i>
									${sessionScope.blogDetail.blogThumbup } like this
								</div>
								<div class="col-lg-4 single-b-wrap col-md-12">
									<i class="fa fa-comment-o" aria-hidden="true"></i> ${ sessionScope.blogDetail.blogCommentNumber}
									comments
								</div>
							</div>
						</div>
						<!-- 评论详情 -->
						<!-- Start comment-sec Area -->
						<section class="comment-sec-area pt-80 pb-80">
						<div class="container">
							<div class="row flex-column">
								<h5 class="text-uppercase pb-80">${ sessionScope.blogDetail.blogCommentNumber}
									Comments</h5>
								<br>

								<c:forEach var="comment"
									items="${ sessionScope.blogDetail.comments}">

									<div class="comment-list">
										<div class="single-comment justify-content-between d-flex">
											<div class="user justify-content-between d-flex">
												<div class="thumb">
													<img src="../img/asset/c1.jpg"
														alt="${comment.user.userPortrait }">
												</div>
												<div class="desc">
													<h5>
														<a href="#?${comment.user.userId }">${comment.user.userName }</a>
													</h5>
													<p class="date">${comment.commentTime }</p>
													<p class="comment">${comment.commentContent }</p>
												</div>
											</div>
											<%-- ${comment.commentThumbup } --%>
											<div class="reply-btn">
												<a href="" class="btn-reply text-uppercase">reply</a>
											</div>
										</div>
									</div>

								</c:forEach>


								<!-- 往左偏移的评论 -->
								<!--  <div class="comment-list left-padding">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="thumb">
                                                        <img src="../img/asset/c2.jpg" alt="">
                                                    </div>
                                                    <div class="desc">
                                                        <h5><a href="#">评论name</a></h5>
                                                        <p class="date">time </p>
                                                        <p class="comment">
                                                            article
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="reply-btn">
                                                       <a href="" class="btn-reply text-uppercase">reply</a> 
                                                </div>
                                            </div>
                                        </div>  -->
							</div>
						</div>
						</section>
						<!-- End comment-sec Area -->
						<!-- Start commentform Area -->
						<section class="commentform-area  pb-120 pt-80 mb-100">
						<div class="container">
							<h5 class="text-uppercas pb-50">Leave a Comment</h5>
							<div class="row flex-row d-flex">
								<div class="col-lg-6">
									<!-- <form action="http://localhost:8080/blog/AddComment"> -->
									<%-- <input type="hidden" name="bId"
											value="${sessionScope.blogDetail.blogId }" />
											<input type="hidden" name="userId"
											value="${sessionScope.blogDetail.user.userId }" /> --%>
									<textarea class="form-control mb-10"
										style="height: 200px; width: 650px;" name="message"
										id="message" placeholder="Messege"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Messege'" required></textarea>
									<button class="primary-btn mt-20"
										onclick="submitComment(${sessionScope.blogDetail.user.userId},${sessionScope.blogDetail.blogId},'message')">Comment</button>
									<!-- <input type="submit" class="primary-btn mt-20" value="Comment"> -->
									<!-- </form> -->
								</div>
							</div>
						</div>
						</section>
						<!-- End commentform Area -->
					</div>
				</div>
				<div class="col-lg-4 sidebar-area ">
					<!-- 搜索框 -->
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
					<!-- 用户详情 -->
					<div class="single_widget about_widget">
						<img src="../img/asset/s-img.jpg"
							alt="${sessionScope.blogDetail.user.userPortrait  }">
						<h2 class="text-uppercase">${sessionScope.blogDetail.user.userName  }</h2>
						<div class="social-link">
							<a href="#"><button class="btn">
									<i class="fa fa-facebook" aria-hidden="true"></i> Private Chat
								</button></a> <a href="#">
								<button class="btn" id="followButton"
									onclick="follow(${sessionScope.blogDetail.user.userId},${sessionScope.currentUser.userId })">
									<i class="fa fa-twitter" aria-hidden="true"></i> Follow
								</button>
							</a>
						</div>
					</div>


					<div class="single_widget tag_widget">
						<h4 class="text-uppercase pb-20">Category</h4>
						<ul>
							<li><a href="#">Lifestyle</a></li>
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
		src="../https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
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
	//刷新comment的ajax
	/* function getComment(bid){
		$.ajax({
			type: 'get',
			url: 'http://localhost:8080/blog/AjaxRefreshComment?bid=' + bid,
			dataType: 'json',
			success: function (data){
				$('.comment-list').remove()
				let len = data.length
				for (let i = 0; i < len; i++) {
					$('<div class="comment-list"><div class="single-comment justify-content-between d-flex"><div class="user justify-content-between d-flex"><div class="thumb"><img src="../img/asset/c1.jpg"alt="'+data[i].user.userId+'"></div><div class="desc"><h5><a href="#">' + data[i].user.userName+'</a></h5><p class="date">'+data[i].commentTime+'</p><p class="comment">'+data[i].commentContent+'</p></div></div><div class="reply-btn"><a href="" class="btn-reply text-uppercase">reply</a></div></div></div>').appendTo($('.flex-column'))
				}
			}
		})
	} */
	
	function submitComment(userId,blogId,textareaId){
		console.log(userId)
		var content = document.getElementById(textareaId).value;
		$.ajax({
			type: 'post',
			url : "http://localhost:8080/blog/AddComment",
			data:{
				"userId" : userId,
				"bId" : blogId,
				"message" : content
			},
			dataType: 'json',
			success: function(data) {
				if(data.length!=0){
						$('.comment-list').remove()
						let len = data.length
						for (let i = 0; i < len; i++) {
							$('<div class="comment-list"><div class="single-comment justify-content-between d-flex"><div class="user justify-content-between d-flex"><div class="thumb"><img src="../img/asset/c1.jpg"alt="'+data[i].user.userId+'"></div><div class="desc"><h5><a href="#">' + data[i].user.userName+'</a></h5><p class="date">'+data[i].commentTime+'</p><p class="comment">'+data[i].commentContent+'</p></div></div><div class="reply-btn"><a href="" class="btn-reply text-uppercase">reply</a></div></div></div>').appendTo($('.flex-column'))
						}
						$('#'+textareaId).val(""); 
				}
			}
		})
	}

	
	//关注
	function follow(followedUserId,mainUserId){
		$.ajax({
			type:'post',
			url:'http://localhost:8080/blog/FollowServlet',
			data:{
				"followedUserId":followedUserId,
				"mainUserId":mainUserId
			},
			datatype:'json',
			success:function(data){
				if(data.length>0){
					var d= JSON.parse(data)
					if(d[0].flag == 1){
					 alert("关注成功");
					  document.getElementById("followButton").innerText="Followed"; 
					}else{
						 alert("你已关注");
						 document.getElementById("followButton").innerText="Followed";
					}
				}
			}
		})
	}
	
	</script>
</body>

</html>
