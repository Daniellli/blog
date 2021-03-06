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
				<li><a href="${basePath }content/showAll.jsp">Back</a></li>
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
										<img src="${basePath }img/user.jpg" alt="">
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
								<%-- <div class="col-lg-4 single-b-wrap col-md-12">
									<i class="fa fa-heart-o" aria-hidden="true"></i>
									${sessionScope.blogDetail.blogThumbup } like this
								</div> --%>


								<button class="btn">
									<i class="fa fa-facebook" aria-hidden="true"> <a
										href="javascript:void(0)"
										onclick="priase(${sessionScope.blogDetail.blogId },0,'${sessionScope.blogDetail.blogId }')"><span
											id="${sessionScope.blogDetail.blogId }">${sessionScope.blogDetail.blogThumbup }
										</span>Likes</a>
									</i>
								</button>





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
													<img src="${basePath }img/asset/c1.jpg"
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
												<a href="javascript:void(0)" data-id="${comment.commentId }"
													class="btn-reply text-uppercase">reply</a>
											</div>
										</div>
										<div class="replace" data-id="${comment.commentId }"
											style="display: none;">
											<input class="form-control mb-10" type="text" /> <input
												type="button" style="float: right;" value='reply'
												class="btn-reply text-uppercase" />
										</div>
									</div>
									<!-- 往左偏移的评论----reply -->
									<div class="comment-list left-padding"
										id="${ comment.commentId}">
										<c:forEach var="reply" items="${comment.replys }">
											<div class="single-comment justify-content-between d-flex">
												<div class="user justify-content-between d-flex">
													<div class="thumb">
														<img src="${basePath }img/asset/c2.jpg" alt="">
													</div>
													<div class="desc">
														<h5>
															<a href="#">${reply.user.userName }</a>
														</h5>
														<p class="date">${reply.replyTime }</p>
														<p class="comment">${reply.replyContent }</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</c:forEach>
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
					<!-- 用户详情 -->
					<div class="single_widget about_widget">
						<img src="${basePath }img/asset/s-img.jpg"
							alt="${sessionScope.blogDetail.user.userPortrait  }">
						<h2 class="text-uppercase">${sessionScope.blogDetail.user.userName  }</h2>
						<div class="social-link">


							<c:choose>
								<c:when test="${ not empty sessionScope.currentUser }">
									<a onclick="chat()"><button class="btn">
											<i class="fa fa-facebook" aria-hidden="true"></i> Private
											Chat
										</button> </a>
									<script>
												var b=null;
													function chat(){
<<<<<<< HEAD
														b=window.open("${basePath }content/Clientchart.jsp","","width=750 height=550");
=======
														b=window.open("${basePath}Clientchart.jsp","","width=750 height=550");
>>>>>>> 5911844bc64f219ea8a234ddf021e271762e0394
													}
													function chatclose(){
														b.close();
													
													}
											</script>
								</c:when>
								<c:otherwise>
									<a href="javascript:alert('Login first ,thank you !')"><button
											class="btn">
											<i class="fa fa-facebook" aria-hidden="true"></i> Private
											Chat
										</button> </a>
								</c:otherwise>
							</c:choose>


							<c:choose>
								<c:when test="${ not empty sessionScope.currentUser }">
									<a href="javascript:void()">
										<button class="btn" id="followButton"
											onclick="follow(${sessionScope.blogDetail.user.userId},${sessionScope.currentUser.userId })">
											<i class="fa fa-twitter" aria-hidden="true"></i> Follow
										</button>
									</a>
								</c:when>
								<c:otherwise>
									<a href="javascript:alert('Login first ,thank you !')"><button
											class="btn">
											<i class="fa fa-facebook" aria-hidden="true"></i> Follow
										</button> </a>
								</c:otherwise>
							</c:choose>


						</div>
					</div>


					<!-- <div class="single_widget tag_widget">
						<h4 class="text-uppercase pb-20">Category</h4>
						<ul>
							<li><a href="#">Lifestyle</a></li>
						</ul>
					</div> -->
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
	
	//添加评论
	function submitComment(userId,blogId,textareaId){
		console.log(userId)
		var content = document.getElementById(textareaId).value;
		$.ajax({
			type: 'post',
<<<<<<< HEAD
			url : "${basePath }AddComment",
=======
			url : "${basePath}AddComment",
>>>>>>> 5911844bc64f219ea8a234ddf021e271762e0394
			data:{
				"userId" : userId,
				"bId" : blogId,
				"message" : content
			},
			dataType: 'json',
			success: function(data) {
				if(data.length!=0){
					$('<div class="comment-list"><div class="single-comment justify-content-between d-flex"><div class="user justify-content-between d-flex"><div class="thumb"><img src="${basePath }img/asset/c1.jpg"alt="'+data.user.userId+'"></div><div class="desc"><h5><a href="#">' + data.user.userName+'</a></h5><p class="date">'+data.commentTime+'</p><p class="comment">'+data.commentContent+'</p></div> </div><div class="reply-btn" ><a href="javascript:void(0)" data-id="'+data.commentId+'" class="btn-reply text-uppercase">reply</a></div></div>  <div class="replace" data-id="'+data.commentId+'" style="display: none;"><input class="form-control mb-10" type="text" /> <input type="button" style="float: right;" value="reply" class="btn-reply text-uppercase" /></div></div><div class="comment-list left-padding" id="'+data.commentId+'"></div>').appendTo($('.flex-column'))
					$('#'+textareaId).val(""); 
				}
			}
		})
	}
	
	//点击了关注按钮
	function follow(followedUserId,mainUserId){
		$.ajax({
			type:'post',
			url:'${basePath }FollowServlet',
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
	
	//jquery代码
	$(document).ready(function(){
		//点击了回复按钮，显示回复框
		$('.reply-btn a').on('click', function () {
			console.log(this)
			$(this).parent().fadeOut(200)
			const data_id = $(this).attr('data-id')
			$('.replace[data-id='+ data_id +']').slideDown(200)
		})
		
		//提交回复
		 $('.replace input[type="button"]').on('click', function () { 
			const data_id = $(this).parent().attr('data-id')
			 var content =$(this).parent().find("input[type='text']").val() 
			console.log(content)
			
	 	 	$.ajax({
				type:'post',
<<<<<<< HEAD
				url:'${basePath }ReplyServlet',
=======
				url:'${basePath}ReplyServlet',
>>>>>>> 5911844bc64f219ea8a234ddf021e271762e0394
				datatype:'json',
				data:{
					'content':content,
					'commentId':data_id
				},
			success:function(data){
				if(data!=null){
					data = JSON.parse(data)
					$('<div class="single-comment justify-content-between d-flex"><div class="user justify-content-between d-flex"><div class="thumb"><img src="${basePath }img/asset/c2.jpg" alt=""></div><div class="desc"><h5><a href="#">'+data.user.userName+'</a></h5><p class="date">'+data.replyTime+'</p><p class="comment">'+data.replyContent +'</p></div></div></div>').appendTo($('#'+data_id))
				}
			}
			
			})  
		
		//收起	
			$('.replace[data-id='+ data_id +']').slideUp(200);
			$('.reply-btn a[data-id='+ data_id +']').parent().fadeIn(200)
			$('.replace[data-id='+ data_id +']').find($('input[type="text"]')).val("")
		 }) 
		 
 
	})
	
	
	function priase(articleid, commentid, praiseN) {
			var type = "json";
			var praiseNum = parseInt(document.getElementById(praiseN).innerHTML); //获取点赞数
			$.ajax({
						url : "${basePath }RecivePraiseServlet?sendType=post&dataType="
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
