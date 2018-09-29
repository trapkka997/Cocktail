<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>NEWS FEED</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css?ver=2">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet"
	href="./resources/assets/basic/css/navbar/navbar.css">
<link rel="stylesheet"
	href="./resources/assets/basic/css/proflie_slide/slide_component.css">
<!--profile-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="./resources/assets/basic/css/profile/default.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
<link rel="stylesheet" href="./resources/assets/tag/css/tag_default.css">

<link rel="stylesheet"
	href="./resources/assets/selfmaking/css/button/button.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet"
	href="./resources/assets/gallery/css/uploadbutton.css">

	
	
	
<link rel="stylesheet"
	href="./resources/assets/modal_makingCocktail/css/makingCocktail.css">

<style>


</style>

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- <script>
	$(document).ready(function() {

		$('.plus-button').on('click', function() {
			$('.modal_inner').load('/cocktail/modal #imageUpload');
		});

		/* 네모 친 id를 가진 i 태그 클릭시 body부분을 로드해서 띄워줍니다.*/
	});
</script> -->

</head>

<body>
	<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="button_container">
						<div class="outer">
							<div class="inner">
								<div id="selfMaking_button">
									<h1 style="margin-top: 20px;">spirits</h1>
									<div id="alcole" class="button-group"
										data-filter-group='alcole'
										style="margin-top: 20px; margin-bottom: 20px;">
										<button id="selfMaking_tag_button1"
											class="btn btn-outline-primary" data-filter="*"
											style="margin-left: 5px; margin-right: 5px;">ALL</button>
										<button id="selfMaking_tag_button2"
											class="btn btn-outline-primary" data-filter=".브랜디"
											style="margin-left: 5px; margin-right: 5px;">Brandy</button>
										<button id="selfMaking_tag_button3"
											class="btn btn-outline-primary" data-filter=".위스키"
											style="margin-left: 5px; margin-right: 5px;">Whisky</button>
										<button id="selfMaking_tag_button4"
											class="btn btn-outline-primary" data-filter=".보드카"
											style="margin-left: 5px; margin-right: 5px;">Vodka</button>
										<button id="selfMaking_tag_button5"
											class="btn btn-outline-primary" data-filter=".럼"
											style="margin-left: 5px; margin-right: 5px;">Rum</button>
										<button id="selfMaking_tag_button6"
											class="btn btn-outline-primary" data-filter=".드라이진"
											style="margin-left: 5px; margin-right: 5px;">Dry Jin</button>
										<button id="selfMaking_tag_button7"
											class="btn btn-outline-primary" data-filter=".테킬라"
											style="margin-left: 5px; margin-right: 5px;">Tequila</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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
			<div class="plus-button" class="btn btn-primary" data-toggle="modal"
				data-target="#imageUpload">+

				<div class="modal-dialog">
					<div class="modal-content">
				
					<!--  -->

						<div id="imageUpload" class="modal fade" role="dialog">
							<div class="modal-dialog modal-lg">


								<div>
									<aside class="draw-panel">
										<ul class="tabs tabs-fixed-width custom-tabs">
											<li class="tab"><a href="#styles">STYLES</a></li>
										</ul>

										<section class="panel-slide p-0" id="styles">
											<ul class="collapsible no-shadow mt-0 bt-0"
												data-collapsible="accordion">

												<li class="bb-lg">
													<div class="collapsible-header flex flex-spred">
														<h6 class="c-default">Base spirits</h6>
														<div class="flex flex-column">
															<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
															<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
														</div>
													</div>

													<div class="collapsible-body b-0"></div>

												</li>

												<li class="bb-lg">
													<div class="collapsible-header flex flex-spred">
														<h6 class="c-default">Color</h6>
														<div class="flex flex-column">
															<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
															<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
														</div>
													</div>
													<div class="collapsible-body"></div>
												</li>

												<li class="bb-lg">
													<div class="collapsible-header flex flex-spred">
														<h6 class="c-default">Liqueur</h6>
														<div class="flex flex-column">
															<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
															<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
														</div>
													</div>
													<div class="collapsible-body"></div>
												</li>

												<li class="bb-lg">
													<div class="collapsible-header flex flex-spred">
														<h6 class="c-default">Material</h6>
														<div class="flex flex-column">
															<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
															<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
														</div>
													</div>
													<div class="collapsible-body"></div>
												</li>

											</ul>
										</section>
									</aside>

									<div class="editor">


										<header class="flex flex-spred editor-toolbar">

											<ul class="flex">

												<li class="hover hd-preview"><i
													class="material-icons circle">undo</i></li>
												<li class="hd-preview"><i class="material-icons circle"
													disabled>redo</i></li>
												<li><span class="header-vertical-rule"></span></li>

												<li class="sh-preview js-preview"><a
													class='btn btn-round indigo ml-375' href='#'>Update</a></li>
												<li class="hd-preview"><span
													class="btn-group ml-375 hd-preview"> <a
														class='dropdown-button btn indigo' href='#'> Update </a> <a
														class='dropdown-button btn indigo' href='#'
														data-activates='publish-options'> <i
															class="material-icons">expand_more</i>
													</a>
												</span>
													<ul id='publish-options' class='dropdown-content custom'>
														<li><a href="#!">Publish </a></li>
														<li><a href="#!">Unpublish</a></li>
													</ul></li>
											</ul>
										</header>
										<main class="editor-canvas"> </main>
									</div>
								</div>



							</div>
						</div>
						<!--  -->

					</div>
				</div>
			</div>
			<!-- modal1_start -->
				
				
			</div>
		</div>


	
	<script
		src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/assets/basic/js/proflie_slide/classie.js"></script>
	<script
		src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js"></script>
	<script src="./resources/assets/tag/js/search_tag.js"></script>
	<script src="./resources/assets/gallery/js/gallery/gallery_classie.js"></script>
	<script
		src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js"></script>
	<script
		src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>
	<script src="./resources/assets/gallery/js/circluar_layout.js"></script>
	
</body>

</html>