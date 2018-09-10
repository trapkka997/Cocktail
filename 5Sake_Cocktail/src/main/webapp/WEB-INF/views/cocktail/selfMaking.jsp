<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>NEWS FEED</title>
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/navbar/navbar.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/proflie_slide/slide_component.css">
<!--profile-->
<link rel="stylesheet"	href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/profile/default.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
<link rel="stylesheet"  href="./resources/assets/tag/css/tag_default.css">

<link rel="stylesheet" href="./resources/assets/selfmaking/css/button/button.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet" href="./resources/assets/selfmaking/css/slidepush/proflie_slide.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/uploadbutton.css">
<style>
.card {
	flex-direction: inherit;
}

.card-body {
	text-align: center;
}

.img {
	width: 200px;
	border: 20px solid black;
	border-radius: 50%
}

.tag {
	background-color: #17a2b8;
	border-radius: 10%;
}

@import url("https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz")
	;


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
.flip>div, .flip a {
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

.flip:hover>div, .flip>a {
	-webkit-transition: 0.05s all linear 0;
	-moz-transition: 0.05s all linear 0;
	-o-transition: 0.05s all linear 0;
	-ms-transition: 0.05s all linear 0;
	transition: 0.05s all linear 0;
}

.flip:hover>a, .flip>div {
	-webkit-transition: 0.05s all linear 0.05s;
	-moz-transition: 0.05s all linear 0.05s;
	-o-transition: 0.05s all linear 0.05s;
	-ms-transition: 0.05s all linear 0.05s;
	transition: 0.05s all linear 0.05s;
}
/* Slide effect */
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
/* Shutter effect */
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
	-webkit-transform-origin: 0% 0%;
	-moz-transform-origin: 0% 0%;
	-o-transform-origin: 0% 0%;
	-ms-transform-origin: 0% 0%;
	transform-origin: 0% 0%;
}

.shutter:hover>div {
	-webkit-transform: rotateX(90deg);
	-moz-transform: rotateX(90deg);
	-o-transform: rotateX(90deg);
	-ms-transform: rotateX(90deg);
	transform: rotateX(90deg);
}
/* Page effect */
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
	-webkit-transform-origin: 0% 0%;
	-moz-transform-origin: 0% 0%;
	-o-transform-origin: 0% 0%;
	-ms-transform-origin: 0% 0%;
	transform-origin: 0% 0%;
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
				<div class="navbar-left">
					<a class="navbar-toggle" data-toggle="dropdown"
						aria-expanded="false" href="#"> <span></span> <span></span> <span></span>
						<div id="recommend" class="dropdown-menu" style="margin-left: 170px; margin-top: 0px; width: 1500px;">
							<div>
								<div>
									<button type="button" class="close" aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
								</div>
								<div class="row_drop_userRecommend">
									<div class="col-md-12">
										<div class="card-group">
											<div class="card">
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">
														<img src='./resources/assets/basic/img/カクテルアイコン5.png'
															class='img' />
													</p>
													<label><h2>UserID</h2></label>
													<p>
														<label>추천칵테일</label>
												</div>
											</div>
											<!-- user picture here -->

											<div class="card">
												<div class="card-body">
													<h4 class="card-title">Alcohol</h4>
													<p class="card-text">
														<img src='./resources/assets/basic/img/カクテルアイコン5.png'
															class='img' />
													</p>
													<div>
														<h4>
															<label>cocktailName</label>
														</h4>
														<p>
															<label class="tag">#태그명</label> <label class="tag">#태그명</label>
															<label class="tag">#태그명</label>
													</div>
												</div>
											</div>
											<!-- randam cocktail -->

											<div class="card">
												<div class="card-body">
													<h4 class="card-title">Liqueur</h4>
													<p class="card-text">
														<img src='./resources/assets/basic/img/カクテルアイコン5.png'
															class='img' />
													</p>
													<div>
														<h4>
															<label>cocktailName</label>
														</h4>
														<p>
															<label class="tag">#태그명</label> <label class="tag">#태그명</label>
															<label class="tag">#태그명</label>
													</div>
												</div>
											</div>
											<!-- randam cocktail -->

											<div class="card">
												<div class="card-body">
													<h4 class="card-title">Material</h4>
													<p class="card-text">
														<img src='./resources/assets/basic/img/カクテルアイコン5.png'
															class='img' />
													</p>
													<div>
														<h4>
															<label>cocktailName</label>
														</h4>
														<p>
															<label class="tag">#태그명</label> <label class="tag">#태그명</label>
															<label class="tag">#태그명</label>
													</div>
												</div>
											</div>
											<!-- randam cocktail -->
										</div>
									</div>
								</div>
								<!-- row_drop_userRecommend end -->
								<div class="row_siterecommend">
									<div class="col-md-12">
										<div class="card-group">
											<div class="card">
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">
														<img src='./resources/assets/basic/img/カクテルアイコン5.png'
															class='img' />
													</p>
													<div>
														<h4>
															<label>cocktailName</label>
														</h4>
														<p>
															<label class="tag">#태그명</label> <label class="tag">#태그명</label>
															<label class="tag">#태그명</label>
													</div>
												</div>
											</div>
											<!-- randam cocktail -->
											<div class="card">
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">
														<img src='./resources/assets/basic/img/カクテルアイコン5.png'
															class='img' />
													</p>
													<div>
														<h4>
															<label>cocktailName</label>
														</h4>
														<p>
															<label class="tag">#태그명</label> <label class="tag">#태그명</label>
															<label class="tag">#태그명</label>
													</div>
												</div>
											</div>
											<!-- randam cocktail -->
											<div class="card">
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">
														<img src='./resources/assets/basic/img/カクテルアイコン5.png'
															class='img' />
													</p>
													<div>
														<h4>
															<label>cocktailName</label>
														</h4>
														<p>
															<label class="tag">#태그명</label> <label class="tag">#태그명</label>
															<label class="tag">#태그명</label>
													</div>
												</div>
											</div>
											<!-- randam cocktail -->
										</div>
									</div>
								</div>
							</div>
						</div> <!-- dropdax_menu -->
					</a>
				</div>
				<!-- navbar-left -->
				<div class="navbar-center">
					<a href="cocktailphoto" class="navbar-item navbar-logo"> 
						<i	class="fas fa-glass-martini icon"></i>
					</a> 
					<a href="userphoto" class="navbar-item navbar-logo"> 
						<i class="fab fa-microsoft icon"></i>
					</a> 
					<a href="selfMaking" class="navbar-item navbar-logo"> 
						<i class="fas fa-user-alt"></i>
					</a>
				</div>
				<!-- navbar-center -->
				<div class="navbar-right">
					<a href="#" class="navbar-item" data-toggle="dropdown"
						aria-expanded="false" href="#"> <i id="showRightPush"
						class="fas fa-search"></i>
					</a>
					<div id="search" class="dropdown-menu"
						style="margin-left: 150px; margin-right: 150px; margin-top: 0px;">
						<div class="row_drop_search">
							<div id="exid_button">
								<button type="button" class="close" aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
							</div>
							<div class="col-md-12">
								<div class="card-group">
									<div class="card">
										<div class="card-body" id="filter1">
											<h4 class="card-title">BASE SPIRITS</h4>
											<div id="alcole" class="button-group"
												data-filter-group='alcole'>
												<button class="button is-checked" data-filter="*">All</button>
												<button class="button" data-filter=".브랜디">Brandy</button>
												<button class="button" data-filter=".위스키">Whisky</button>
												<button class="button" data-filter=".보드카">Vodka</button>
												<button class="button" data-filter=".럼">Rum</button>
												<button class="button" data-filter=".드라이진">Dry Jin</button>
												<button class="button" data-filter=".테킬라">Tequila</button>
											</div>
										</div>
									</div>
									<!-- user picture here -->

									<div class="card">
										<div class="card-body" id="filter2">
											<h4 class="card-title">liqueur</h4>
											<div id="liqueur" class="button-group"
												data-filter-group='liqueur'>
												<button class="button is-checked" data-filter="*">All</button>
												<button class="button" data-filter=".와인">Wine</button>
												<button class="button" data-filter=".비터스">Bitters</button>
												<button class="button" data-filter=".비어">Beer</button>
												<button class="button" data-filter=".리큐르">Liqueur</button>
												<button class="button" data-filter=".크레임">Cemeliqueur</button>
												<button class="button" data-filter=".쉐리">Sherry</button>
												<button class="button" data-filter=".베르무트">Vermouth</button>
												<button class="button" data-filter=".아마레또">Amaretto</button>
											</div>
										</div>
										<!-- randam cocktail -->
									</div>
									<div class="card">
										<div class="card-body" id="filter3">
											<h4 class="card-title">material</h4>
											<div id="material" class="button-group"
												data-filter-group='material'>
												<button class="button is-checked" data-filter="*">All</button>
												<button class="button" data-filter=".시럽">Syrup</button>
												<button class="button" data-filter=".레몬">Lemon</button>
												<button class="button" data-filter=".사과">Apple</button>
												<button class="button" data-filter=".체리">Cherry</button>
												<button class="button" data-filter=".파인애플">Pineapple</button>
												<button class="button" data-filter=".라임">Lime</button>
												<button class="button" data-filter=".오렌지">Orange</button>
												<button class="button" data-filter=".코코넛">Coconut</button>
												<button class="button" data-filter=".토마토">Tomato</button>
												<button class="button" data-filter=".자몽">Grapefruit</button>
												<button class="button" data-filter=".라즈베리">Raspberry</button>
												<button class="button" data-filter=".계란">Egg</button>
												<button class="button" data-filter=".스파이시">Spicy</button>
												<button class="button" data-filter=".설탕">Sugar</button>
												<button class="button" data-filter=".우유">Milk</button>
												<button class="button" data-filter=".복숭아">Peach</button>
												<button class="button" data-filter=".탄산수">Soda</button>
												<button class="button" data-filter=".진저에일">Gingerale</button>
											</div>
										</div>
										<!-- randam cocktail -->
									</div>
									<div class="card">
										<div class="card-body" id="filter4">
											<h4 class="card-title">Color</h4>
											<div id="color" class="button-group"
												data-filter-group='color'>
												<button class="button is-checked" data-filter="*">All</button>
												<button class="button" data-filter=".시럽">Red</button>
												<button class="button" data-filter=".레몬">Blue</button>
												<button class="button" data-filter=".사과">Green</button>
												<button class="button" data-filter=".체리">Pink</button>
												<button class="button" data-filter=".파인애플">Orenge</button>
												<button class="button" data-filter=".라임">Yellow</button>
											</div>
										</div>
										<!-- randam cocktail -->
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
  											<a href="cocktailDetail?cocktailname=${cocktail.cocktailname }">
     											${cocktail.cocktailname }
  											</a>
										</div>
									</c:forEach>
								</div>
							</div>
							<!-- cocktail_Fliter -->
						</div>
						<!-- dropdax_menu -->
					</div>


					<div class="navbar-avatar">
						<a id='showRight' href="#" class="navbar-item is-avatar"
							@click.prevent="showProfilePanel"> <img
							src="https://unsplash.it/200/200?image=1005" alt="Avatar" />
						</a>
					</div>
					<!-- navbar-right -->

				</div>
			</div>
			<!-- container -->

		</div>

		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right"
			id="cbp-spmenu-s2">
			<div class="device">
				<div id="exid_button">
					<button type="button" class="close" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="top">
					<div class="device-overlay"></div>
					<div class="editable">
						<div class="editable__circle">
							<div class="editable__rotater">
								<div class="editable__rotater-item">
									<i class="fa fa-camera"></i>
								</div>
							</div>
							<div class="editable__rotater">
								<div class="editable__rotater-item">
									<i class="fa fa-comments"></i>
								</div>
							</div>
							<div class="editable__rotater">
								<div class="editable__rotater-item">
									<i class="fa fa-video-camera"></i>
								</div>
							</div>
							<div class="editable__rotater">
								<div class="editable__rotater-item">
									<i class="fa fa-user"></i>
								</div>
							</div>
						</div>
						<div class="editable__cont">
							<img src="./resources/assets/gallery/img/test_image/large/3.png"
								class="editable__cont-img"> <span
								class="editable__cont-edit js-edit"> <i
								class="fa fa-pencil-square-o"></i>
							</span>
						</div>
					</div>
				</div>
				<div class="mid">
					<div class="mid-block">
						<h2 class="mid-number">77</h2>
						<h3 class="mid-text">Teams</h3>
					</div>
					<div class="mid-block">
						<h2 class="mid-number">666</h2>
						<h3 class="mid-text">Reports</h3>
					</div>
				</div>
				<div class="btm">
					<h2 class="btm-text">Whatever</h2>
				</div>
				<div class="second">
					<h2 class="second__h">Hello there!</h2>
					<span class="second__back">Go back</span> <a
						href="https://codepen.io/suez/public/" target="_blank"
						class="second__other">My other demos</a>
				</div>
			</div>
		</nav>
	</div>
	
	<!-- proflie_slideEnd -->
	
	  <div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="button_container">
                        <div class="outer">
                            <div class="inner">
                            	<div id="selfMaking_button">
 								 	<h1 style="margin-top: 20px;">spirits</h1>
  									<div id="alcole" class="button-group" data-filter-group='alcole' style="margin-top: 20px; margin-bottom:20px;">
										<button id ="selfMaking_tag_button1" class="btn btn-outline-primary" data-filter="*" style="margin-left: 5px; margin-right: 5px;">ALL</button>
										<button id ="selfMaking_tag_button2" class="btn btn-outline-primary" data-filter=".브랜디" style="margin-left: 5px; margin-right: 5px;">Brandy</button>
										<button id ="selfMaking_tag_button3" class="btn btn-outline-primary" data-filter=".위스키" style="margin-left: 5px; margin-right: 5px;">Whisky</button>
										<button id ="selfMaking_tag_button4" class="btn btn-outline-primary" data-filter=".보드카" style="margin-left: 5px; margin-right: 5px;">Vodka</button>
										<button id ="selfMaking_tag_button5" class="btn btn-outline-primary" data-filter=".럼" style="margin-left: 5px; margin-right: 5px;">Rum</button>
										<button id ="selfMaking_tag_button6" class="btn btn-outline-primary" data-filter=".드라이진" style="margin-left: 5px; margin-right: 5px;">Dry Jin</button>
										<button id ="selfMaking_tag_button7" class="btn btn-outline-primary" data-filter=".테킬라" style="margin-left: 5px; margin-right: 5px;">Tequila</button>
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
						        <img src="./resources/assets/gallery/img/test_image/1.png?h=0ed61aba228834238bbc3794d5958ca2" alt="img01" />
						        <figcaption>
						          <h3>Letterpress asymmetrical</h3>
						          <p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
						        </figcaption>
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <img src="./resources/assets/gallery/img/test_image/2.png?h=1011141680a7d0879a238ff5475aea00" alt="img02" />
						        <figcaption>
						          <h3>Vice velit chia</h3>
						          <p>Laborum tattooed iPhone, Schlitz irure nulla Tonx retro 90's chia cardigan quis asymmetrical paleo. </p>
						        </figcaption>
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <img src="./resources/assets/gallery/img/test_image/3.png?h=3702fe9168869d38c40159e52bc59b89" alt="img03" />
						        <figcaption>
						          <h3>Brunch semiotics</h3>
						          <p>Ex disrupt cray yr, butcher pour-over magna umami kitsch before they sold out commodo.</p>
						        </figcaption>
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <img src="./resources/assets/gallery/img/test_image/4.png?h=fe5bad26caaa123e89ace9ab816c3323" alt="img04" />
						        <figcaption>
						          <h3>Chillwave nihil occupy</h3>
						          <p>In post-ironic gluten-free deserunt, PBR&amp;B non pork belly cupidatat polaroid. </p>
						        </figcaption>
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <img src="./resources/assets/gallery/img/test_image/5.png?h=95eae5b20abbb45d2c689ed846f2e049" alt="img05" />
						        <figcaption>
						          <h3>Kale chips lomo biodiesel</h3>
						          <p>Pariatur food truck street art consequat sustainable, et kogi beard qui paleo. </p>
						        </figcaption>
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <img src="./resources/assets/gallery/img/test_image/6.png?h=8f1c92ec7cc8afde62f7657f5ce41caa" alt="img06" />
						        <figcaption>
						          <h3>Exercitation occaecat</h3>
						          <p>Street chillwave hoodie ea gentrify.</p>
						        </figcaption>
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <img src="./resources/assets/gallery/img/test_image/1.png?h=0ed61aba228834238bbc3794d5958ca2" alt="img01" />
						        <figcaption>
						          <h3>Selfies viral four</h3>
						          <p>Raw denim duis Tonx Shoreditch labore swag artisan High Life cred, stumptown Schlitz quinoa flexitarian mollit fanny pack.</p>
						        </figcaption>
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <img src="./resources/assets/gallery/img/test_image/2.png?h=1011141680a7d0879a238ff5475aea00" alt="img02" />
						        <figcaption>
						          <h3>Photo booth skateboard</h3>
						          <p>Vinyl squid ex High Life. Paleo Neutra nulla master cleanse, Helvetica et enim nesciunt esse.</p>
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
						        <img src="./resources/assets/gallery/img/test_image/large/1.png?h=5dd373f0d43b9f3b1d44ccb69382c15d" alt="img01" />
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <figcaption>
						          <h3>Vice velit chia</h3>
						          <p>Chillwave Echo Park Etsy organic Cosby sweater seitan authentic pour-over. Occupy wolf selvage bespoke tattooed, cred sustainable Odd Future hashtag butcher.</p>
						        </figcaption>
						        <img src="./resources/assets/gallery/img/test_image/large/2.png?h=30ca609a0cf726ee2a14f61d676cb855" alt="img02" />
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <figcaption>
						          <h3>Brunch semiotics</h3>
						          <p>IPhone PBR polaroid before they sold out meh you probably haven't heard of them leggings tattooed tote bag, butcher paleo next level single-origin coffee photo booth.</p>
						        </figcaption>
						        <img src="./resources/assets/gallery/img/test_image/large/3.png?h=1ff64068a36b5870e8ac1908c85482e0" alt="img03" />
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <figcaption>
						          <h3>Chillwave nihil occupy</h3>
						          <p>Vice cliche locavore mumblecore vegan wayfarers asymmetrical letterpress hoodie mustache. Shabby chic lomo polaroid, scenester 8-bit Portland Pitchfork VHS tote bag.</p>
						        </figcaption>
						        <img src="./resources/assets/gallery/img/test_image/large/4.png?h=307c6f7499fcc652ac08364a551ac4e9" alt="img04" />
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <figcaption>
						          <h3>Kale chips lomo biodiesel</h3>
						          <p>Chambray Schlitz pug YOLO, PBR Tumblr semiotics. Flexitarian YOLO ennui Blue Bottle, forage dreamcatcher chillwave put a bird on it craft beer Etsy.</p>
						        </figcaption>
						        <img src="./resources/assets/gallery/img/test_image/large/5.png?h=3a8d64299f56d960f4bb3930ca331cea" alt="img05" />
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <figcaption>
						          <h3>Exercitation occaecat</h3>
						          <p>Cosby sweater hella lomo Thundercats VHS occupy High Life. Synth pop-up readymade single-origin coffee, fanny pack tousled retro. Fingerstache mlkshk ugh hashtag, church-key ethnic street art pug yr.</p>
						        </figcaption>
						        <img src="./resources/assets/gallery/img/test_image/large/6.png?h=9e1387f64df3552be2355ccf186fd846" alt="img06" />
						      </figure>
						    </li>
						    <li>
						      <figure>
						        <figcaption>
						          <h3>Selfies viral four</h3>
						          <p>Ethnic readymade pug, small batch XOXO Odd Future normcore kogi food truck craft beer single-origin coffee banh mi photo booth raw denim. XOXO messenger bag pug VHS. Forage gluten-free polaroid, twee hoodie chillwave Helvetica.</p>
						        </figcaption>
						        <img src="./resources/assets/gallery/img/test_image/large/1.png?h=5dd373f0d43b9f3b1d44ccb69382c15d" alt="img01" />
						      </figure>
						    </li>						   
						  </ul>
						  <nav>
						    <span class="icon nav-prev"></span>
						    <span class="icon nav-next"></span>
						    <span class="icon nav-close"></span>
						  </nav>
						  <div class="info-keys icon">Navigate with arrow keys</div>
						</section>						
					</div>
	            </div><div class="plus-button">+</div>
	        </div>
	    </div>
	 </div>

	<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script	src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/assets/basic/js/proflie_slide/classie.js"></script>
	<script	src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js"></script>
	<script src="./resources/assets/tag/js/search_tag.js"></script>	
    <script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>
    <script src="./resources/assets/gallery/js/gallery/gallery_classie.js"></script>
    <script src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js"></script>
    <script src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js"></script>
    <script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script>
          var menuRight = document.getElementById('cbp-spmenu-s2'),
            showRight = document.getElementById('showRight'),
            body = document.body;

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