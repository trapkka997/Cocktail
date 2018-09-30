<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>NEWS FEED</title>
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">

<link rel="stylesheet"	href="./resources/assets/selfmaking/css/button/button.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet"	href="./resources/assets/gallery/css/uploadbutton.css">
<link rel="stylesheet"	href="./resources/assets/gallery/css/hover.css">
<link rel="stylesheet" href="./resources/assets/modal_makingCocktail/css/modal_makingCocktail.css">
<link rel="stylesheet" href="./resources/assets/modal_makingCocktail/css/sumoselect.css">
<!-- modal -->
<link rel="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

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
.modal-lg {
    max-width: 70%;
}
</style>

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
							<c:forEach var="userCocktail" items="${userCocktailList}">
									<li>
										<figure class="tile2 scale-anm brandy all">
											<div class="profilebox profilebox1">
												<img class="galleryPhoto"
													src="${path }${userCocktail.saveFileName}"
													alt="img01" />
												<div class="SocialIcons">
													<a href="#"><i class="fas fa-heartbeat"></i></a>
												</div>
											</div>
											<figcaption>
												<h3>${userCocktail.title}</h3>
												<p>${userCocktail.contents}</p>
											</figcaption>
										</figure>
									</li>
								</c:forEach>
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
			
			
			
			
				<div class="plus-button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">+</div>
				<!-- modal1_start -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog modal-lg">

						<!-- Modal content-->
						<div class="modal-content">

							<!--  -->
							<div class="container_makingCocktail">
								<header class="header">
									<h1 class = "cocktailMaker_h1">Cocktail Maker</h1>
								</header>

								<div class="column-wrapper">

									<!-- input_box -->
									<main>
									<p>Separate your tags with a comma</p>
									<div class="tags-input"></div>
									<h1>
										<span>Tags</span> Input
									</h1>
									</main>
									<!-- input_box_end-->

									<div class="color-picker">
										<h2 class = "cocktailMaker_h2">Color</h2>
										<label class="cream"> <input type="radio" name="color"
											value="cream">
											<div class="color_layer"></div>
											<div class="color_button">
												<span></span>
											</div>
										</label> <label class="yellow"> <input type="radio"
											name="color" value="yellow">
											<div class="color_layer"></div>
											<div class="color_button">
												<span></span>
											</div>
										</label> <label class="orange"> <input type="radio"
											name="color" value="orange">
											<div class="layer"></div>
											<div class="color_button">
												<span></span>
											</div>
										</label> <label class="red"> <input type="radio"
											name="color" value="red">
											<div class="layer"></div>
											<div class="color_button">
												<span></span>
											</div>
										</label> <label class="brown"> <input type="radio"
											name="color" value="brown">
											<div class="layer"></div>
											<div class="color_button">
												<span></span>
											</div>
										</label> <label class="green"> <input type="radio"
											name="color" value="green">
											<div class="layer"></div>
											<div class="color_button">
												<span></span>
											</div>
										</label> <label class="blue"> <input type="radio"
											name="color" value="blue">
											<div class="color_layer"></div>
											<div class="color_button">
												<span></span>
											</div>
										</label> <label class="pink"> <input type="radio"
											name="color" value="pink">
											<div class="color_layer"></div>
											<div class="color_button">
												<span></span>
											</div>
										</label> <label class="peach"> <input type="radio"
											name="color" value="peach">
											<div class="color_layer"></div>
											<div class="color_button">
												<span></span>
											</div>
										</label>
									</div>

									<div class="style-picker_liqueur">
										<h2 class = "cocktailMaker_h2" style="margin-top: 20px;">BASE SPIRITS</h2>

										<div class="SumoSelect sumo_somename4" tabindex="0"
											role="button" aria-expanded="true">
											<select multiple="multiple" name="somename4"
												class="select1 SumoUnder" tabindex="-1">
												<option value="volvo">Volvo</option>
												<option value="saab">Saab</option>
												<option disabled="disabled" value="mercedes">Mercedes</option>
												<option value="audi">Audi</option>
												<option value="bmw">BMW</option>
												<option disabled="disabled" value="porsche">Porche</option>
												<option selected="selected" value="ferrari">Ferrari</option>
												<option selected="selected" value="hyundai">Hyundai</option>
												<option value="mitsubishi">Mitsubishi</option>
											</select>
											<!-- <p class="CaptionCont SelectBox" title=" Ferrari, Hyundai ">
												<span> Ferrari, Hyundai </span><label><i></i></label>
											</p> -->
											<div class="optWrapper okCancelInMulti selall multiple">
												<p class="select-all partial">
													<span><i></i></span><label>Select All</label>
												</p>
												<ul class="options">
													<li class="opt"><span><i></i></span><label>Volvo</label></li>
													<li class="opt"><span><i></i></span><label>Saab</label></li>
													<li class="opt disabled"><span><i></i></span><label>Mercedes</label></li>
													<li class="opt"><span><i></i></span><label>Audi</label></li>
													<li class="opt"><span><i></i></span><label>BMW</label></li>
													<li class="opt disabled"><span><i></i></span><label>Porche</label></li>
													<li class="opt selected"><span><i></i></span><label>Ferrari</label></li>
													<li class="opt selected"><span><i></i></span><label>Hyundai</label></li>
													<li class="opt"><span><i></i></span><label>Mitsubishi</label></li>
												</ul>
												<div class="MultiControls">
													<p tabindex="0" class="btnOk">OK</p>
													<p tabindex="0" class="btnCancel">Cancel</p>
												</div>
											</div>
										</div>

									</div>
									
									<div class="style-picker_spirits">
										<h2 class = "cocktailMaker_h2" style="margin-top: 20px;">Liqueur</h2>

										<div class="SumoSelect sumo_somename4" tabindex="0"
											role="button" aria-expanded="true">
											<select multiple="multiple" name="somename4"
												class="select1 SumoUnder" tabindex="-1">
												<option value="volvo">Volvo</option>
												<option value="saab">Saab</option>
												<option disabled="disabled" value="mercedes">Mercedes</option>
												<option value="audi">Audi</option>
												<option value="bmw">BMW</option>
												<option disabled="disabled" value="porsche">Porche</option>
												<option selected="selected" value="ferrari">Ferrari</option>
												<option selected="selected" value="hyundai">Hyundai</option>
												<option value="mitsubishi">Mitsubishi</option>
											</select>
											<!-- <p class="CaptionCont SelectBox" title=" Ferrari, Hyundai ">
												<span> Ferrari, Hyundai </span><label><i></i></label>
											</p> -->
											<div class="optWrapper okCancelInMulti selall multiple">
												<p class="select-all partial">
													<span><i></i></span><label>Select All</label>
												</p>
												<ul class="options">
													<li class="opt"><span><i></i></span><label>Volvo</label></li>
													<li class="opt"><span><i></i></span><label>Saab</label></li>
													<li class="opt disabled"><span><i></i></span><label>Mercedes</label></li>
													<li class="opt"><span><i></i></span><label>Audi</label></li>
													<li class="opt"><span><i></i></span><label>BMW</label></li>
													<li class="opt disabled"><span><i></i></span><label>Porche</label></li>
													<li class="opt selected"><span><i></i></span><label>Ferrari</label></li>
													<li class="opt selected"><span><i></i></span><label>Hyundai</label></li>
													<li class="opt"><span><i></i></span><label>Mitsubishi</label></li>
												</ul>
												<div class="MultiControls">
													<p tabindex="0" class="btnOk">OK</p>
													<p tabindex="0" class="btnCancel">Cancel</p>
												</div>
											</div>
										</div>

									</div>
									
								</div>
								<!-- /.column-wrapper -->

							<!--  -->
						</div>
						<!-- Modal content_end -->
					</div>
				</div>
				<!-- modal1_end -->
				
			</div>
		</div>
	</div>
	<!-- modal -->
	<script src="./resources/assets/gallery/js/pictureUpload.js"></script>
		<!-- 사진 상세 슬라이드 -->
	<script src="./resources/assets/gallery/grid/js/modernizr.custom.js"></script>
	<script src="./resources/assets/gallery/grid/js/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/grid/js/masonry.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/grid/js/classie.js"></script>
	<script src="./resources/assets/gallery/grid/js/cbpGridGallery.js"></script>
	<!-- Modal -->
	<script src="./resources/assets/gallery/js/cbpGridGallery.js"></script>
	<!-- Modal -->
	
	<!-- 칵테일 만들기 업로드 모달 -->
	<script src="./resources/assets/modal_makingCocktail/js/modal_makingCocktail.js"></script>
	<script src="./resources/assets/modal_makingCocktail/js/jquery.sumoselect.js"></script>
	<!-- 칵테일 만들기 업로드 모달 끝 -->

	<!-- Latest compiled and minified JavaScript -->

	<script type="text/javascript">
		$(document).ready(function() {

			$('.select1').SumoSelect({
				okCancelInMulti : true,
				selectAll : true
			});

		});
	</script>
	
	<script>
		new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
	</script>
</body>
</html>