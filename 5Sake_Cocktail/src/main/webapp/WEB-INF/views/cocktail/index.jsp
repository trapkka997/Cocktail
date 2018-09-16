<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>5Sake's Cocktail
</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
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
	href="./resources/assets/modal_makingCocktail/css/circle-progress-bar.css?h=a3fb9dca43f77251e0f00815d5fb05b2">
<link rel="stylesheet"
	href="./resources/assets/modal_makingCocktail/css/ninja-slider.css?h=36ca55b69bec564ac8a55b447db21f87">
<link rel="stylesheet"
	href="./resources/assets/modal_makingCocktail/css/thumbnail-slider.css?h=88ea8bccbed24d3703a2b324aaff99fd">
<link rel="stylesheet"
	href="./resources/assets/basic/css/modal.css?h=79846acf8bad6d3c01f5f6496c592036">
<link rel="stylesheet"
	href="./resources/assets/basic/css/photo_profile.css">
<link rel="stylesheet"
	href="./resources/assets/main/css/Simple-Slider.css?h=4617ba6673866be9ca12fcd9ef560578">
<link rel="stylesheet"
	href="./resources/assets/main/css/title/title.css?h=1a3fe257ec57297162763eee50f0dff7">

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

.tag {
	background: #3e5f52;
    margin-right: 5px;
    color: #fff;
    padding: 4px 7px;
    border-radius: 0.9rem;
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
			<div class="navabr-home">
			<a href = "">
			  <img src = './resources/assets/basic/img/navbar_home2.png' class = 'img'/>
			  </a>
			</div>
				<div class="navbar-left" style="width: 320px;">
					<a class="navbar-toggle" data-toggle="dropdown"
						aria-expanded="false" href="#"> <span></span> <span></span> <span></span>
						<div id="recommend" class="dropdown-menu" style="margin-left: 150px; margin-right: 150px; right: 0px;">
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
												<div class="card-body" style = "border-right: 1px inset">
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
									</div>
								</div>
								<!-- row_drop_userRecommend end -->
								<!-- <div class="row_siterecommend">
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
											randam cocktail
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
											randam cocktail
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
											randam cocktail
										</div>
									</div>
								</div> -->
							</div>
						</div> <!-- dropdax_menu -->
					</a>
				</div>
				<!-- navbar-left -->
				<div class="navbar-center">
					<a href="cocktailphoto" class="navbar-item navbar-logo"> <i
						class="fas fa-glass-martini icon"></i>
					</a> <a href="userphoto" class="navbar-item navbar-logo"
						style="margin-left: 20px; margin-right: 20px;"> <i
						class="fab fa-microsoft icon"></i>
					</a> <a href="selfMaking" class="navbar-item navbar-logo"> <i
						class="fas fa-user-alt"></i>
					</a>
				</div>
				<!-- navbar-center -->
				<div class="navbar-right">
					<a href="#" class="navbar-item" data-toggle="dropdown"
						aria-expanded="false"> <i class="fas fa-search"></i>
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
											class="tile flip element-item ${cocktail.ingredient}"
											data-category="transition">
											<div>
												<img src="${cocktail.imageRink }" height="100" width="100">
											</div>
											<a
												href="cocktailDetail?cocktailSeq=${cocktail.cocktailSeq }">
												${cocktail.cocktailName } </a>
										</div>
									</c:forEach>
								</div>
							</div>
							<!-- cocktail_Fliter -->
						</div>
						<!-- dropdax_menu -->
					</div>

					
						<div class="navbar-avatar" style="margin-left: 19px;">
							<a href="eachoneProfile?userEmail=${sessionScope.useremail }" class="navbar-item is-avatar"
								@click.prevent="showProfilePanel"> <img
								src="https://unsplash.it/200/200?image=1005" alt="Avatar" />
							</a>
						</div>
					
					
					<!-- navbar_right start-->

					<!-- <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2"
						>
						<h3>Menu</h3>
						<a href="#">Celery seakale</a> 
						<a href="#">Dulse daikon</a> 
						<a href="#">Zucchini garlic</a> 
						<a href="#">Catsear azuki bean</a> 
						<a href="#">Dandelion bunya</a> 
						<a href="#">Rutabaga</a>
					</nav> -->


					<!-- navbar_right end-->
				</div>
			</div>
			<!-- container -->
		</div>
	</div>
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

									<button type="button" class="btn btn-block btn-outline-warning">
										Upload</button>
									<button type="button" class="btn btn-block btn-outline-primary">
										Sharing</button>
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
	<div>
		<div class="container">
			<div class="row" id="slideshow">
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
			<div class="row" id="cocktails">
				<div class="col-md-12" id="recommend_title">
					<h2 class="chapter ng-binding">
						<br>
						<small> <br>
						<i class="js-filter-text ng-binding">Popular</i><br>
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
								<c:forEach var="recommandCocktail" items="${recommandCocktailList }">
									<td><a href="cocktailDetail?cocktailSeq=${recommandCocktail.cocktailSeq }"><img src="${recommandCocktail.imageRink }">
									</a></td>
								</c:forEach>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row" id="photos">
				<div class="col-md-12" id="photo_title">
					<h2 class="chapter ng-binding">
						<br>
						<small> <br>
						<i class="js-filter-text ng-binding">Popular</i><br>
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
									<c:forEach var="recommandUserPhoto" items="${recommandUserPhotoList}">
									<td><a href="eachoneProfile?userEmail=${recommandUserPhoto.userEmail }"><img
										src="${path }${recommandUserPhoto.saveFileName}"></a></td>
									</c:forEach>
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
	<!-- <script
		src="./resources/assets/basic/js/proflie_slide/proflieSlide_slideclassie.js"></script> -->
	<script
		src="./resources/assets/modal_makingCocktail/js/ninja-slider.js"></script>
	<script
		src="./resources/assets/modal_makingCocktail/js/thumbnail-slider.js"></script>
	<!-- <script
		src="./resources/assets/basic/js/proflie_slide/proflieSlide_modernizr.custom.js"></script> -->
	<script src="./resources/assets/tag/js/search_tag.js"></script>
	<script src="./resources/assets/basic/js/photo_profile.js"></script>
	<script
		src="./resources/assets/main/js/Simple-Slider.js"></script>
	

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