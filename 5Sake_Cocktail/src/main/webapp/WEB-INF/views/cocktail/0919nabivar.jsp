<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>5Sake's Cocktail</title>
	
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
				<div class="navbar-home">
					<a href="index"> 
						<img src='./resources/assets/basic/img/navbar_home2.png' class='img' />
					</a>
				</div>
				<!-- navbar-home_end -->
				<div class="navbar-left" style="width: 390px;">
					<a class="navbar-toggle" data-toggle="dropdown"
						aria-expanded="false" href="#"> <span></span> <span></span> <span></span>
						<div id="recommend" class="dropdown-menu" style="margin-left: 150px; margin-right: 150px; right: 0px;">
							<!-- exit_button -->
							<button type="button" class="close"	aria-label="Close">
								<p aria-hidden="true">&times;</p>
							</button>
							<!-- exit_button_end -->
							
							<div class="row_drop_userRecommend">
								<div class="col-md-12">
									<div class="card-group">
										<div class="card">
											<div class="card-body"
												style="border-right: 1px solid #e8dfdf6e;">
												<p class="card-text">
													<img src='./resources/assets/basic/img/カクテルアイコン5.png' 	class='img' />
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
													<img src='./resources/assets/basic/img/カクテルアイコン5.png' class='img' />
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
													<img src='./resources/assets/basic/img/カクテルアイコン5.png' class='img' />
												</p>
												<div>
													<p>
														<label class="tag">#tag</label> 
														<label class="tag">#tag</label>
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
					<i id='cock_gallery' class="fas fa-glass-martini icon"></i>
					<i id='user_gallery' class="fab fa-microsoft icon" style="margin-left: 20px; margin-right: 20px;"></i>
					<i id='self_making'	class="fas fa-user-alt"></i>


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
									<p aria-hidden="true">×</p>
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
									<c:forEach var="cocktail" items="${cocktailList}">
										<div class="tile flip element-item ${cocktail.alcole} ${cocktail.liqueur} ${cocktail.mateial }"
											data-category="transition">
											<div>
												<img src="${cocktail.imagerink }" height="100" width="100">
											</div>
											<a href="cocktailDetail?cocktailname=${cocktail.cocktailname }">
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
						@click.prevent="showProfilePanel"> <img	src="https://unsplash.it/200/200?image=1005" alt="Avatar" />
					</a>
				</div>

			</div>
		</div>
		<!-- container -->
	</div>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script	src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script src="./resources/assets/tag/js/search_tag.js"></script>
	<script src="./resources/assets/basic/js/photo_profile.js"></script>	
	<script>
		$('.dropdown-menu').on("click.bs.dropdown", function(e) {
			e.stopPropagation();
			/* e.preventDefault(); */ 
		});
		$(".dropdown-menu").on("shown.bs.dropdown", function(event){
		    var x = $(event.relatedTarget).text(); // Get the text of the element
		    alert(x);
		});
	</script>	
</body>
</html>

















