<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>NEWS FEED</title>
	<link rel="stylesheet"	href="./resources/assets/selfmaking/css/button/button.css">
	<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
	<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
	<link rel="stylesheet"	href="./resources/assets/gallery/css/uploadbutton.css">
	<link rel="stylesheet"	href="./resources/assets/gallery/css/circluar_layout.css">
	<link rel="stylesheet"	href="./resources/assets/gallery/css/photo_fitter.css">
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
										<button class="fil-cat btn btn-outline-primary" href="" data-rel="all">ALL</button>
										<button class="fil-cat btn btn-outline-primary" href="" data-rel="brandy">Brandy</button>
										<button class="fil-cat btn btn-outline-primary" href="" data-rel="whisky">Whisky</button>
										<button class="fil-cat btn btn-outline-primary" href="" data-rel="vodka">Vodka</button>
										<button class="fil-cat btn btn-outline-primary" href="" data-rel="rum">Rum</button>
										<button class="fil-cat btn btn-outline-primary" href="" data-rel="dryjin">Dry Jin</button>
										<button class="fil-cat btn btn-outline-primary" href="" data-rel="tequila">Tequila</button>
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
						<div id="portfolio">
							<figure class="tile scale-anm brandy all">
			        			<img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/2-mon_1092-300x234.jpg" alt="" />
								<figcaption>
									<h3>Letterpress asymmetrical</h3>
									<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
								</figcaption>
							</figure>
			  <div class="tile scale-anm brandy all">
			        <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/2-mon_1092-300x234.jpg" alt="" />
			  </div>
			  <div class="tile scale-anm whisky all">
			    <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/jti-icons_08-300x172.jpg" alt="" />
			  	<figcaption>
					<h3>Vice velit chia</h3>
					<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
					retro 90's chia cardigan quis asymmetrical paleo.</p>
				</figcaption>
			  </div>
			  <div class="tile scale-anm vodka all">
			    <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/emi_haze-300x201.jpg" alt="" />
			  </div>
			  <div class="tile scale-anm rum all">
			      <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/codystretch-300x270.jpg" alt="" />
			  </div>
			  <div class="tile scale-anm dryjin all">
			        <img src="https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97190&w=350&h=190" alt="" />
			  </div>
			  <div class="tile scale-anm tequila all">
			       <img src="https://placeholdit.imgix.net/~text?txtsize=19&txt=200%C3%97290&w=200&h=290" alt="" />
			  </div>
			  <div class="tile scale-anm brandy all">
			    <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/jti-icons_08-300x172.jpg" alt="" />
			  </div>
			  <div >
			    <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/transmission_01-300x300.jpg" alt="" />
			  </div>
			  <div class="tile scale-anm vodka all">
			        <img src="https://placeholdit.imgix.net/~text?txtsize=19&txt=200%C3%97290&w=200&h=290" alt="" />
			  </div>
			  <div class="tile scale-anm rum all">
			       <img src="https://placeholdit.imgix.net/~text?txtsize=19&txt=200%C3%97290&w=200&h=290" alt="" /> 
			  </div>
			  <div class="tile scale-anm dryjin all">
			      <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/the-ninetys-brand_02-300x300.jpg" alt="" />
			  </div>
			  <div class="tile scale-anm brandy all">
			       <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/15-dia_1092-1-300x300.jpg" alt="" />
			  </div>
			  <div class="tile scale-anm tequila all">
			       <img src="https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97190&w=350&h=190" alt="" /> 
			  </div>
			  <div class="tile scale-anm brandy all">
			      <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/emi_haze-300x201.jpg" alt="" />  
			  </div>
			  <div class="tile scale-anm tequila all">
			       <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/transmission_01-300x300.jpg" alt="" />
			  </div> 
			  <div class="tile scale-anm rum all">
			      <img src="https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97190&w=350&h=190" alt="" />  
			  </div> 
			  <div class="tile scale-anm rum all">     
			      <img src="https://placeholdit.imgix.net/~text?txtsize=19&txt=200%C3%97290&w=200&h=290" alt="" />
			  </div>
			</div>
			
			<div style="clear:both;"></div>   
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
	<script src="./resources/assets/gallery/js/gallery/photo_fitter.js"></script>	
</body>
</html>






























