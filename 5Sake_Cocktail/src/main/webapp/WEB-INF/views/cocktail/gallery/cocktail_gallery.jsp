<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>NEWS FEED</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css?ver=2">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
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
	href="./resources/assets/selfmaking/css/button/button.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet"
	href="./resources/assets/gallery/css/uploadbutton.css">
<link rel="stylesheet"
	href="./resources/assets/gallery/css/circluar_layout.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">
    
<link rel="stylesheet"
	href="./resources/assets/gallery/css/pictureUpload.css">   
    
<style>


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
									<div id="alcole" class="button-group"
										data-filter-group='alcole'
										style="margin-top: 20px; margin-bottom: 20px;">
										<button id="selfMaking_tag_button1"
											class="btn btn-outline-primary" data-filter="*"
											style="margin-left: 5px; margin-right: 5px;">ALL</button>
										<button id="selfMaking_tag_button2"
											class="btn btn-outline-primary" data-filter=".브랜디"
											style="margin-left: 5px; margin-right: 5px;">Brandy</button>
										<button id="selfMaking_tag_button3"
											class="btn btn-outline-primary" data-filter=".위스키"
											style="margin-left: 5px; margin-right: 5px;">Whisky</button>
										<button id="selfMaking_tag_button4"
											class="btn btn-outline-primary" data-filter=".보드카"
											style="margin-left: 5px; margin-right: 5px;">Vodka</button>
										<button id="selfMaking_tag_button5"
											class="btn btn-outline-primary" data-filter=".럼"
											style="margin-left: 5px; margin-right: 5px;">Rum</button>
										<button id="selfMaking_tag_button6"
											class="btn btn-outline-primary" data-filter=".드라이진"
											style="margin-left: 5px; margin-right: 5px;">Dry Jin</button>
										<button id="selfMaking_tag_button7"
											class="btn btn-outline-primary" data-filter=".테킬라"
											style="margin-left: 5px; margin-right: 5px;">Tequila</button>
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
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img01" />
										<figcaption>
											<h3>Letterpress asymmetrical</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img02" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img03" />
										<figcaption>
											<h3>Brunch semiotics</h3>
											<p>Ex disrupt cray yr, butcher pour-over magna umami
												kitsch before they sold out commodo.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img04" />
										<figcaption>
											<h3>Chillwave nihil occupy</h3>
											<p>In post-ironic gluten-free deserunt, PBR&amp;B non
												pork belly cupidatat polaroid.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img05" />
										<figcaption>
											<h3>Kale chips lomo biodiesel</h3>
											<p>Pariatur food truck street art consequat sustainable,
												et kogi beard qui paleo.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img06" />
										<figcaption>
											<h3>Exercitation occaecat</h3>
											<p>Street chillwave hoodie ea gentrify.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img01" />
										<figcaption>
											<h3>Selfies viral four</h3>
											<p>Raw denim duis Tonx Shoreditch labore swag artisan
												High Life cred, stumptown Schlitz quinoa flexitarian mollit
												fanny pack.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img02" />
										<figcaption>
											<h3>Photo booth skateboard</h3>
											<p>Vinyl squid ex High Life. Paleo Neutra nulla master
												cleanse, Helvetica et enim nesciunt esse.</p>
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
											<p>Kale chips lomo biodiesel stumptown Godard Tumblr,
												mustache sriracha tattooed cray aute slow-carb placeat
												delectus. Letterpress asymmetrical fanny pack art party est
												pour-over skateboard anim quis, ullamco craft beer.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img01" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Chillwave Echo Park Etsy organic Cosby sweater seitan
												authentic pour-over. Occupy wolf selvage bespoke tattooed,
												cred sustainable Odd Future hashtag butcher.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img02" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Brunch semiotics</h3>
											<p>IPhone PBR polaroid before they sold out meh you
												probably haven't heard of them leggings tattooed tote bag,
												butcher paleo next level single-origin coffee photo booth.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img03" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Chillwave nihil occupy</h3>
											<p>Vice cliche locavore mumblecore vegan wayfarers
												asymmetrical letterpress hoodie mustache. Shabby chic lomo
												polaroid, scenester 8-bit Portland Pitchfork VHS tote bag.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img04" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Kale chips lomo biodiesel</h3>
											<p>Chambray Schlitz pug YOLO, PBR Tumblr semiotics.
												Flexitarian YOLO ennui Blue Bottle, forage dreamcatcher
												chillwave put a bird on it craft beer Etsy.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img05" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Exercitation occaecat</h3>
											<p>Cosby sweater hella lomo Thundercats VHS occupy High
												Life. Synth pop-up readymade single-origin coffee, fanny
												pack tousled retro. Fingerstache mlkshk ugh hashtag,
												church-key ethnic street art pug yr.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img06" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Selfies viral four</h3>
											<p>Ethnic readymade pug, small batch XOXO Odd Future
												normcore kogi food truck craft beer single-origin coffee
												banh mi photo booth raw denim. XOXO messenger bag pug VHS.
												Forage gluten-free polaroid, twee hoodie chillwave
												Helvetica.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img01" />
									</figure>
								</li>
							</ul>
							<nav>
								<span class="icon nav-prev"></span> <span class="icon nav-next"></span>
								<span class="icon nav-close"></span>
							</nav>
							<div class="info-keys icon">Navigate with arrow keys</div>
						</section>
					</div>
				</div>
				
				
				<!-- modal -->
				<div class="plus-button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">+
					<div class = "modal_inner">
					
					</div>
				</div>
				<!-- modal -->
					
				<!-- modal1_start -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog modal-lg">

						<!-- Modal content-->
						<div class="modal-content">
							
							<!--  -->
							<div class="container">
								<div class="row">
									<div class="col-md-12">
										<h1>Uploading Your Image</h1>
										<div class="product-image-manager">
											<div class="image-container">
												<div class="inner-image-container">
													<div class="on-image-controls">
														<div class="delete-confirm">Confirm deleting!</div>
														<span class="fa fa-arrows"></span> <span
															class="fa fa-check" data-toggle="tooltip"
															data-placement="top" title="Pick as primary"></span> <span
															class="fa fa-info-circle" data-toggle="tooltip"
															data-placement="top" title="Image info"></span> <span
															class="fa fa-times" data-toggle="tooltip"
															data-placement="top" title="Delete image"></span>
													</div>
													<div class="center-container">
														<img
															src="https://images.unsplash.com/photo-1446645681877-acde17e336a9?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=846&q=80&cs=tinysrgb">
													</div>
												</div>
											</div>
											<div class="image-container">
												<div class="inner-image-container">
													<div class="on-image-controls">
														<div class="delete-confirm">Confirm deleting!</div>
														<span class="fa fa-arrows"></span> <span
															class="fa fa-check" data-toggle="tooltip"
															data-placement="top" title="Pick as primary"></span> <span
															class="fa fa-info-circle" data-toggle="tooltip"
															data-placement="top" title="Image info"></span> <span
															class="fa fa-times" data-toggle="tooltip"
															data-placement="top" title="Delete image"></span>
													</div>
													<div class="center-container">
														<img
															src="https://images.unsplash.com/photo-1432139509613-5c4255815697?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=2265&q=80&cs=tinysrgb"
															id="test">
													</div>
												</div>
											</div>
											<div class="image-container">
												<div class="inner-image-container">
													<div class="on-image-controls">
														<div class="delete-confirm">Confirm deleting!</div>
														<span class="fa fa-arrows"></span> <span
															class="fa fa-check" data-toggle="tooltip"
															data-placement="top" title="Pick as primary"></span> <span
															class="fa fa-info-circle" data-toggle="tooltip"
															data-placement="top" title="Image info"></span> <span
															class="fa fa-times" data-toggle="tooltip"
															data-placement="top" title="Delete image"></span>
													</div>
													<div class="center-container">
														<img
															src="https://images.unsplash.com/photo-1453831362806-3d5577f014a4?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1016&q=80&cs=tinysrgb">
													</div>
												</div>
											</div>
											<div class="image-container">
												<div class="inner-image-container">
													<div class="on-image-controls">
														<div class="delete-confirm">Confirm deleting!</div>
														<span class="fa fa-arrows"></span> <span
															class="fa fa-check" data-toggle="tooltip"
															data-placement="top" title="Pick as primary"></span> <span
															class="fa fa-info-circle" data-toggle="tooltip"
															data-placement="top" title="Image info"></span> <span
															class="fa fa-times" data-toggle="tooltip"
															data-placement="top" title="Delete image"></span>
													</div>
													<div class="center-container">
														<img
															src="https://images.unsplash.com/photo-1441123285228-1448e608f3d5?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb">
													</div>
												</div>
											</div>
											<div class="image-container">
												<div class="inner-image-container">
													<div class="on-image-controls">
														<div class="delete-confirm">Confirm deleting!</div>
														<span class="fa fa-arrows"></span> <span
															class="fa fa-check" data-toggle="tooltip"
															data-placement="top" title="Pick as primary"></span> <span
															class="fa fa-info-circle" data-toggle="tooltip"
															data-placement="top" title="Image info"></span> <span
															class="fa fa-times" data-toggle="tooltip"
															data-placement="top" title="Delete image"></span>
													</div>
													<div class="center-container">
														<img
															src="https://images.unsplash.com/photo-1471943311424-646960669fbc?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=2250&q=80&cs=tinysrgb">
													</div>
												</div>
											</div>
											<div class="image-container">
												<div class="inner-image-container">
													<div class="on-image-controls">
														<div class="delete-confirm">Confirm deleting!</div>
														<span class="fa fa-arrows"></span> <span
															class="fa fa-check" data-toggle="tooltip"
															data-placement="top" title="Pick as primary"></span> <span
															class="fa fa-info-circle" data-toggle="tooltip"
															data-placement="top" title="Image info"></span> <span
															class="fa fa-times" data-toggle="tooltip"
															data-placement="top" title="Delete image"></span>
													</div>
													<div class="center-container">
														<img
															src="https://images.unsplash.com/photo-1432752641289-a25fc853fceb?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=996&q=80&cs=tinysrgb">
													</div>
												</div>
											</div>
											<div class="image-container">
												<div class="inner-image-container">
													<div class="on-image-controls">
														<div class="delete-confirm">Confirm deleting!</div>
														<span class="fa fa-arrows"></span> <span
															class="fa fa-check" data-toggle="tooltip"
															data-placement="top" title="Pick as primary"></span> <span
															class="fa fa-info-circle" data-toggle="tooltip"
															data-placement="top" title="Image info"></span> <span
															class="fa fa-times" data-toggle="tooltip"
															data-placement="top" title="Delete image"></span>
													</div>
													<div class="center-container">
														<img
															src="https://images.unsplash.com/photo-1471253387723-35c53c9f97ca?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=2250&q=80&cs=tinysrgb.jpg">
													</div>
												</div>
											</div>
											<div class="image-container">
												<div class="inner-image-container">
													<div class="on-image-controls">
														<div class="delete-confirm">Confirm deleting!</div>
														<span class="fa fa-arrows"></span> <span
															class="fa fa-check" data-toggle="tooltip"
															data-placement="top" title="Pick as primary"></span> <span
															class="fa fa-info-circle" data-toggle="tooltip"
															data-placement="top" title="Image info"></span> <span
															class="fa fa-times" data-toggle="tooltip"
															data-placement="top" title="Delete image"></span>
													</div>
													<div class="center-container">
														<img
															src="http://jextensions.com/wp-content/plugins/simple-share-buttons-adder/buttons/somacro/facebook.png">
													</div>
												</div>
											</div>
											<div class="image-container">
												<div class="inner-image-container">
													<div class="on-image-controls">
														<div class="delete-confirm">Confirm deleting!</div>
														<span class="fa fa-arrows"></span> <span
															class="fa fa-check" data-toggle="tooltip"
															data-placement="top" title="Pick as primary"></span> <span
															class="fa fa-info-circle" data-toggle="tooltip"
															data-placement="top" title="Image info"></span> <span
															class="fa fa-times" data-toggle="tooltip"
															data-placement="top" title="Delete image"></span>
													</div>
													<div class="center-container">
														<img
															src="https://cdn0.iconfinder.com/data/icons/small-n-flat/24/678087-heart-128.png">
													</div>
												</div>
											</div>
											<div class="image-container">
												<div class="inner-image-container">
													<div class="on-image-controls">
														<div class="delete-confirm">Confirm deleting!</div>
														<span class="fa fa-arrows"></span> <span
															class="fa fa-check" data-toggle="tooltip"
															data-placement="top" title="Pick as primary"></span> <span
															class="fa fa-info-circle" data-toggle="tooltip"
															data-placement="top" title="Image info"></span> <span
															class="fa fa-times" data-toggle="tooltip"
															data-placement="top" title="Delete image"></span>
													</div>
													<div class="center-container">
														<img src="http://bendtech.com/wp-content/uploads/Logo.png">
													</div>
												</div>
											</div>
										</div>
										<div id="dropzone" class="dropzone">Drop files here to
											upload</div>
									</div>
								</div>
							</div>
							<div class="modal fade" id="file-modal" tabindex="-1"
								role="dialog">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">Details for image</h4>
										</div>
										<div class="modal-body">
											<div id="image-preview-modal"></div>
											<div class="row image-data-row">
												<div class="col-sm-4 static-data">
													<ul class="file-info-list">
														<li><strong>File name:</strong> <span id="filename"></span></li>
														<li><strong>File type:</strong> <span
															id="file-extension"></span></li>
														<li><strong>File size:</strong> <span id="filesize"></span></li>
														<li><strong>Dimensions:</strong> <span
															id="file-dimensions"></span></li>
													</ul>
													<ul class="file-info-list">
														<li><strong>Uploaded by:</strong> <span id="uploader">Kasper</span></li>
														<li><strong>Upload date:</strong> <span
															id="upload-date">28. august 2016</span></li>
														<li><strong>Uploaded to:</strong> <span
															id="upload-folder">Images12</span></li>
													</ul>
												</div>
												<div class="col-sm-8 dynamic-data">
													<form class="form-horizontal">
														<div class="form-group">
															<label for="url" class="col-sm-2 control-label">URL</label>
															<div class="col-sm-10">
																<input type="text" class="form-control" id="url"
																	disabled>
															</div>
														</div>
														<div class="form-group">
															<label for="title" class="col-sm-2 control-label">Titel</label>
															<div class="col-sm-10">
																<input type="password" class="form-control" id="title"
																	placeholder="Titel">
															</div>
														</div>
														<div class="form-group">
															<label for="alt" class="col-sm-2 control-label">Alt
																Texy</label>
															<div class="col-sm-10">
																<input type="password" class="form-control" id="alt"
																	placeholder="Alt Text">
															</div>
														</div>
													</form>
													<div class="text-right">
														<a href="" target="blank" id="full-image-link">Preview
															on new tab</a> | <a href="#" class="text-danger"
															id="delete-image">Delete image permantly</a>
													</div>
												</div>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												Changes</button>
										</div>
									</div>
								</div>
							</div>
							<!--  -->
						</div>

					</div>
				</div>
				<!-- modal1_end -->
				<!-- modal -->
			</div>
		</div>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/assets/basic/js/proflie_slide/classie.js"></script>
	<script
		src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js"></script>
	<script src="./resources/assets/tag/js/search_tag.js"></script>
	<script src="./resources/assets/gallery/js/gallery/gallery_classie.js"></script>
	<script
		src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js"></script>
	<script
		src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>
	<script src="./resources/assets/gallery/js/circluar_layout.js"></script>
	
	
	<script src="./resources/assets/modal_makingCocktail/js/modal_makingCocktail.js"></script>
</body>

</html>