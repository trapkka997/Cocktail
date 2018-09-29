<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>NEWS FEED</title>
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<!-- css가 깨질경우 주석을 푸른 후 다시 막고 실행해보세요. -->
<!-- <link rel="stylesheet"	href="./resources/assets/basic/css/navbar/navbar.css"> -->
<!-- <link rel="stylesheet"	href="./resources/assets/basic/css/proflie_slide/slide_component.css"> -->

<!-- <link rel="stylesheet"	href="./resources/assets/basic/css/profile/default.css"> -->
<!-- <link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css"> -->
<!-- <link rel="stylesheet" href="./resources/assets/tag/css/tag_default.css"> -->

<link rel="stylesheet"	href="./resources/assets/selfmaking/css/button/button.css">
<link rel="stylesheet"  href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet"	href="./resources/assets/gallery/css/uploadbutton.css">
<link rel="stylesheet"	href="./resources/assets/gallery/css/hover.css">

<!-- photo상세 슬라이드 -->
<script src="./resources/assets/gallery/grid/js/modernizr.custom.js"></script>
<style>
.card {
	flex-direction: inherit;
}
.card-body {
	text-align: center;
}
.galleryPhoto{
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="button_container">
						<div class="outer">
							<div class="inner">
								<div id="selfMaking_button">
									<h1 style="margin-top: 20px;">spirits</h1>
									<div id="alcole" class="button-group" data-filter-group='alcole' style="margin-top: 20px; margin-bottom: 20px;">
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="all" >ALL</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="brandy" >Brandy</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="whisky" >Whisky</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="vodka" >Vodka</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="rum" >Rum</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="dryjin" >Dry Jin</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="tequila" >Tequila</button>
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
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	 <div class="SocialIcons">
										    	    <a href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
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
										<p>Kale chips lomo biodiesel stumptown Godard Tumblr, mustache sriracha tattooed cray aute slow-carb placeat delectus. Letterpress asymmetrical fanny pack art party est pour-over skateboard anim quis, ullamco craft beer.</p>
									</figcaption>
									<img src="./resources/assets/gallery/grid/img/large/1.png" alt="img01"/>
								</figure>
							</li>				
						</ul>
						<nav>
							<span class="nav-prev">
								<i class="fas fa-angle-left" style="color: white;"></i>
							</span>
							<span class="nav-next">
								<i class="fas fa-angle-right"></i>
							</span>
							<span class="nav-close">
								<i class="fas fa-times"></i>
							</span>
						</nav>
						<!-- <div class="info-keys icon">Navigate with arrow keys</div> -->
					</section><!-- // slideshow -->
				</div>
			</div>
				<!-- modal -->
				<div class="plus-button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">+</div>
				<!-- modal1_start -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog modal-lg">

						<!-- Modal content-->
						<div class="modal-content">
							
							<!--  -->
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">
										<h3 class="text-center text-info">My own cocktail</h3>
										<div class="row">
											<div class="col-md-3">
												<div class="card bg-default">
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
											<div class="col-md-6">
												<img alt="Bootstrap Image Preview"
													src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg"
													class="rounded-circle" />
												<div class="card">
													<h5 class="card-header">Card title</h5>
													<div class="card-body">
														<p class="card-text">Card content</p>
													</div>
													<div class="card-footer">Card footer</div>
												</div>
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
												<div class="progress">
													<div
														class="progress-bar w-75 progress-bar-striped progress-bar-animated">
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
													<div class="col-md-4"></div>
													<div class="col-md-4"></div>
													<div class="col-md-4"></div>
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

<!-- 	<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	<script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>-->	

	<script src="./resources/assets/modal_makingCocktail/js/modal_makingCocktail.js"></script>
	<!-- 사진 상세 슬라이드 -->
	<script src="./resources/assets/gallery/grid/js/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/grid/js/masonry.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/grid/js/classie.js"></script>
	<script src="./resources/assets/gallery/grid/js/cbpGridGallery.js"></script>
	<script>
		new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
	</script>
</body>
</html>












