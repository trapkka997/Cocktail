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
											<h2 class="full-name">Ogbonna Justice</h2>
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
											<li><span class="ach-count">0</span> <span
												class="ach-label">Posts</span></li>
											<li><span class="ach-count">0</span> <span
												class="ach-label">Followers</span></li>
											<li><span class="ach-count">0</span> <span
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
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img01" />
										<figcaption>
											<h3>Letterpress asymmetrical</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img02" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img03" />
										<figcaption>
											<h3>Brunch semiotics</h3>
											<p>Ex disrupt cray yr, butcher pour-over magna umami
												kitsch before they sold out commodo.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img04" />
										<figcaption>
											<h3>Chillwave nihil occupy</h3>
											<p>In post-ironic gluten-free deserunt, PBR&amp;B non
												pork belly cupidatat polaroid.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img05" />
										<figcaption>
											<h3>Kale chips lomo biodiesel</h3>
											<p>Pariatur food truck street art consequat sustainable,
												et kogi beard qui paleo.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img06" />
										<figcaption>
											<h3>Exercitation occaecat</h3>
											<p>Street chillwave hoodie ea gentrify.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img01" />
										<figcaption>
											<h3>Selfies viral four</h3>
											<p>Raw denim duis Tonx Shoreditch labore swag artisan
												High Life cred, stumptown Schlitz quinoa flexitarian mollit
												fanny pack.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img02" />
										<figcaption>
											<h3>Photo booth skateboard</h3>
											<p>Vinyl squid ex High Life. Paleo Neutra nulla master
												cleanse, Helvetica et enim nesciunt esse.</p>
										</figcaption>
									</figure>
								</li>
							</ul>
						</section>
						<section class="slideshow">
							<ul>
								<li>
									<figure>
										<figcaption>
											<h3>Letterpress asymmetrical</h3>
											<p>Kale chips lomo biodiesel stumptown Godard Tumblr,
												mustache sriracha tattooed cray aute slow-carb placeat
												delectus. Letterpress asymmetrical fanny pack art party est
												pour-over skateboard anim quis, ullamco craft beer.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img01" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Chillwave Echo Park Etsy organic Cosby sweater seitan
												authentic pour-over. Occupy wolf selvage bespoke tattooed,
												cred sustainable Odd Future hashtag butcher.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img02" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Brunch semiotics</h3>
											<p>IPhone PBR polaroid before they sold out meh you
												probably haven't heard of them leggings tattooed tote bag,
												butcher paleo next level single-origin coffee photo booth.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img03" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Chillwave nihil occupy</h3>
											<p>Vice cliche locavore mumblecore vegan wayfarers
												asymmetrical letterpress hoodie mustache. Shabby chic lomo
												polaroid, scenester 8-bit Portland Pitchfork VHS tote bag.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img04" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Kale chips lomo biodiesel</h3>
											<p>Chambray Schlitz pug YOLO, PBR Tumblr semiotics.
												Flexitarian YOLO ennui Blue Bottle, forage dreamcatcher
												chillwave put a bird on it craft beer Etsy.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img05" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Exercitation occaecat</h3>
											<p>Cosby sweater hella lomo Thundercats VHS occupy High
												Life. Synth pop-up readymade single-origin coffee, fanny
												pack tousled retro. Fingerstache mlkshk ugh hashtag,
												church-key ethnic street art pug yr.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img06" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Selfies viral four</h3>
											<p>Ethnic readymade pug, small batch XOXO Odd Future
												normcore kogi food truck craft beer single-origin coffee
												banh mi photo booth raw denim. XOXO messenger bag pug VHS.
												Forage gluten-free polaroid, twee hoodie chillwave
												Helvetica.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img01" />
									</figure>
								</li>
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

	<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script	src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
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