<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NEWS FEED</title>
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/navbar/navbar.css">
<link rel="stylesheet"	href="./resources/assets/basic/css/proflie_slide/slide_component.css">
</head>

<body>
	<div class="navbar is-top-fixed">
		<div class="container-fluid">
			<div class="container">

				<div class="navbar-left">
					<a class="navbar-toggle" data-toggle="dropdown"
						aria-expanded="false" href="#"> <span></span> <span></span> <span></span>
						<div id="recommend" class="dropdown-menu"
							style="margin-left: 150px; margin-right: 150px; margin-top: 0px;">
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
												<img class="card-img-top w-100 d-block" />
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">Nullam id dolor id nibh ultricies
														vehicula ut id elit. Cras justo odio, dapibus ac facilisis
														in, egestas eget quam. Donec id elit non mi porta gravida
														at eget metus.</p>
													<button class="btn btn-primary" type="button">Button</button>
												</div>
											</div>
											<!-- user picture here -->

											<div class="card">
												<img class="card-img-top w-100 d-block" />
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">Nullam id dolor id nibh ultricies
														vehicula ut id elit. Cras justo odio, dapibus ac facilisis
														in, egestas eget quam. Donec id elit non mi porta gravida
														at eget metus.</p>
													<button class="btn btn-primary" type="button">Button</button>
												</div>
											</div>
											<!-- randam cocktail -->

											<div class="card">
												<img class="card-img-top w-100 d-block" />
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">Nullam id dolor id nibh ultricies
														vehicula ut id elit. Cras justo odio, dapibus ac facilisis
														in, egestas eget quam. Donec id elit non mi porta gravida
														at eget metus.</p>
													<button class="btn btn-primary" type="button">Button</button>
												</div>
											</div>
											<!-- randam cocktail -->

											<div class="card">
												<img class="card-img-top w-100 d-block" />
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">Nullam id dolor id nibh ultricies
														vehicula ut id elit. Cras justo odio, dapibus ac facilisis
														in, egestas eget quam. Donec id elit non mi porta gravida
														at eget metus.</p>
													<button class="btn btn-primary" type="button">Button</button>
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
												<img class="card-img-top w-100 d-block" />
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">Nullam id dolor id nibh ultricies
														vehicula ut id elit. Cras justo odio, dapibus ac facilisis
														in, egestas eget quam. Donec id elit non mi porta gravida
														at eget metus.</p>
													<button class="btn btn-primary" type="button">Button</button>
												</div>
											</div>
											<!-- randam cocktail -->
											<div class="card">
												<img class="card-img-top w-100 d-block" />
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">Nullam id dolor id nibh ultricies
														vehicula ut id elit. Cras justo odio, dapibus ac facilisis
														in, egestas eget quam. Donec id elit non mi porta gravida
														at eget metus.</p>
													<button class="btn btn-primary" type="button">Button</button>
												</div>
											</div>
											<!-- randam cocktail -->
											<div class="card">
												<img class="card-img-top w-100 d-block" />
												<div class="card-body">
													<h4 class="card-title">Title</h4>
													<p class="card-text">Nullam id dolor id nibh ultricies
														vehicula ut id elit. Cras justo odio, dapibus ac facilisis
														in, egestas eget quam. Donec id elit non mi porta gravida
														at eget metus.</p>
													<button class="btn btn-primary" type="button">Button</button>
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
					<a href="#" class="navbar-item navbar-logo"> <i
						class="fas fa-glass-martini icon"></i>
					</a> <a href="#" class="navbar-item navbar-logo"> <i
						class="fab fa-microsoft icon"></i>
					</a> <a href="#" class="navbar-item navbar-logo"> <i
						class="fas fa-user-alt"></i>
					</a>
				</div>
				<!-- navbar-center -->

				<div class="navbar-right">
					<a href="#" class="navbar-item" data-toggle="dropdown"
						aria-expanded="false" href="#"> <i id="showRightPush"
						class="fas fa-search"></i>

						<div id="search" class="dropdown-menu"
							style="margin-left: 150px; margin-right: 150px; margin-top: 0px;">
							<div class="row_drop_search">
								<div>
									<button type="button" class="close" aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
								</div>
								<div class="col-md-12">
									<div class="card-group">
										<div class="card">
											<img class="card-img-top w-100 d-block" />
											<div class="card-body">
												<h4 class="card-title">Title</h4>
												<p class="card-text">Nullam id dolor id nibh ultricies
													vehicula ut id elit. Cras justo odio, dapibus ac facilisis
													in, egestas eget quam. Donec id elit non mi porta gravida
													at eget metus.</p>
												<button class="btn btn-primary" type="button">Button</button>
											</div>
										</div>
										<!-- user picture here -->

										<div class="card">
											<img class="card-img-top w-100 d-block" />
											<div class="card-body">
												<h4 class="card-title">Title</h4>
												<p class="card-text">Nullam id dolor id nibh ultricies
													vehicula ut id elit. Cras justo odio, dapibus ac facilisis
													in, egestas eget quam. Donec id elit non mi porta gravida
													at eget metus.</p>
												<button class="btn btn-primary" type="button">Button</button>
											</div>
										</div>
										<!-- randam cocktail -->

										<div class="card">
											<img class="card-img-top w-100 d-block" />
											<div class="card-body">
												<h4 class="card-title">Title</h4>
												<p class="card-text">Nullam id dolor id nibh ultricies
													vehicula ut id elit. Cras justo odio, dapibus ac facilisis
													in, egestas eget quam. Donec id elit non mi porta gravida
													at eget metus.</p>
												<button class="btn btn-primary" type="button">Button</button>
											</div>
										</div>
										<!-- randam cocktail -->

										<div class="card">
											<img class="card-img-top w-100 d-block" />
											<div class="card-body">
												<h4 class="card-title">Title</h4>
												<p class="card-text">Nullam id dolor id nibh ultricies
													vehicula ut id elit. Cras justo odio, dapibus ac facilisis
													in, egestas eget quam. Donec id elit non mi porta gravida
													at eget metus.</p>
												<button class="btn btn-primary" type="button">Button</button>
											</div>
										</div>
										<!-- randam cocktail -->
									</div>
								</div>
							</div>
							<div class="row_cocktail_fliter">
								<div class="col-md-12"
									style="background-image: url('http://2.bp.blogspot.com/-rBQgW0Kk8ms/UDAcq9wGmAI/AAAAAAAAQgo/KyZLoQR37OY/s1600/amile+face.jpg'); height: 300px;"></div>
							</div>
							<!-- cocktail_Fliter -->
						</div> <!-- dropdax_menu -->


					</a>
				</div>


				<div class="navbar-avatar">
					<a id="showRight" href="#" class="navbar-item is-avatar"
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
		<h3>Menu</h3>
		<a href="#">Celery seakale</a> <a href="#">Dulse daikon</a> <a
			href="#">Zucchini garlic</a> <a href="#">Catsear azuki bean</a> <a
			href="#">Dandelion bunya</a> <a href="#">Rutabaga</a>
	</nav>


	<div>
		<div class="container">
			<div class="row">
				<div class="col-md-12"></div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div id="grid-gallery" class="grid-gallery">
						<section class="grid-wrap">
							<ul class="grid">
								<li class="grid-sizer"></li>
								<!-- for Masonry column width -->
								<c:forEach var="userPhoto" items="${userPhotos }">
									<li>
										<figure>
											<img src="${path }${userPhoto.saveFileName}" alt="img01" />
											<figcaption>
												<h3>${userPhoto.title }</h3>
												<p>${userPhoto.contents }</p>
											</figcaption>
										</figure>
									</li>
								</c:forEach>

							</ul>
						</section>
						<section class="slideshow">
							<ul>
								<c:forEach var="userPhoto" items="${userPhotos }">
									<li>
										<figure>
											<figcaption>
												<h3>${userPhoto.title }</h3>
												<p>${userPhoto.contents }</p>
											</figcaption>
											<img src="${path }${userPhoto.saveFileName}" alt="img01" />
										</figure>
									</li>
								</c:forEach>

							</ul>
							<nav>
								<span class="icon nav-prev"></span> <span class="icon nav-next"></span>
								<span class="icon nav-close"></span>
							</nav>
							<div class="info-keys icon">Navigate with arrow keys</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/gallery_classie.js"></script>
	<script	src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js"></script>
	<script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>
	<script	src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script src="./resources/assets/basic/js/proflie_slide/classie.js"></script>
	<script	src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js"></script>
	<script>
		new CBPGridGallery(document.getElementById('grid-gallery'));
	</script>
</body>

</html>