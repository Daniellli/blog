
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="${basePath }tools/jsuggest/jsuggest.css">

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
					<span class="navbar-toggler-icon"></span>
				</button>
				<div
					class="collapse navbar-collapse justify-content-end align-items-center"
					id="navbarSupportedContent">
					<ul class="navbar-nav scrollable-menu">
						<li><a href="${basePath }index.jsp">Back</a></li>
						<li><a
							href="${basePath }GetPersonalInfo?userId=${sessionScope.currentUser.userId}">Personal</a></li>
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
					<h1 class="text-white mb-20">Blog</h1>

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
						<div class="post-lists search-list" id="showall">
							<c:forEach var="blog" items="${sessionScope.blog }">
								<div class="single-list flex-row d-flex">
									<!-- 图片 -->
									<div class="thumb"
										onclick="goPersonalInfo(${blog.user.userId})">
										<img src="${basePath }img/asset/c3.jpg" alt="">
										<p>
											<a href="#">${blog.user.userName }</a>
										</p>
										<!-- 发布该博客的用户名、id、头像 -->

										<%-- <div>${blog.user.userName }</div>
										<div>${blog.user.userId }</div>
										<div>${blog.user.userPortrait }</div> --%>
									</div>
									<div class="detail" id="showDetail">
										<a href="${basePath }GetBlogDetail?bid=${blog.blogId }"> <!-- 标题 -->
											<h4 class="pb-20">${blog.blogName }</h4>
										</a>
										<!-- 文章内容 -->
										<p>${blog.blogContent }</p>
										<!-- 喜欢和评论 -->



										<p class="social-link">
											<!-- 评论数和点赞数 -->
											<button class="btn">
												<i class="fa fa-facebook" aria-hidden="true"> <a
													href="javascript:void(0)"
													onclick="priase(${blog.blogId },0,'${blog.blogId }')">Likes</a>
													</i>
											</button>
											<span id="${blog.blogId }">${blog.blogThumbup }</span> 
											<i
												class="fa fa-twitter" aria-hidden="true"><a
												href="${basePath }GetBlogDetail?bid=${blog.blogId }">
													Comments ${blog.blogCommentNumber } </a></i>
											<!-- 收藏 -->
											<i class="fa fa-heart-o" aria-hidden="true"></i> <a
												href="javascript:void(0)" class="collect"> <img
												height="20" width="20" src="${basePath }img/asset/x1.jpg"
												alt="" /> collect
											</a>
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
									<input type="text" class="form-control" id="searchField"
										placeholder="Search"> <span class="input-group-addon">
										<button type="submit" onclick="searchByBlogName()">
											<span class="lnr lnr-magnifier"></span>
										</button>
									</span>
								</div>
							</div>
						</div>
						<div class="single_widget cat_widget">
							<h4 class="text-uppercase pb-20">post categories</h4>
							<ul>
								<c:forEach var="category" items="${sessionScope.category }">
									<li><a href="javascript:getByCategoryId(${category.cId })">${category.cName }</a></li>
								</c:forEach>
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
	<script src="${basePath }tools/jsuggest/jSuggest.js"></script>
	<script>
		//praiseN,pra为span的id 
		function searchByBlogName(){
			var blogName =document.getElementById("searchField").value
			$.ajax({
				type:'get',
				url:'${basePath }GetBlogByName?bName='+blogName,
				datatype:'json',
				success:function(data){
					if(data!=null){
						$('.single-list').remove()
						data=JSON.parse(data)
						let len = data.length
						for(let i = 0 ;i<len;i++){
							$('<div class="single-list flex-row d-flex"><div class="thumb" onclick="goPersonalInfo('+data[i].user.userId+')">\<img src="${basePath }img/asset/c3.jpg" alt=""><p><a href="#">'+data[i].user.userName+'</a></p></div><div class="detail" id="showDetail"><a href="${basePath }GetBlogDetail?bid='+data[i].blogId+'"><h4 class="pb-20">'+data[i].blogName+'</h4></a><p>'+data[i].blogContent+'</p><p class="footer pt-20"><i class="fa fa-heart-o" aria-hidden="true"></i> <a href="javascript:void(0)"onclick="priase('+data[i].blogId+',0,'+data[i].blogId+')">Likes</a><span id="'+data[i].blogId+'">'+data[i].blogThumbup+'</span> <iclass="ml-20 fa fa-comment-o" aria-hidden="true"></i> <a href="${basePath }GetBlogDetail?bid='+data[i].blogId+'">Comments '+data[i].blogCommentNumber+' </a></p></div></div>').prependTo($('#showall'))
							}
						
					}
				}
			})
			
			
		}
		
		
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
		
	
		function goPersonalInfo(userId){
			 let form = document.createElement('form');
			  form.id = 'idForm';
			  form.name = 'name_form';
			  form.style.display = 'none';
			  document.body.appendChild(form);
			
			   
			      let input = document.createElement('input');
			      input.type = 'text';
			      input.name = 'userId';
			      input.value = userId;
			      form.appendChild(input);
			  
			  form.method = 'POST';
			  form.action = "${basePath }GetPersonalInfo";
			  form.submit();
			  document.body.removeChild(form);
		}
		
		//按分类查询
		function getByCategoryId(cId){
			$.ajax({
				type:'get',
				url:"${basePath }GetBlogByCategoryId?cid="+cId,
				datatype:'json',
				success:function(data){
					if(data!=null){
						$('.single-list').remove()
						data=JSON.parse(data)
						let len = data.length
						for (let i = 0; i < len; i++) {
							$('<div class="single-list flex-row d-flex"><div class="thumb" onclick="goPersonalInfo('+data[i].user.userId+')">\<img src="${basePath }img/asset/c3.jpg" alt=""><p><a ="#">'+data[i].user.userName+'</a></p></div><div class="detail" id="showDetail"><a href="${basePath }GetBlogDetail?bid='+data[i].blogId+'"><h4 class="pb-20">'+data[i].blogName+'</h4></a><p>'+data[i].blogContent+'</p><p class="footer pt-20"><i class="fa fa-heart-o" aria-hidden="true"></i> <a href="javascript:void(0)"onclick="priase('+data[i].blogId+',0,'+data[i].blogId+')">Likes</a><span id="'+data[i].blogId+'">'+data[i].blogThumbup+'</span> <iclass="ml-20 fa fa-comment-o" aria-hidden="true"></i> <a href="${basePath }GetBlogDetail?bid='+data[i].blogId+'">Comments '+data[i].blogCommentNumber+' </a></p></div></div>').prependTo($('#showall'))
						} 
					}
				}
				
			})
		}
			
			//当文本加载完毕后触发
			$(document).ready(function() {
				//#textfield表示你输入框的id名称，比如当前输入框id是textfield
				$("#searchField").jSuggest({
					//url指的是后台的服务地址
					url : "${basePath }AutoComplete",
					type : "post",
					loadingImg : '${basePath }img/ajax-loader.gif',
					data : "key",
					delay : 500,
					autoChange : true
				});
			});
	</script>

</body>
</html>