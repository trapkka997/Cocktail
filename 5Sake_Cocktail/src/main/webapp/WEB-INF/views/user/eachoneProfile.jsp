<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>NEWS FEED</title>
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css?ver=2">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/navbar/navbar.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/proflie_slide/slide_component.css">
<!-- profile -->
<link rel="stylesheet"	href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/profile/default.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
<link rel="stylesheet" href="./resources/assets/tag/css/tag_default.css">

<link rel="stylesheet"	href="./resources/assets/selfmaking/css/button/button.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet"	href="./resources/assets/gallery/css/uploadbutton.css">
<link rel="stylesheet"	href="./resources/assets/gallery/css/circluar_layout.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"      rel="stylesheet">

<!-- eachoneProfile_css 중요 -->
<link rel="stylesheet" href="./resources/assets/eachoneProfile/css/eachoneProfile.css">
<link rel="stylesheet" href="./resources/assets/eachoneProfile/css/tabMenu.css">
<link rel="stylesheet" href="./resources/assets/eachoneProfile/css/eachoneProfile_modalButton.css">
<!-- eachoneProfile_css 중요 -->
<style>


</style>

</head>

<body>

	<div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<div class="userprofile_outer">
						<div class="userprofile_inner">
							<!-- profile -->
							<div class="container">
								<div class="row">
									<div class="col-xs-4 col-sm-2 col-md-offset-2 userpic">
										<span class="avatar"> <img
											src="./resources/assets/eachoneProfile/img/userpic/userpic_default2.jpg" />
										</span>

									</div>
									<div class="col-xs-8 col-sm-10 col-md-8 user-info">
										<div>
											<h2 class="full-name">${user.userEmail }</h2>
											<ul class="mfe">
												<li>
													<button class="btn btn-default">Message</button>
												</li>
												<li>
													<button class="btn btn-default">Follow</button>
												</li>
												<li>
													<button class="btn btn-default">Edit</button>
												</li>
											</ul>
										</div>
										<ul class="ach">
											<li><span class="ach-count">${postNum }</span> <span
												class="ach-label">Posts</span></li>
											<li><span class="ach-count">${followerNum }</span> <span
												class="ach-label">Followers</span></li>
											<li><span class="ach-count">${followNum }</span> <span
												class="ach-label">Following</span></li>
										</ul>
										<div>
											<p class="bio">Contrary to popular belief, Lorem Ipsum is
												not simply random text. It has roots in a piece of a tin of
												classical Latin literature from 45 BC, making it over 2000
												years old.</p>
										</div>
						
									</div>
								</div>
							</div>
							<!-- profile -->
						</div>
					</div>

				</div>
			</div>

			
			<!-- tabMenu -->
			<div class="wrapper_tabMenu">
				<nav class="tabs_tabMenu">
					<div class="selector_tabMenu"></div>
					<a href="#" class="active_tabMenu">好き酒</a> <a href="#">好き写真</a> <a href="#">好き方</a>
				</nav>
			</div>
			<!-- tabMenu_end -->


			<div class="row">
				<div class="col-md-12">
					<div id="grid-gallery" class="grid-gallery">
						<section class="grid-wrap">
							<ul class="grid">
								<li class="grid-sizer"></li>
								<!-- for Masonry column width -->
								<c:forEach var="userPhoto" items="${photoList }">
								<li>
									<figure>
										<img src="${path }${userPhoto.saveFileName}"
											alt="img01" />
										<figcaption>
											<h3>${userPhoto.title }</h3>
											<p>${userPhoto.contents }</p>
										</figcaption>
									</figure>
								</li>
								</c:forEach>
							</ul>
						</section>
						<section class="slideshow">
							<ul>
								<c:forEach var="userPhoto" items="${photoList }">
									<li>
										<figure>
											<figcaption>
												<h3>${userPhoto.title }</h3>
												<p>${userPhoto.contents }</p>
											</figcaption>
											<img src="${path }${userPhoto.saveFileName}"
												alt="img01" />
										</figure>
									</li>
								</c:forEach>
							</ul>
							<nav>
								<span class="icon nav-prev"></span> <span class="icon nav-next"></span>
								<span class="icon nav-close"></span>
							</nav>
							<div class="info-keys icon">Navigate with arrow keys</div>
						</section>
					</div>
				</div>
				
				<!-- modal -->
				<nav class="menu">
					<input type="checkbox" href="#" class="menu-open" name="menu-open"
						id="menu-open" /> <label class="menu-open-button" for="menu-open">
						<span class="hamburger hamburger-1"></span> 
						<span class="hamburger hamburger-2"></span> 
						<span class="hamburger hamburger-3"></span>
					</label> 
					<a href="#" class="menu-item"> 
						<i class="fa fa-bar-chart"></i>
					</a> 
					<a href="#" class="menu-item"> 
						<i class="fa fa-plus"></i>
					</a>
				</nav>

				<!-- filters -->
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
				    <defs>
				      <filter id="shadowed-goo">
				          
				          <feGaussianBlur in="SourceGraphic" result="blur"
										stdDeviation="10" />
				          <feColorMatrix in="blur" mode="matrix"
										values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
				          <feGaussianBlur in="goo" stdDeviation="3" result="shadow" />
				          <feColorMatrix in="shadow" mode="matrix"
										values="0 0 0 0 0  0 0 0 0 0  0 0 0 0 0  0 0 0 1 -0.2"
										result="shadow" />
				          <feOffset in="shadow" dx="1" dy="1" result="shadow" />
				          <feComposite in2="shadow" in="goo" result="goo" />
				          <feComposite in2="goo" in="SourceGraphic" result="mix" />
				      </filter>
				      <filter id="goo">
				          <feGaussianBlur in="SourceGraphic" result="blur"
										stdDeviation="10" />
				          <feColorMatrix in="blur" mode="matrix"
										values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
				          <feComposite in2="goo" in="SourceGraphic" result="mix" />
				      </filter>
				    </defs>
				</svg>
				<!-- modal -->
				
					
				<!-- modal1_start -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog modal-lg">

						<!-- Modal content-->
						<div class="modal-content">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<!--  -->
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">
										<h3 class="text-center text-info">My own cocktail</h3>
										<div class="row">
											<div class="col-md-3">
												<div class='selector'>
													<ul>
														<li><input id='1' type='checkbox'> <label
															for='1'>Option 1</label></li>
														<li><input id='2' type='checkbox'> <label
															for='2'>Option 2</label></li>
														<li><input id='3' type='checkbox'> <label
															for='3'>Option 3</label></li>
														<li><input id='4' type='checkbox'> <label
															for='4'>Option 4</label></li>
														<li><input id='5' type='checkbox'> <label
															for='5'>Option 5</label></li>
														<li><input id='6' type='checkbox'> <label
															for='6'>Option 6</label></li>
														<li><input id='7' type='checkbox'> <label
															for='7'>Option 7</label></li>
														<li><input id='8' type='checkbox'> <label
															for='8'>Option 8</label></li>
													</ul>
													<button>Click here</button>
												</div>

												<div class='selector'>
													<ul>
														<li><input id='1' type='checkbox'> <label
															for='1'>Option 1</label></li>
														<li><input id='2' type='checkbox'> <label
															for='2'>Option 2</label></li>
														<li><input id='3' type='checkbox'> <label
															for='3'>Option 3</label></li>
														<li><input id='4' type='checkbox'> <label
															for='4'>Option 4</label></li>
														<li><input id='5' type='checkbox'> <label
															for='5'>Option 5</label></li>
														<li><input id='6' type='checkbox'> <label
															for='6'>Option 6</label></li>
														<li><input id='7' type='checkbox'> <label
															for='7'>Option 7</label></li>
														<li><input id='8' type='checkbox'> <label
															for='8'>Option 8</label></li>
													</ul>
													<button>Click here</button>
												</div>
											</div>
											<div class="col-md-6">

												<div class="row">
													<div class="col-md-12">
														<div class="card">
															<h5 class="card-header">Card title</h5>
															<div class="card-body">
																<p class="card-text">Card content</p>
															</div>
															<div class="card-footer">Card footer</div>
														</div>
													</div>
												</div>

											</div>
											<div class="col-md-3">
												<div class="card">
													<h5 class="card-header">Card title</h5>
													<div class="card-body">
														<p class="card-text">Card content</p>
													</div>
													<div class="card-footer">Card footer</div>
												</div>
												<div class="card">
													<h5 class="card-header">Card title</h5>
													<div class="card-body">
														<p class="card-text">Card content</p>
													</div>
													<div class="card-footer">Card footer</div>
												</div>
											</div>
										</div>
										<div class="row">

											<div class="col-md-8">
												<div class="row">
													<div class='container'>
														<div id='app'>
															<div class='tagHere'></div>
															<input type="text" autofocus />
														</div>
													</div>
													<div class='note'>Use Tab to input a tag.</div>
												</div>
											</div>

											<div class="col-md-4">

												<button type="button"
													class="btn btn-block btn-outline-warning">Upload</button>
												<button type="button"
													class="btn btn-block btn-outline-primary">Sharing</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--  -->
						</div>

					</div>
				</div>
				<!-- modal1_end -->
				<!-- modal -->
			</div>
		</div>
	</div>
	<script	src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/assets/basic/js/proflie_slide/classie.js"></script>
	<script	src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js"></script>
	<script src="./resources/assets/tag/js/search_tag.js"></script>
	<script src="./resources/assets/gallery/js/gallery/gallery_classie.js"></script>
	<script	src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js"></script>
	<script	src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>
	<script src="./resources/assets/gallery/js/circluar_layout.js"></script>
	
	<!-- tabMenu -->
	<script src="./resources/assets/eachoneProfile/js/tabMenu.js"></script>
	<!-- tabMenu -->
	
</body>

</html>