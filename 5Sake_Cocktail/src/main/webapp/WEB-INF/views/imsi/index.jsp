<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>NEWS FEED</title>
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/navbar/navbar.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/proflie_slide/slide_component.css">
<!--profile-->
<link rel="stylesheet"	href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/profile/default.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
<link rel="stylesheet"  href="./resources/assets/tag/css/tag_default.css">
<link rel="stylesheet" href="./resources/assets/modal_makingCocktail/css/circle-progress-bar.css?h=a3fb9dca43f77251e0f00815d5fb05b2">
<link rel="stylesheet" href="./resources/assets/modal_makingCocktail/css/ninja-slider.css?h=36ca55b69bec564ac8a55b447db21f87">
<link rel="stylesheet" href="./resources/assets/modal_makingCocktail/css/thumbnail-slider.css?h=88ea8bccbed24d3703a2b324aaff99fd">
<link rel="stylesheet" href="./resources/assets/basic/css/modal.css?h=79846acf8bad6d3c01f5f6496c592036">
<link rel="stylesheet"  href="./resources/assets/basic/css/photo_profile.css">
<link rel="stylesheet" href="./resources/assets/main/css/Simple-Slider.css?h=4617ba6673866be9ca12fcd9ef560578">
<link rel="stylesheet" href="./resources/assets/main/css/title/title.css?h=1a3fe257ec57297162763eee50f0dff7">

</head>

<body>
 <div>
     <div class="container">
     <div class="row" id="slideshow">
	     <div class="col-md-12" id="slideshow">
		    <div class="simple-slider">
		        <div class="swiper-container">
		            <div class="swiper-wrapper">
		                <div class="swiper-slide" style="background-image:url(./resources/assets/main/img/slideshow1.jpg)"></div>
		                <div class="swiper-slide" style="background-image:url(./resources/assets/main/img/slideshow2.jpg)"></div>
		                <div class="swiper-slide" style="background-image:url(./resources/assets/main/img/slideshow3.jpg)"></div>
		            </div>
		            <div class="swiper-pagination"></div>
		            <div class="swiper-button-prev"></div>
		            <div class="swiper-button-next"></div>
		        </div>
		    </div>
		</div>
	</div>
        <div class="row" id="cocktails">
            <div class="col-md-12" id="recommend_title">
            	<h2 class="chapter ng-binding"><br>
	           		<small><br><i class="js-filter-text ng-binding">Popular</i><br></small>
	           		Cocktails
           		</h2></div>
                <div class="col-md-12" id="recommend">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr></tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                    	<img src="./resources/assets/basic/img/カクテルアイコン5.png">
                                    </td>
                                    <td>
                                    	<img src="./resources/assets/basic/img/カクテルアイコン5.png">
                                    </td>
                                    <td>
                                    	<img src="./resources/assets/basic/img/カクテルアイコン5.png">
                                    </td>
                                    <td>
                                    	<img src="./resources/assets/basic/img/カクテルアイコン5.png">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row" id="photos">
                <div class="col-md-12" id="photo_title"><h2 class="chapter ng-binding"> 
	<br><small>
		<br><i class="js-filter-text ng-binding">Popular</i><br> </small>Photos
</h2></div>
                <div class="col-md-12" id="recommend">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr></tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><img src="./resources/assets/gallery/img/test_image/large/1.png"></td>
                                    <td><img src="./resources/assets/gallery/img/test_image/large/1.png"></td>
                                    <td><img src="./resources/assets/gallery/img/test_image/large/1.png"></td>
                                    <td><img src="./resources/assets/gallery/img/test_image/large/1.png"></td>
                                    <td><img src="./resources/assets/gallery/img/test_image/large/1.png"></td>
                                    <td><img src="./resources/assets/gallery/img/test_image/large/1.png"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
	<!-- proflie_slideEnd -->
	<!-- <script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
	<script	src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="./resources/assets/basic/js/proflie_slide/classie.js"></script>
    <script src="./resources/assets/modal_makingCocktail/js/ninja-slider.js"></script>
    <script src="./resources/assets/modal_makingCocktail/js/thumbnail-slider.js"></script>
    <script src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js"></script>
	<script src="./resources/assets/tag/js/search_tag.js"></script>
	<script	src="./resources/assets/basic/js/photo_profile.js"></script>
	 <script src="./resources/assets/main/js/Simple-Slider.js"></script>
	<script>
		var menuRight = document.getElementById('cbp-spmenu-s2'), showRight = document
				.getElementById('showRight'), body = document.body;
		showRight.onclick = function() {
			classie.toggle(this, 'active');
			classie.toggle(menuRight, 'cbp-spmenu-open');
			disableOther('showRight');
		};
		function disableOther(button) {
			if (button !== 'showRight') {
				classie.toggle(showRight, 'disabled');
			}
		}
	</script>
	<script>
		$(document).ready(function() {
			var $editable = $(".editable");
			var $overlay = $(".device-overlay");
			var $circle = $(".editable__circle");
			var circleTrans = 400;
			var $item = $(".editable__rotater-item");
			var $second = $(".second");
			$(document).on("click", ".js-edit", function() {
				$editable.addClass("clicked");
				$overlay.addClass("active");
			});
			$(document).on("click", ".device-overlay", function() {
				$editable.removeClass("clicked");
				$overlay.removeClass("active");
			});
			$(document).on("click", ".editable__rotater-item", function() {
				$(this).parent().addClass("picked");
				$circle.addClass("picked");
				$second.addClass("picked");
			});
			$(document).on("click", ".second__back", function() {
				$(".editable__rotater").removeClass("picked");
				$circle.addClass("instant");
				$circle.css("top");
				$circle.removeClass("picked");
				$second.removeClass("picked");
				$editable.removeClass("clicked");
				$overlay.removeClass("active");
				setTimeout(function() {
					$circle.removeClass("instant");
				}, circleTrans);
			});
		});
	</script>
</body>
</html>