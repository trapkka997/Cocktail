<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>5Sake's Cocktail
</title>
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/navbar/navbar.css">
<!--profile-->
<link rel="stylesheet"	href="./resources/assets/basic/css/profile/default.css">
<link rel="stylesheet"  href="./resources/assets/tag/css/tag_default.css">

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
/*위치에 있던 .tile .flip css -> tag_default.css로 옮김 */
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
					<a class="navbar-toggle" data-toggle="dropdown"	aria-expanded="false" href="#"> 
						<span></span> <span></span> <span></span>
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
						<div class="navbar-avatar" style="margin-left: 19px;">
							<a href="#" class="navbar-item is-avatar" @click.prevent="showProfilePanel"> 
								<img src="https://unsplash.it/200/200?image=1005" alt="Avatar" />
							</a>
						</div>
				</div>
			</div>
			<!-- container -->
		</div>
	</div>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script	src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script src="./resources/assets/tag/js/search_tag.js"></script>
	<script src="./resources/assets/basic/js/photo_profile.js"></script>	
</body>
</html>