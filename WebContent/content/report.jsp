
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<base href="<%=basePath%>">
<html lang="zxx" class="no-js">
<head>
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
							<li><a href="${basePath }index.jsp">Back</a></li>
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
			<h3 class="mb-30">Report</h3>
			<div class="row flex-row d-flex">
            	<div class="col-lg-6"id="reportDiv"
					style="height: 500px; width: 500px; ">
				<button onclick="generageGram()">reportByHistogram</button>
                 </div>
                 
                 
                 <div class="col-lg-6"id="reportDivPie"
					style="height: 500px; width: 500px; );">
				 <button onclick="generagePieGram()">reportByPie</button>
                </div>
	
			
			</div>
	</div>
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
	<script src="${basePath }tools/echarts.js"></script>

	<script>
		function generagePieGram() {
			var mydiv = document.getElementById("reportDivPie");
			var pieGram = echarts.init(mydiv);
			var columnData = new Array();
			var valueData = new Array();

			//ajax获取数据
			$.getJSON("GetReportDate", function(data) {
				for (var i = 0; i < data.length; i++) {
					columnData[i] = data[i].cName;
					var myPie = new Object();
					myPie.value = data[i].cNumber;
					myPie.name = data[i].cName;
					valueData[i] = myPie;
				}
				var option = {
					title : {
						text : '商品数量占比',
						subtext : '数据库数据',
						left : 'center'
					},
					legend : {
						/* orient : 'vertical',
						top : 'bottom', */
						bottom : 10,
						left : 'center',
						data : columnData
					},
					tooltip : {
						trigger : 'item'
					},
					toolbox : {
						feature : {
							dataView : {
								show : true,
								readOnly : false
							},
							magicType : {
								show : true,
								type : [ 'line', 'bar', 'pie' ]
							},
							restore : {
								show : true
							},
							saveAsImage : {
								show : true
							}
						}
					},
					series : [ {
						type : 'pie',
						radius : '70%',
						center : [ '50%', '50%' ],
						selectedMode : 'single', //一次只能选中一个
						data : valueData
					} ]
				};
				// 使用刚指定的配置项和数据显示图表。
				pieGram.setOption(option);
			})

		}

		function generageGram() {
			var mydiv = document.getElementById("reportDiv");
			var gram = echarts.init(mydiv);
			// 第二步，指定图表的配置项和数据	
			console.log("hello world")
			var columnData = new Array();
			var valueData = new Array();

			//利用ajax获取数据
			$.getJSON("GetReportDate", function(data) {

				for (var i = 0; i < data.length; i++) {
					columnData[i] = data[i].cName;
					valueData[i] = data[i].cNumber;
				}
				var option = {
					title : {
						text : '商品价格对象',
						subtext : '数据库数据',
						left : 'center'
					},
					tooltip : {
						trigger : 'item'
					},
					toolbox : {
						feature : {
							dataView : {
								show : true,
								readOnly : false
							},
							magicType : {
								show : true,
								type : [ 'line', 'bar', 'pie' ]
							},
							restore : {
								show : true
							},
							saveAsImage : {
								show : true
							}
						}
					},
					xAxis : [ {
						type : 'category',
						data : columnData
					} ],
					yAxis : {
						type : 'value'

					},
					series : [ {
						type : 'bar',
						data : valueData
					} ]
				};
				// 使用刚指定的配置项和数据显示图表。
				gram.setOption(option);

			})

		}
	</script>
</body>
</html>