<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="./resources/assets/gallery/css/pictureUpload.css">
<link rel="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- photo상세 슬라이드 -->

<script src="./resources/assets/gallery/grid/js/modernizr.custom.js"></script>


<style>
/* li{
	display: none;
} */
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
								<!-- for Masonry column width -->
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical01</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>	
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical07</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical08</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical09</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical10</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical11</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical12</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical13</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical14</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical15</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical16</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical17</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical18</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical19</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical20</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical21</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical22</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical23</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical24</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical25</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical26</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical27</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical28</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical29</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical30</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical31</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical32</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical33</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical34</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>									
								</li>
								<li>
									<figure class="tile2 scale-anm brandy all">
										<div class="profilebox profilebox1">
											<img class="galleryPhoto" src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
										   	<div class="SocialIcons">
										    	 <a id='icon' href="#"><i class="fas fa-heartbeat"></i></a>
										    </div>
										</div>
										<figcaption>
											<h3>Letterpress asymmetrical35</h3>
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
							<li>
								<figure>
									<figcaption>
										<h3>Letterpress asymmetrical</h3>
										<p>Kale chips lomo biodiesel stumptown Godard Tumblr, mustache sriracha tattooed cray aute slow-carb placeat delectus. Letterpress asymmetrical fanny pack art party est pour-over skateboard anim quis, ullamco craft beer.</p>
									</figcaption>
									<img src="./resources/assets/gallery/grid/img/large/1.png" alt="img01"/>
								</figure>
							</li>
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
			
			

			<a href="#" id="load">Load More</a>
			
				<div class="plus-button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">+</div>

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
												<option value="Brandy">Brandy</option>
												<option value="Wiskey">Wiskey</option>
												<option value="Vodka">Vodka</option>
												<option value="Rum">Rum</option>
												<option value="Jin">Jin</option>
												<option value="Tequila">Tequila</option>
												
											</select>
											<!-- <p class="CaptionCont SelectBox" title=" Ferrari, Hyundai ">
												<span> Ferrari, Hyundai </span><label><i></i></label>
											</p> -->
											<div class="optWrapper okCancelInMulti selall multiple">
												<p class="select-all partial">
													<span><i></i></span><label>Select All</label>
												</p>
												<ul class="options">
													<li class="opt"><span><i></i></span><label>Brandy</label></li>
													<li class="opt"><span><i></i></span><label>Wiskey</label></li>
													<li class="opt"><span><i></i></span><label>Vodka</label></li>
													<li class="opt"><span><i></i></span><label>Rum</label></li>
													<li class="opt"><span><i></i></span><label>Jin</label></li>
													<li class="opt"><span><i></i></span><label>Tequila</label></li>
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
												<option value="Wine">Wine</option>
												<option value="Bitters">Bitters</option>
												<option value="Beer">Beer</option>
												<option value="Liqueur">Liqueur</option>
												<option value="Creme_liqueur">Creme liqueur</option>
												<option value="Sherry">Sherry</option>
												<option value="Vermouth">Vermouth</option>
												<option value="Amaretto">Amaretto</option>
												
											</select>
											<!-- <p class="CaptionCont SelectBox" title=" Ferrari, Hyundai ">
												<span> Ferrari, Hyundai </span><label><i></i></label>
											</p> -->
											<div class="optWrapper okCancelInMulti selall multiple">
												<p class="select-all partial">
													<span><i></i></span><label>Select All</label>
												</p>
												<ul class="options">
													<li class="opt"><span><i></i></span><label>Wine</label></li>
													<li class="opt"><span><i></i></span><label>Bitters</label></li>
													<li class="opt"><span><i></i></span><label>Beer</label></li>
													<li class="opt"><span><i></i></span><label>Liqueur</label></li>
													<li class="opt"><span><i></i></span><label>Creme liqueur</label></li>
													<li class="opt"><span><i></i></span><label>Sherry</label></li>
													<li class="opt"><span><i></i></span><label>Vermouth</label></li>
													<li class="opt"><span><i></i></span><label>Amaretto</label></li>
												</ul>
												<div class="MultiControls">
													<p tabindex="0" class="btnOk">OK</p>
													<p tabindex="0" class="btnCancel">Cancel</p>
												</div>
											</div>
										</div>

									</div>
									
									
									<div class="style-picker_material">
										<h2 class = "cocktailMaker_h2" style="margin-top: 20px;">Material</h2>

										<div class="SumoSelect sumo_somename4" tabindex="0"
											role="button" aria-expanded="true">
											<select multiple="multiple" name="somename4"
												class="select1 SumoUnder" tabindex="-1">
												<option value="Apple">Apple</option>
												<option value="Cherry">Cherry</option>
												<option value="Coconut">Coconut</option>
												<option value="Grape_Fruit">Grape Fruit</option>
												<option value="Lemon">Lemon</option>
												<option value="Lime">Lime</option>
												<option value="Raspberry">Raspberry</option>
												<option value="Orange">Orange</option>
												<option value="Peach">Peach</option>
												<option value="Pineapple">Pineapple</option>
												<option value="Tomato">Tomato</option>
												<option value="Egg">Egg</option>
												<option value="Gingerale">Gingerale</option>
												<option value="Milk">Milk</option>
												<option value="Sugar">Sugar</option>
												<option value="Spicy">Spicy</option>
												<option value="Syrup">Syrup</option>
												
											</select>
											<!-- <p class="CaptionCont SelectBox" title=" Ferrari, Hyundai ">
												<span> Ferrari, Hyundai </span><label><i></i></label>
											</p> -->
											<div class="optWrapper okCancelInMulti selall multiple">
												<p class="select-all partial">
													<span><i></i></span><label>Select All</label>
												</p>
												<ul class="options">
													<li class="opt"><span><i></i></span><label>Apple</label></li>
													<li class="opt"><span><i></i></span><label>Cherry</label></li>
													<li class="opt"><span><i></i></span><label>Coconut</label></li>
													<li class="opt"><span><i></i></span><label>Grape Fruit</label></li>
													<li class="opt"><span><i></i></span><label>Lemon</label></li>
													<li class="opt"><span><i></i></span><label>Lime</label></li>
													<li class="opt"><span><i></i></span><label>Orange</label></li>
													<li class="opt"><span><i></i></span><label>Peach</label></li>
													<li class="opt"><span><i></i></span><label>Pineapple</label></li>
													<li class="opt"><span><i></i></span><label>Tomato</label></li>
													<li class="opt"><span><i></i></span><label>Egg</label></li>
													<li class="opt"><span><i></i></span><label>Gingerale</label></li>
													<li class="opt"><span><i></i></span><label>Milk</label></li>
													<li class="opt"><span><i></i></span><label>Sugar</label></li>
													<li class="opt"><span><i></i></span><label>Spicy</label></li>
													<li class="opt"><span><i></i></span><label>Syrup</label></li>
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
								<div class="column-wrapper">
									<div class="panel">
										<div class="panel-content">
											<label for="image" style="display: unset;">
												<form action="" class="image-select" data-droppable="">
													<input id="image" type="file" data-droppable-input="" /> <i
														class="fa fa-camera fa-2x image-select__icon"></i>
													<div class="image-select__message"></div>
													<div class="bg-image aspect-square"
														style="background-image: url('http://placekitten.com/g/300/300');"
														data-droppable-image=""></div>
												</form>
											</label>
										</div>
									</div>
								</div>


							<button type="submit">Upload</button>
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
	
	
	<!-- modal -->
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
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
		$('#icon').on('click',function(e){		
			$('#icon').css('color', 'red');
			$('.SocialIcons').css('transform', 'none')
			.css('transition', 'none')
			.css('transform-origin', 'none')
			.css('opacity', 'inherit')
			.css('left', '15px');
			e.stopPropagation();
		}); 
/* 		$(function(){
			$("li").slice(0,1).show(); // 최초 10개 선택
			$("#load").click(function(e){ // Load More를 위한 클릭 이벤트e
				e.preventDefault();
				$("li:hidden").slice(0,10).show(); // 숨김 설정된 다음 10개를 선택하여 표시
				if($("li:hidden").length == 0){ // 숨겨진 DIV가 있는지 체크
					alert("더 이상 항목이 없습니다"); // 더 이상 로드할 항목이 없는 경우 경고
				}
			});
		}); */
	</script>
	<script>
		new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
	</script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>