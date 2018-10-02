<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>5Sake's Cocktail</title>
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/navbar/navbar.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/proflie_slide/slide_component.css">
<!--profile-->
<link rel="stylesheet"	href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/profile/default.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
<link rel="stylesheet" href="./resources/assets/tag/css/tag_default.css">
<link rel="stylesheet"	href="./resources/assets/modal_makingCocktail/css/circle-progress-bar.css?h=a3fb9dca43f77251e0f00815d5fb05b2">
<link rel="stylesheet"	href="./resources/assets/modal_makingCocktail/css/ninja-slider.css?h=36ca55b69bec564ac8a55b447db21f87">
<link rel="stylesheet"	href="./resources/assets/modal_makingCocktail/css/thumbnail-slider.css?h=88ea8bccbed24d3703a2b324aaff99fd">
<link rel="stylesheet"	href="./resources/assets/basic/css/modal.css?h=79846acf8bad6d3c01f5f6496c592036">
<link rel="stylesheet"	href="./resources/assets/basic/css/photo_profile.css">
<link rel="stylesheet"	href="./resources/assets/main/css/Simple-Slider.css?h=4617ba6673866be9ca12fcd9ef560578">
<link rel="stylesheet"	href="./resources/assets/main/css/title/title.css?h=1a3fe257ec57297162763eee50f0dff7">
<link rel="stylesheet" href="./resources/assets/basic/css/slideshow.css">

<!-- navbar_핵심 -->
<link rel="stylesheet"	href="./resources/assets/basic/css/navbar/color_click.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/navbar/spirits_icon.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/navbar/check_list.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/navbar/userRecommend_Tag.css">
<!-- navbar_핵심, 지우지마세여-->	

<style>
h2 {
	font-family: fantasy;
}

h4 {
	font-family: fantasy;
}

.card {
	flex-direction: inherit;
	border: none;
}

.card-body {
	text-align: center;
}

.img {
	width: 98px;;
	/* border: 2px solid black;
	border-radius: 50%; */
}

.p {
	margin-top: 0;
	width: 150px;
}

.tile {
	display: inline-block;
	line-height: 100px;
}

.tile>div, .tile a {
	width: 100%;
	color: #30261c;
	background-color: #e4ecb9;
	text-align: center;
}

.tile>a {
	display: block;
	text-decoration: none;
	background-color: #d88e8f;
}
/* Flip effect */
/
* .flip>div, .flip a {
	position: absolute;
}

.flip>a {
	-webkit-transform: rotateX(-90deg);
	-moz-transform: rotateX(-90deg);
	-o-transform: rotateX(-90deg);
	-ms-transform: rotateX(-90deg);
	transform: rotateX(-90deg);
}

.flip:hover>div {
	-webkit-transform: rotateX(90deg);
	-moz-transform: rotateX(90deg);
	-o-transform: rotateX(90deg);
	-ms-transform: rotateX(90deg);
	transform: rotateX(90deg);
}

.flip:hover>a {
	-webkit-transform: rotateX(0deg);
	-moz-transform: rotateX(0deg);
	-o-transform: rotateX(0deg);
	-ms-transform: rotateX(0deg);
	transform: rotateX(0deg);
}

.flip>a, .flip:hover>div {
	-webkit-transition: 0.05s all linear 0;
	-moz-transition: 0.05s all linear 0;
	-o-transition: 0.05s all linear 0;
	-ms-transition: 0.05s all linear 0;
	transition: 0.05s all linear 0;
}

.flip>div, .flip:hover>a {
	-webkit-transition: 0.05s all linear 0.05s;
	-moz-transition: 0.05s all linear 0.05s;
	-o-transition: 0.05s all linear 0.05s;
	-ms-transition: 0.05s all linear 0.05s;
	transition: 0.05s all linear 0.05s;
}

.slide {
	overflow: hidden;
}

.slide>div, .slide a {
	-webkit-transition: 0.1s all linear;
	-moz-transition: 0.1s all linear;
	-o-transition: 0.1s all linear;
	-ms-transition: 0.1s all linear;
	transition: 0.1s all linear;
	position: absolute;
	height: 100%;
	width: 100%;
}

.slide>a {
	-webkit-transform: translate(200px, 0);
	-moz-transform: translate(200px, 0);
	-o-transform: translate(200px, 0);
	-ms-transform: translate(200px, 0);
	transform: translate(200px, 0);
}

.slide:hover>div {
	-webkit-transform: translate(-200px, 0);
	-moz-transform: translate(-200px, 0);
	-o-transform: translate(-200px, 0);
	-ms-transform: translate(-200px, 0);
	transform: translate(-200px, 0);
}

.slide:hover>a {
	-webkit-transform: translate(0, 0);
	-moz-transform: translate(0, 0);
	-o-transform: translate(0, 0);
	-ms-transform: translate(0, 0);
	transform: translate(0, 0);
}

.shutter>div, .shutter a {
	-webkit-transition: 0.1s all linear;
	-moz-transition: 0.1s all linear;
	-o-transition: 0.1s all linear;
	-ms-transition: 0.1s all linear;
	transition: 0.1s all linear;
	position: absolute;
}

.shutter>div {
	z-index: 10;
	-webkit-transform-origin: 0 0;
	-moz-transform-origin: 0 0;
	-o-transform-origin: 0 0;
	-ms-transform-origin: 0 0;
	transform-origin: 0 0;
}

.shutter:hover>div {
	-webkit-transform: rotateX(90deg);
	-moz-transform: rotateX(90deg);
	-o-transform: rotateX(90deg);
	-ms-transform: rotateX(90deg);
	transform: rotateX(90deg);
}

.page>div, .page a {
	-webkit-transition: 0.2s all linear;
	-moz-transition: 0.2s all linear;
	-o-transition: 0.2s all linear;
	-ms-transition: 0.2s all linear;
	transition: 0.2s all linear;
	position: absolute;
	z-index: 5;
}

.page>div {
	z-index: 10;
	-webkit-transform-origin: 0 0;
	-moz-transform-origin: 0 0;
	-o-transform-origin: 0 0;
	-ms-transform-origin: 0 0;
	transform-origin: 0 0;
}

.page:hover>div {
	-webkit-transform: rotateX(360deg);
	-moz-transform: rotateX(360deg);
	-o-transform: rotateX(360deg);
	-ms-transform: rotateX(360deg);
	transform: rotateX(360deg);
	z-index: 1;
}
</style>

</head>

<body>
	<div class="navbar is-top-fixed">
		<div class="container-fluid">
			<div class="container">
				<div class="navbar-home">
					<a href=""> <img
						src='./resources/assets/basic/img/navbar_home2.png' class='img' />
					</a>
				</div>
				<!-- navbar-home_end -->
				<div class="navbar-left" style="width: 390px;">
					<a class="navbar-toggle" data-toggle="dropdown"
						aria-expanded="false" href="#"> <span></span> <span></span> <span></span>
						<div id="recommend" class="dropdown-menu"
							style="margin-left: 150px; margin-right: 150px; right: 0px;">
							
							
							<div class="row_drop_userRecommend">
								<div class="col-md-12">
									<div class="card-group">
										<div class="card">
											<div class="card-body"
												style="border-right: 1px solid #e8dfdf6e;">
												<p class="card-text">
													<img src='./resources/assets/basic/img/カクテルアイコン5.png'
														class='img' />
												</p>
												<label>
													<h2>UserID</h2>
												</label>
												<p>
													<label>추천칵테일</label>
											</div>
										</div>
										<!-- user picture here -->

										<div class="card">
											<div class="card-body">
												<h4 class="card-title">cocktailName</h4>
												<p class="card-text">
													<img src='./resources/assets/basic/img/カクテルアイコン5.png'
														class='img' />
												</p>

												<p>
													<label class="tag">#tag</label> <label class="tag">#tag</label>
													<label class="tag">#tag</label>
												</p>

											</div>
										</div>
										<!-- randam cocktail -->

										<div class="card">
											<div class="card-body">
												<h4 class="card-title">cocktailName</h4>
												<p class="card-text">
													<img src='./resources/assets/basic/img/カクテルアイコン5.png'
														class='img' />
												</p>
												<div>

													<p>
														<label class="tag">#tag</label> <label class="tag">#tag</label>
														<label class="tag">#tag</label>
													</p>
												</div>
											</div>
										</div>
										<!-- randam cocktail -->

										<div class="card">
											<div class="card-body">
												<h4 class="card-title">cocktailName</h4>
												<p class="card-text">
													<img src='./resources/assets/basic/img/カクテルアイコン5.png'
														class='img' />
												</p>
												<div>

													<p>
														<label class="tag">#tag</label> <label class="tag">#tag</label>
														<label class="tag">#tag</label>
													</p>
												</div>
											</div>
										</div>
										<!-- randam cocktail -->
									</div>
									<!-- card_groupEnd -->
								</div>
								<!-- col-md-12_end -->
							</div>
							<!-- row_drop_userRecommendEnd -->
						</div> <!-- dropdax_menu -->
					</a>
				</div>
				<!-- navbar_leftEnd -->

				<!-- navbar-center-->
				<div class="navbar-center">
					<a href="cocktailphoto" class="navbar-item navbar-logo"> <i
						class="fas fa-glass-martini icon"></i>
					</a> <a href="userphoto" class="navbar-item navbar-logo"
						style="margin-left: 20px; margin-right: 20px;"> <i
						class="fab fa-microsoft icon"></i>
					</a> <a href="selfMaking" class="navbar-item navbar-logo"> <i
						class="fas fa-user-alt"></i>
					</a>


					<!-- <nav class="slidemenu">

						Item 1
						<input type="radio" name="slideItem" id="slide-item-1"
							class="slide-toggle" checked /> <label for="slide-item-1"><p class="icon">♬</p>
							<span>Home</span></label>

						Item 2
						<input type="radio" name="slideItem" id="slide-item-2"
							class="slide-toggle" /> <label for="slide-item-2"><p class="icon">★</p>
							<span>About</span></label>

						Item 3
						<input type="radio" name="slideItem" id="slide-item-3"
							class="slide-toggle" /> <label for="slide-item-3"><p class="icon">✈</p>
							<span>Folio</span></label>

						Item 4
						<input type="radio" name="slideItem" id="slide-item-4"
							class="slide-toggle" /> <label for="slide-item-4"><p class="icon">✎</p>
							<span>Blog</span></label>

						<div class="clear"></div>

						Bar
						<div class="slider">
							<div class="bar"></div>
						</div>

					</nav> -->

				</div>

				<!-- navbar-right -->
				<div class="navbar-right">
					<a class="navbar-item" data-toggle="dropdown" aria-expanded="false">
						<i class="fas fa-search"></i>
					</a>

					<div id="search" class="dropdown-menu"
						style="margin-left: 150px; margin-right: 150px; margin-top: 0px;">

						<!-- exit_button -->
							<div>
								<button type="button" class="close" aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
							</div>
							<!-- exit_button_end -->


						<div class="row_drop_search">
							<div class="col-md-12" id="bs-megadropdown-tabs">
								<div class="row">
									<div class="card-group">
										<div class="card col-md-3">
											<div class="card-body" id="filter1">
												<!-- style="border-right: 1px solid #e8dfdf6e;" -->
												<h4 class="card-title">BASE SPIRITS</h4>

												<div style="float: left;">
													<input class = "spirit_check" type='checkbox' name='all' value='valuable' id="all" />
														<label for="all">  
														 	<img src="./resources/assets/basic/img/spirit_icon/spirit_icon_gray/icon_all_cn.png" />
														</label>
														
													<input class = "spirit_check" type='checkbox' name='brandy' value='valuable' id="brandy" /> 
														<label for="brandy"> 
															<img src="./resources/assets/basic/img/spirit_icon/spirit_icon_gray/icon_brandy_cn.png" />
														</label> 
														
													<input class = "spirit_check" type='checkbox' name='whisky' value='valuable' id="whisky" /> 
														<label for="whisky"> 
															<img src="./resources/assets/basic/img/spirit_icon/spirit_icon_gray/icon_whisky_cn.png" />
														</label>
														
														
													<input class = "spirit_check" type='checkbox' name='vodka' value='valuable' id="vodka" /> 
														<label for="vodka"> 
															<img src="./resources/assets/basic/img/spirit_icon/spirit_icon_gray/icon_vodka_cn.png" />
														</label> 
														
													<input class = "spirit_check" type='checkbox' name='rum' value='valuable' id="rum" /> 
														<label for="rum"> 
															<img src="./resources/assets/basic/img/spirit_icon/spirit_icon_gray/icon_rum_cn.png" />
														</label> 
														
													<input class = "spirit_check" type='checkbox' name='jin' value='valuable' id="jin" /> 
														<label for="jin"> 
															<img src="./resources/assets/basic/img/spirit_icon/spirit_icon_gray/icon_jin_cn.png" />
														</label> 
														
													<input class = "spirit_check" type='checkbox' name='tequila' value='valuable' id="tequila" /> 
														<label for="tequila"> 
															<img src="./resources/assets/basic/img/spirit_icon/spirit_icon_gray/icon_tequila_cn.png" />
														</label> 
														
													<input class = "spirit_check" type='checkbox' name='ETC' value='valuable' id="ETC" /> 
														<label for="ETC"> 
															<img src="./resources/assets/basic/img/spirit_icon/spirit_icon_gray/icon_etc_cn.png" />
														</label> 
														
												</div>
												<!-- <div id="alcole" class="button-group"
												data-filter-group='alcole'>
												<ul class="nav-list list-inline">
													<li class = "nav_li"><img src="">All</li>
													<li class = "nav_li"><img src="">Brandy</li>
													<li class = "nav_li"><img src="">Whisky</li>
													<li class = "nav_li"><img src="">Vodka</li>
												</ul>
												<ul class="nav-list list-inline">
													<li class = "nav_li"><img src="">Rum</li>
													<li class = "nav_li"><img src="">Dry
													<li class = "nav_li"><img src="">Jin</li>
													<li class = "nav_li"><img src="">Tequila</li>
												</ul>


												<ul class="nav-list list-inline">
													<li><button class="button is-checked" data-filter="*">All</button></li>
													<li><button class="button" data-filter=".브랜디">Brandy</button></li>
													<li><button class="button" data-filter=".위스키">Whisky</button></li>
													<li><button class="button" data-filter=".보드카">Vodka</button></li>
													<li><button class="button" data-filter=".럼">Rum</button></li>
													<li><button class="button" data-filter=".드라이진">Dry
															Jin</button></li>
													<li><button class="button" data-filter=".테킬라">Tequila</button></li>
												</ul> -->
											</div>

										</div>

										<!-- BASE SPIRITS -->

										<div class="card col-md-3">
											<div class="card-body" id="filter4">
												<h4 class="card-title">Color</h4>

												<div style="float: left;">
																										
													<label class="cream"> <input type="radio"
														name="color" value="cream">
														<div class="color_layer"></div>
														<div class="color_button">
															<span></span>
														</div>
													</label> 
													
													<label class="yellow"> <input type="radio"
														name="color" value="yellow">
														<div class="color_layer"></div>
														<div class="color_button">
															<span></span>
														</div>
													</label> 
													
													<label class="orange"> <input type="radio"
														name="color" value="orange">
														<div class="layer"></div>
														<div class="color_button">
															<span></span>
														</div>
													</label>
													
													<label class="red"> <input type="radio"
														name="color" value="red">
														<div class="layer"></div>
														<div class="color_button">
															<span></span>
														</div>
													</label>
													
													<label class="brown"> <input type="radio"
														name="color" value="brown">
														<div class="layer"></div>
														<div class="color_button">
															<span></span>
														</div>
													</label>
													
													<label class="green"> <input type="radio"
														name="color" value="green">
														<div class="layer"></div>
														<div class="color_button">
															<span></span>
														</div>
													</label>
													
													<label class="blue"> <input type="radio"
														name="color" value="blue">
														<div class="color_layer"></div>
														<div class="color_button">
															<span></span>
														</div>
													</label> 
													
													<label class="pink"> <input type="radio"
														name="color" value="pink">
														<div class="color_layer"></div>
														<div class="color_button">
															<span></span>
														</div>
													</label> 
													
													<label class="peach"> <input type="radio"
														name="color" value="peach">
														<div class="color_layer"></div>
														<div class="color_button">
															<span></span>
														</div>
													</label> 
													
												</div>

												<!-- <div id="color" class="button-group"
												data-filter-group='color'
												style="border-right: 1px solid #e8dfdf6e;">
												<ul class="nav-list list-inline">
													<li><button class="button is-checked" data-filter="*">All</button></li>
													<li><button class="button" data-filter=".시럽">Red</button></li>
													<li><button class="button" data-filter=".레몬">Blue</button></li>
													<li><button class="button" data-filter=".사과">Green</button></li>
													<li><button class="button" data-filter=".체리">Pink</button></li>
													<li><button class="button" data-filter=".파인애플">Orenge</button></li>
													<li><button class="button" data-filter=".라임">Yellow</button></li>
												</ul>
											</div> -->

											</div>
											<!-- Color -->
										</div>

										<div class="card col-md-3">
											<div class="card-body" id="filter2">
												<h4 class="card-title">liqueur</h4>
												<div class="row_checkBox">
												
													<div class="CheckBox_wrapper_liqueur" style="margin-left: 25px; margin-top: 10px;">

														<div>
															<input type="checkbox" id="check_liqueur_all" /> <label
																class="label_liqueur" for="check_liqueur_all">
																<div>
																	<i class="fa fa-check"></i>
																</div>All
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_liqueur_wine" /> <label
																class="label_liqueur" for="check_liqueur_wine">
																<div>
																	<i class="fa fa-check"></i>
																</div>Wine
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_liqueur_bitters" /> <label
																class="label_liqueur" for="check_liqueur_bitters">
																<div>
																	<i class="fa fa-check"></i>
																</div>Bitters
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_liqueur_beer" /> <label
																class="label_liqueur" for="check_liqueur_beer">
																<div>
																	<i class="fa fa-check"></i>
																</div>Beer
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_liqueur_liqueur" /> <label
																class="label_liqueur" for="check_liqueur_liqueur">
																<div>
																	<i class="fa fa-check"></i>
																</div>Liqueur
															</label>
														</div>
													</div>
													<!-- CheckBox_wrapper_end -->


													<div class="CheckBox_wrapper_liqueur2" style="margin-right: 15px; margin-top: 10px;">

														<div>
															<input type="checkbox" id="check_liqueur_cremeliqueur" /> <label
																class="label_liqueur" for="check_liqueur_cremeliqueur">
																<div>
																	<i class="fa fa-check"></i>
																</div>Creme liqueur
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_liqueur_sherry" /> <label
																class="label_liqueur" for="check_liqueur_sherry">
																<div>
																	<i class="fa fa-check"></i>
																</div>Sherry
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_liqueur_vermouth" /> <label
																class="label_liqueur" for="check_liqueur_vermouth">
																<div>
																	<i class="fa fa-check"></i>
																</div>Vermouth
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_liqueur_amaretto" /> <label
																class="label_liqueur" for="check_liqueur_amaretto">
																<div>
																	<i class="fa fa-check"></i>
																</div>Amaretto
															</label>
														</div>
													</div>
													<!-- CheckBox_wrapper2_end -->

												</div>

												<!-- <div id="liqueur" class="button-group"
													data-filter-group='liqueur'>
													<ul class="nav-list list-inline">
														<li><button class="button is-checked" data-filter="*">All</button></li>
														<li><button class="button" data-filter=".와인">Wine</button></li>
														<li><button class="button" data-filter=".비터스">Bitters</button></li>
														<li><button class="button" data-filter=".비어">Beer</button></li>
														<li><button class="button" data-filter=".리큐르">Liqueur</button></li>
														<li><button class="button" data-filter=".크레임">Cemeliqueur</button></li>
														<li><button class="button" data-filter=".쉐리">Sherry</button></li>
														<li><button class="button" data-filter=".베르무트">Vermouth</button></li>
														<li><button class="button" data-filter=".아마레또">Amaretto</button></li>
													</ul>
												</div> -->
											</div>
											<!-- liqueur -->
										</div>

										<div class="card col-md-3">
											<div class="card-body" id="filter3">
												<h4 class="card-title">material</h4>
												<div class="row_checkBox">

													<div class="CheckBox_wrapper_material" style="margin-top: 10px;margin-right: 27px;">

														<div>
															<input type="checkbox" id="check_material_all" /> <label
																class="label_material" for="check_material_all">
																<div>
																	<i class="fa fa-check"></i>
																</div>All
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_apple" /> <label
																class="label_material" for="check_material_apple">
																<div>
																	<i class="fa fa-check"></i>
																</div>Apple
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_cherry" /> <label
																class="label_material" for="check_material_cherry">
																<div>
																	<i class="fa fa-check"></i>
																</div>Cherry
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_coconut" /> <label
																class="label_material" for="check_material_coconut">
																<div>
																	<i class="fa fa-check"></i>
																</div>Coconut
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_grapefruit" /> <label
																class="label_material" for="check_material_grapefruit">
																<div>
																	<i class="fa fa-check"></i>
																</div>Grape Fruit
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_lemon" /> <label
																class="label_material" for="check_material_lemon">
																<div>
																	<i class="fa fa-check"></i>
																</div>Lemon
															</label>
														</div>
														<!-- CheckBox_wrapper1_end -->
													</div>

													<div class="CheckBox_wrapper_material2" style="margin-top: 10px;">
														<div>
															<input type="checkbox" id="check_material_lime" /> <label
																class="label_material" for="check_material_lime">
																<div>
																	<i class="fa fa-check"></i>
																</div>Lime
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_raspberry" /> <label
																class="label_material" for="check_material_raspberry">
																<div>
																	<i class="fa fa-check"></i>
																</div>Raspberry
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_orange" /> <label
																class="label_material" for="check_material_orange">
																<div>
																	<i class="fa fa-check"></i>
																</div>Orange
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_peach" /> <label
																class="label_material" for="check_material_peach">
																<div>
																	<i class="fa fa-check"></i>
																</div>Peach
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_pineapple" /> <label
																class="label_material" for="check_material_pineapple">
																<div>
																	<i class="fa fa-check"></i>
																</div>Pineapple
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_tomato" /> <label
																class="label_material" for="check_material_tomato">
																<div>
																	<i class="fa fa-check"></i>
																</div>Tomato
															</label>
														</div>

													</div>
													<!-- CheckBox_wrapper2_end -->


													<div class="CheckBox_wrapper_material3" style="margin-top: 10px;">

														<div>
															<input type="checkbox" id="check_material_egg" /> <label
																class="label_material" for="check_material_egg">
																<div>
																	<i class="fa fa-check"></i>
																</div>Egg
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_gingerale" /> <label
																class="label_material" for="check_material_gingerale">
																<div>
																	<i class="fa fa-check"></i>
																</div>Gingerale
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_milk" /> <label
																class="label_material" for="check_material_milk">
																<div>
																	<i class="fa fa-check"></i>
																</div>Milk
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_sugar" /> <label
																class="label_material" for="check_material_sugar">
																<div>
																	<i class="fa fa-check"></i>
																</div>Sugar
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_spicy" /> <label
																class="label_material" for="check_material_spicy">
																<div>
																	<i class="fa fa-check"></i>
																</div>Spicy
															</label>
														</div>

														<div>
															<input type="checkbox" id="check_material_syrup" /> <label
																class="label_material" for="check_material_syrup">
																<div>
																	<i class="fa fa-check"></i>
																</div>Syrup
															</label>
														</div>

													</div>
													<!-- CheckBox_wrapper3_end -->
												</div>
												<!-- checkbox_end -->
												
												<!-- <div id="material" class="button-group"
													data-filter-group='material'>
													<ul class="nav-list list-inline">
														
														<li class="button" data-filter=".시럽">Syrup</li>
														
														
														
														<li class="button" data-filter=".파인애플">Pineapple</li>/
														
														
														
														<li class="button" data-filter=".토마토">Tomato</li>/
														
														
														<li class="button" data-filter=".계란">Egg</li>
														<li class="button" data-filter=".스파이시">Spicy</li>
														<li class="button" data-filter=".설탕">Sugar</li>
														<li class="button" data-filter=".우유">Milk</li>
														
														<li class="button" data-filter=".탄산수">Soda</li>
														<li class="button" data-filter=".진저에일">Gingerale</li>
													</ul>
												</div> -->
												
											</div>
										</div>
										<!--material-->
									</div>
								</div>
							</div>

							<div class="row_cocktail_fliter">
								<div class="grid">
									<c:forEach var="cocktail" items="${cocktailList }">
										<div
											class="tile flip element-item ${cocktail.alcole } ${cocktail.liqueur } ${cocktail.mateial }"
											data-category="transition">
											<div>
												<img src="${cocktail.imagerink }" height="100" width="100">
											</div>
											<a
												href="cocktailDetail?cocktailname=${cocktail.cocktailname }">
												${cocktail.cocktailname } </a>
										</div>
									</c:forEach>
								</div>
							</div>
							<!-- cocktail_Fliter -->
						</div>
						<!-- dropdax_menu -->
					</div>
				</div>


				<div class="navbar-avatar" style="margin-left: 19px;">
					<a href="eachoneProfile" class="navbar-item is-avatar"
						@click.prevent="showProfilePanel"> <img
						src="https://unsplash.it/200/200?image=1005" alt="Avatar" />
					</a>
				</div>

			</div>
		</div>
		<!-- container -->
	</div>


	<!-- slideshow -->
	<div>
		
		<!-- <div class="container">
			<div class="slide_row" id="slideshow">
				<div class="col-md-12" id="slideshow">
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide"
									style="background-image: url(./resources/assets/main/img/slideshow1.jpg?h=acd8c032b5252903d5531d2e4a227dcc)"></div>
								<div class="swiper-slide"
									style="background-image: url(./resources/assets/main/img/slideshow2.jpg?h=ca5b6de7017b0ae20ce9940097332a99)"></div>
								<div class="swiper-slide"
									style="background-image: url(./resources/assets/main/img/slideshow3.jpg?h=bf73d8424e46231796e3733202d61a4b)"></div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
				</div>
			</div>
			 -->
			<!--  -->
			
			<div id="userEL2556136-carousel" class="carousel slide carousel-fade userEL2556136 el_0 element" data-ride="carousel" data-id="2556136" data-el="el_0" data-pos="1" data-name="userEL2556136" data-msny="false" data-type="showcase" data-type2="imgsize" data-mode="" data-width="0" data-overlap="0" style="font-family: Roboto, &quot;Nanum Gothic&quot;, Tahoma, Dotum, Verdana, Arial, &quot;Trebuchet MS&quot;, &quot;Nanum Gothic&quot;; margin-top: 0px; top: 0px;">
		    <div class="container">
		        <div class="row">
		            <!-- Carousel items -->
		            <div class="carousel-inner" data-loop="true" data-selector=".item">
		                <div class="item">
		                    <img src="//storage.googleapis.com/cr-resource/image/ca88a4ffad44d88281a70309eb5a61cd/kaa1910/1fbc195b9975b6ccce7b32533bdfe0dd.jpg" class="img-responsive" data-attach="true" data-pagespeed-url-hash="2902289004" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
		                </div>
		                <div class="item">
		                    <img src="//storage.googleapis.com/cr-resource/image/ca88a4ffad44d88281a70309eb5a61cd/kaa1910/2cf35c81f6dfae41bb37900660e004b8.jpg" class="img-responsive" data-attach="true" data-pagespeed-url-hash="1045650525" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
		                </div>
		                <div class="item active">
		                    <img src="//storage.googleapis.com/cr-resource/image/ca88a4ffad44d88281a70309eb5a61cd/kaa1910/00de1666c599d6adc24d0ff77d3821e5.jpg" class="img-responsive" data-attach="true" data-pagespeed-url-hash="1335854789" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
		                </div>
		            </div>
		            <!-- Carousel nav -->
		            <div class="control-box left" data-selector=".control-box" data-background="true" data-title="content background">
		                <a class="carousel-control left" href="#userEL2556136-carousel" data-slide="prev"><span></span></a>
		            </div>
		            <div class="control-box right" data-selector=".control-box" data-background="true" data-title="content background">
		                <a class="carousel-control right" href="#userEL2556136-carousel" data-slide="next"><span></span></a>
		            </div>
		            <ol class="carousel-indicators" data-nav="true">
		                <li data-target="#userEL925219-carousel" data-slide-to="0" class=""></li>
		                <li data-target="#userEL925219-carousel" data-slide-to="1" class=""></li>
		                <li data-target="#userEL925219-carousel" data-slide-to="2" class="active"></li>
		            </ol>
		        </div>
		    </div>
		</div>
			
			
			
			<div class="row" id="cocktails">
				<div class="col-md-12" id="recommend_title">
					<h2 class="chapter ng-binding">
						<br> <small> <br> <i
							class="js-filter-text ng-binding">Popular</i><br>
						</small>Cocktails
					</h2>
				</div>
				<div class="col-md-12" id="recommend">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr></tr>
							</thead>
							<tbody>
								<tr>
									<td><img src="/resources/assets/basic/img/カクテルアイコン5.png">
									</td>
									<td><img src="/resources/assets/basic/img/カクテルアイコン5.png">
									</td>
									<td><img src="/resources/assets/basic/img/カクテルアイコン5.png">
									</td>
									<td><img src="/resources/assets/basic/img/カクテルアイコン5.png">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row" id="photos">
				<div class="col-md-12" id="photo_title">
					<h2 class="chapter ng-binding">
						<br> <small> <br> <i
							class="js-filter-text ng-binding">Popular</i><br>
						</small>Photos
					</h2>
				</div>
				<div class="col-md-12" id="recommend">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr></tr>
							</thead>
							<tbody>
								<tr>
									<td><img
										src="./resources/assets/gallery/img/test_image/large/1.png"></td>
									<td><img
										src="./resources/assets/gallery/img/test_image/large/1.png"></td>
									<td><img
										src="./resources/assets/gallery/img/test_image/large/1.png"></td>
									<td><img
										src="./resources/assets/gallery/img/test_image/large/1.png"></td>
									<td><img
										src="./resources/assets/gallery/img/test_image/large/1.png"></td>
									<td><img
										src="./resources/assets/gallery/img/test_image/large/1.png"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script
		src="./resources/assets/modal_makingCocktail/js/ninja-slider.js"></script>
	<script
		src="./resources/assets/modal_makingCocktail/js/thumbnail-slider.js"></script>
	<script src="./resources/assets/tag/js/search_tag.js"></script>
	<script src="./resources/assets/basic/js/photo_profile.js"></script>
	<script src="./resources/assets/main/js/Simple-Slider.js"></script>
	<!-- <script
		src="./resources/assets/basic/js/proflie_slide/proflieSlide_slideclassie.js"></script> -->
	<!-- <script
		src="./resources/assets/basic/js/proflie_slide/proflieSlide_modernizr.custom.js"></script> -->


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

	<script>
		$('.dropdown-menu').on("click.bs.dropdown", function(e) {
			e.stopPropagation();
			/* e.preventDefault(); */
		});
	</script>
	<!-- dropdown box not close -->
	
	
</body>

</html>