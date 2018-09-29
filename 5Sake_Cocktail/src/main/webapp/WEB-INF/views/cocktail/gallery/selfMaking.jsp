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
<!-- <link rel="stylesheet" href="./resources/assets/modal_makingCocktail/css/modal_makingCocktail.css"> -->


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
    max-width: 95%;
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
			
			
			
			
				<div class="plus-button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">+</div>
				<!-- modal1_start -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog modal-lg">

						<!-- Modal content-->
						<div class="modal-content">

							<!--  -->
							<aside class="draw-panel">
								<ul class="tabs tabs-fixed-width custom-tabs">
									<li class="tab"><a class="active" href="#insert">INSERT</a>
									</li>
									<li class="tab"><a href="#pages">PAGES</a></li>
									<li class="tab"><a href="#styles">STYLES</a></li>
								</ul>
								<section class="panel-slide p-0" id="styles">
									<ul class="collapsible no-shadow mt-0 bt-0"
										data-collapsible="accordion">
										<li class="bb-lg">
											<div class="collapsible-header flex flex-spred">
												<h6 class="c-default">Favicon</h6>
												<div class="flex flex-column">
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
												</div>
											</div>
											<div class="collapsible-body b-0"></div>
										</li>
										<li class="bb-lg">
											<div class="collapsible-header flex flex-spred">
												<h6 class="c-default">Global Styles</h6>
												<div class="flex flex-column">
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
												</div>
											</div>
											<div class="collapsible-body"></div>
										</li>
										<li class="bb-lg">
											<div class="collapsible-header flex flex-spred">
												<h6 class="c-default">Background</h6>
												<div class="flex flex-column">
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
												</div>
											</div>
											<div class="collapsible-body"></div>
										</li>
										<li class="bb-lg">
											<div class="collapsible-header flex flex-spred">
												<h6 class="c-default">Width</h6>
												<div class="flex flex-column">
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
												</div>
											</div>
											<div class="collapsible-body"></div>
										</li>
										<li class="bb-lg">
											<div class="collapsible-header flex flex-spred">
												<h6 class="c-default">Custom CSS</h6>
												<div class="flex flex-column">
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
												</div>
											</div>
											<div class="collapsible-body"></div>
										</li>
									</ul>
								</section>

								<section class="panel-slide" id="pages">
									<ul class="collection">
										<li class="collection-item page-item on-hover"
											draggable="true"><i class="material-icons move">home</i>
											<h6 class="page-title">How is your Credit Score...</h6> <i
											class="material-icons hover-show">more_vert</i></li>
									</ul>
									<ul class="collection">
										<li class="collection-item page-item on-hover"
											draggable="true"><i class="material-icons move">class</i>
											<h6 class="page-title">How is your Credit Score...</h6> <i
											class="material-icons hover-show">more_vert</i></li>
										<li class="collection-item page-item on-hover"
											draggable="true"><i class="material-icons move pl-0-5">subdirectory_arrow_right</i>
											<h6 class="page-title">How is your Credit Score...</h6> <i
											class="material-icons hover-show">more_vert</i></li>
										<li class="collection-item page-item on-hover"
											draggable="true"><i class="material-icons move pl-0-5">subdirectory_arrow_right</i>
											<h6 class="page-title">How is your Credit Score...</h6> <i
											class="material-icons hover-show">more_vert</i></li>
										<li class="collection-item page-item on-hover"
											draggable="true"><i class="material-icons move pl-0-5">subdirectory_arrow_right</i>
											<h6 class="page-title">How is your Credit Score...</h6> <i
											class="material-icons hover-show">more_vert</i></li>
									</ul>

									<ul class="collection">
										<li class="collection-item page-item on-hover"
											draggable="true"><i class="material-icons move">folder_open</i>
											<h6 class="page-title">How is your Credit Score...</h6> <i
											class="material-icons hover-show">more_vert</i></li>
										<li class="collection-item page-item on-hover"
											draggable="true"><i class="material-icons move pl-0-5">subdirectory_arrow_right</i>
											<h6 class="page-title">How is your Credit Score...</h6> <i
											class="material-icons hover-show">more_vert</i></li>
										<li class="collection-item page-item on-hover"
											draggable="true"><i class="material-icons move pl-0-5">subdirectory_arrow_right</i>
											<h6 class="page-title">How is your Credit Score...</h6> <i
											class="material-icons hover-show">more_vert</i></li>
										<li class="collection-item page-item on-hover"
											draggable="true"><i class="material-icons move pl-0-5">subdirectory_arrow_right</i>
											<h6 class="page-title">How is your Credit Score...</h6> <i
											class="material-icons hover-show">more_vert</i></li>
									</ul>
									<div class="flex flex-center mt-2-5">
										<a
											class="btn-floating btn-large waves-effect waves-light grey">
											<i class="material-icons">add</i>
										</a>
									</div>


								</section>

								<section class="panel-slide p-0" id="insert">
									<ul class="flex m-0 b-0">
										<li
											class="flex flex-center flex-column flex-1 rad-25 p-1 pointer waves-effect waves-grey">
											<i class="icon-headline"></i> <span>Heading</span>
										</li>
										<li
											class="flex flex-center flex-column flex-1 rad-25 p-1 pointer waves-effect waves-grey">
											<i class="material-icons">subject</i> <span>Text</span>
										</li>
									</ul>
									<ul class="flex m-0 b-0">
										<li
											class="flex flex-center flex-column flex-1 rad-25 p-1 pointer waves-effect waves-grey">
											<i class="material-icons">indeterminate_check_box</i> <span>Button</span>
										</li>
										<li
											class="flex flex-center flex-column flex-1 rad-25 p-1 pointer waves-effect waves-grey">
											<i class="material-icons">image</i> <span>Images</span>
										</li>
									</ul>
									<ul class="collapsible no-shadow mt-0"
										data-collapsible="accordion">
										<li class="bb-lg">
											<div class="collapsible-header flex flex-spred">
												<h6 class="c-default">Components</h6>
												<div class="flex flex-column">
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
												</div>
											</div>
											<div class="collapsible-body b-0"></div>
										</li>
										<li class="bb-lg">
											<div class="collapsible-header flex flex-spred">
												<h6 class="c-default">Placeholder</h6>
												<div class="flex flex-column">
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
												</div>
											</div>
											<div class="collapsible-body b-0"></div>
										</li>
										<li class="bb-lg">
											<div class="collapsible-header flex flex-spred">
												<h6 class="c-default">Placeholder</h6>
												<div class="flex flex-column">
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
													<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
												</div>
											</div>
											<div class="collapsible-body b-0"></div>
										</li>
									</ul>
								</section>
							</aside>

							<div class="editor">
								<a class="waves-effect waves-white center-round affixed top">
									<i class="material-icons active">collections_bookmark</i>
								</a>
								<ul class="flex flex-column affixed bottom">
									<li><a href="#" data-activates="help"
										class="button-collapse"> <i
											class="material-icons c-grey tooltipped"
											data-position="right" data-tooltip="Notifactions">notifications</i>
									</a></li>
									<li><a href="#" data-activates="notifactions"
										class="button-collapse"> <i
											class="material-icons c-grey tooltipped"
											data-position="right" data-tooltip="Help">help</i>
									</a></li>
									<li><a href="#"> <i
											class="material-icons c-grey flip-horz tooltipped"
											data-position="right" data-tooltip="Exit">exit_to_app</i>
									</a></li>
								</ul>
								<header class="flex flex-spred editor-toolbar">
									<h1 class="lesson-title mr-4">Are You Ready to Own a Home?</h1>
									<ul class="flex">
										<li class="hover sh-preview"><i
											class="material-icons circle">phone_android</i></li>
										<li class="sh-preview"><i class="material-icons circle">tablet_android</i>
										</li>
										<li class="hover sh-preview"><i
											class="material-icons circle active">laptop_mac</i></li>
										<li class="flex hd-preview"><small
											class="c-grey align-center no-break">All changes
												saved</small></li>
										<li class="hover hd-preview"><i
											class="material-icons circle">undo</i></li>
										<li class="hd-preview"><i class="material-icons circle"
											disabled>redo</i></li>
										<li><span class="header-vertical-rule"></span></li>
										<li class="hover js-preview hd-preview"><i
											class="material-icons circle">remove_red_eye</i></li>
										<li class="sh-preview js-preview"><a
											class='btn btn-inverse btn-round indigo ml-375' href='#'>Exit
												Preview</a></li>
										<li class="sh-preview js-preview"><a
											class='btn btn-round indigo ml-375' href='#'>Update</a></li>
										<li class="hd-preview"><span
											class="btn-group ml-375 hd-preview"> <a
												class='dropdown-button btn indigo' href='#'> Update </a> <a
												class='dropdown-button btn indigo' href='#'
												data-activates='publish-options'> <i
													class="material-icons">expand_more</i>
											</a>
										</span>
											<ul id='publish-options' class='dropdown-content custom'>
												<li><a href="#!">Publish Options...</a></li>
												<li><a href="#!">View Published...</a></li>
												<li><a href="#!">Unpublish...</a></li>
											</ul></li>
									</ul>
								</header>
								<main class="editor-canvas"></main>
							</div>

							<ul id="notifactions" class="side-nav"></ul>
							<ul id="help" class="side-nav"></ul>

							<!--  -->
						</div>
						<!-- Modal content_end -->
					</div>
				</div>
				<!-- modal1_end -->
				
			</div>
		</div>
	</div>
	<!-- 사진 상세 슬라이드 -->
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
	<!-- 칵테일 만들기 업로드 모달 끝 -->
	
	<script>
		new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
	</script>
</body>
</html>