<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>5sake's cocktail</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<!-- css가 깨질경우 주석을 푸른 후 다시 막고 실행해보세요. -->
<!-- <link rel="stylesheet"	href="./resources/assets/basic/css/navbar/navbar.css"> -->
<!-- <link rel="stylesheet"	href="./resources/assets/basic/css/proflie_slide/slide_component.css"> -->

<!-- <link rel="stylesheet"	href="./resources/assets/basic/css/profile/default.css"> -->
<!-- <link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css"> -->
<!-- <link rel="stylesheet" href="./resources/assets/tag/css/tag_default.css"> -->

<link rel="stylesheet"
	href="./resources/assets/selfmaking/css/button/button.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet"
	href="./resources/assets/gallery/css/uploadbutton.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/hover.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/pictureUpload.css">

<!-- photo상세 슬라이드 -->
<script src="./resources/assets/gallery/grid/js/modernizr.custom.js"></script>
<style>
.card {
	flex-direction: inherit;
}

.card-body {
	text-align: center;
}

.galleryPhoto {
	margin-bottom: 20px;
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
									<div id="alcole" class="button-group"
										data-filter-group='alcole'
										style="margin-top: 20px; margin-bottom: 20px;">
										<button class="btn fil-cat btn-outline-primary" href=""
											data-rel="all">ALL</button>
										<button class="btn fil-cat btn-outline-primary" href=""
											data-rel="brandy">Brandy</button>
										<button class="btn fil-cat btn-outline-primary" href=""
											data-rel="whisky">Whisky</button>
										<button class="btn fil-cat btn-outline-primary" href=""
											data-rel="vodka">Vodka</button>
										<button class="btn fil-cat btn-outline-primary" href=""
											data-rel="rum">Rum</button>
										<button class="btn fil-cat btn-outline-primary" href=""
											data-rel="dryjin">Dry Jin</button>
										<button class="btn fil-cat btn-outline-primary" href=""
											data-rel="tequila">Tequila</button>
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
											<img class="galleryPhoto"
												src="./resources/assets/basic/img/カクテルアイコン5.png" alt="img01" />
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
											<p>Kale chips lomo biodiesel stumptown Godard Tumblr,
												mustache sriracha tattooed cray aute slow-carb placeat
												delectus. Letterpress asymmetrical fanny pack art party est
												pour-over skateboard anim quis, ullamco craft beer.</p>
										</figcaption>
										<img src="./resources/assets/gallery/grid/img/large/1.png"
											alt="img01" />
									</figure>
								</li>
							</ul>
							<nav>
								<span class="nav-prev"> <i class="fas fa-angle-left"
									style="color: white;"></i>
								</span> <span class="nav-next"> <i class="fas fa-angle-right"></i>
								</span> <span class="nav-close"> <i class="fas fa-times"></i>
								</span>
							</nav>
							<!-- <div class="info-keys icon">Navigate with arrow keys</div> -->
						</section>
						<!-- // slideshow -->
					</div>
				</div>
				<!-- modal -->
				<div class="plus-button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">+</div>
				<!-- modal1_start -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog modal-lg">

						<!-- Modal content-->
						<div class="modal-content">

							<!--  -->
							<div class="container">
							  <div class="row">
							    <div class="col-md-12">
							      <h1>Uploading Pictures</h1>
							      <div class="product-image-manager" style="text-align: center;">
							        <div class="image-container">
							          <div class="inner-image-container">
							           	<div class="on-image-controls">
							              <div class="delete-confirm">Confirm deleting!</div>
							              
							              <span class="fa fa-times" data-toggle="tooltip" data-placement="top" title="Delete image"></span>
							            </div>
							            <div class="center-container">
							              <img src="https://images.unsplash.com/photo-1446645681877-acde17e336a9?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=846&q=80&cs=tinysrgb">
							            </div>
							          </div>
							        </div>
							        <div class="image-container">
							          <div class="inner-image-container">
							            <div class="on-image-controls">
							              <div class="delete-confirm">Confirm deleting!</div>
							              
							              <span class="fa fa-times" data-toggle="tooltip" data-placement="top" title="Delete image"></span>
							            </div>
							            <div class="center-container">
							              <img src="https://images.unsplash.com/photo-1432139509613-5c4255815697?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=2265&q=80&cs=tinysrgb" id="test">
							            </div>
							          </div>
							        </div>
							        <div class="image-container">
							          <div class="inner-image-container">
							            <div class="on-image-controls">
							              <div class="delete-confirm">Confirm deleting!</div>
							              
							              <span class="fa fa-times" data-toggle="tooltip" data-placement="top" title="Delete image"></span>
							            </div>
							            <div class="center-container">
							              <img src="https://images.unsplash.com/photo-1453831362806-3d5577f014a4?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1016&q=80&cs=tinysrgb">
							            </div>
							          </div>
							        </div>
							        <div class="image-container">
							          <div class="inner-image-container">
							            <div class="on-image-controls">
							              <div class="delete-confirm">Confirm deleting!</div>
							              
							              <span class="fa fa-times" data-toggle="tooltip" data-placement="top" title="Delete image"></span>
							            </div>
							            <div class="center-container">
							              <img src="https://images.unsplash.com/photo-1441123285228-1448e608f3d5?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb">
							            </div>
							          </div>
							        </div>
							        <div class="image-container">
							          <div class="inner-image-container">
							            <div class="on-image-controls">
							              <div class="delete-confirm">Confirm deleting!</div>
							              
							              <span class="fa fa-times" data-toggle="tooltip" data-placement="top" title="Delete image"></span>
							            </div>
							            <div class="center-container">
							              <img src="https://images.unsplash.com/photo-1471943311424-646960669fbc?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=2250&q=80&cs=tinysrgb">
							            </div>
							          </div>
							        </div>
							        <div class="image-container">
							          <div class="inner-image-container">
							            <div class="on-image-controls">
							              <div class="delete-confirm">Confirm deleting!</div>
							              
							              <span class="fa fa-times" data-toggle="tooltip" data-placement="top" title="Delete image"></span>
							            </div>
							            <div class="center-container">
							              <img src="https://images.unsplash.com/photo-1432752641289-a25fc853fceb?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=996&q=80&cs=tinysrgb">
							            </div>
							          </div>
							        </div>
							        <div class="image-container">
							          <div class="inner-image-container">
							            <div class="on-image-controls">
							              <div class="delete-confirm">Confirm deleting!</div>
							              
							              <span class="fa fa-times" data-toggle="tooltip" data-placement="top" title="Delete image"></span>
							            </div>
							            <div class="center-container">
							              <img src="https://images.unsplash.com/photo-1471253387723-35c53c9f97ca?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=2250&q=80&cs=tinysrgb.jpg">
							            </div>
							          </div>
							        </div>
							        <div class="image-container">
							          <div class="inner-image-container">
							            <div class="on-image-controls">
							              <div class="delete-confirm">Confirm deleting!</div>
							              
							              <span class="fa fa-times" data-toggle="tooltip" data-placement="top" title="Delete image"></span>
							            </div>
							            <div class="center-container">
							              <img src="http://jextensions.com/wp-content/plugins/simple-share-buttons-adder/buttons/somacro/facebook.png">
							            </div>
							          </div>
							        </div>
							        <div class="image-container">
							          <div class="inner-image-container">
							            <div class="on-image-controls">
							              <div class="delete-confirm">Confirm deleting!</div>
							              
							              <span class="fa fa-times" data-toggle="tooltip" data-placement="top" title="Delete image"></span>
							            </div>
							            <div class="center-container">
							              <img src="https://cdn0.iconfinder.com/data/icons/small-n-flat/24/678087-heart-128.png">
							            </div>
							          </div>
							        </div>
							        <div class="image-container">
							          <div class="inner-image-container">
							            <div class="on-image-controls">
							              <div class="delete-confirm">Confirm deleting!</div>
							              
							              <span class="fa fa-times" data-toggle="tooltip" data-placement="top" title="Delete image"></span>
							            </div>
							            <div class="center-container">
							              <img src="http://bendtech.com/wp-content/uploads/Logo.png">
							            </div>
							          </div>
							        </div>
							      </div>
							       <div id="dropzone" class="dropzone">Drop files here to upload</div>
							    </div>
							   
							  </div>
							</div>
							<div class="modal fade" id="file-modal" tabindex="-1" role="dialog">
							  <div class="modal-dialog modal-lg" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							        <h4 class="modal-title">Details for image</h4>
							      </div>
							      <div class="modal-body">
							        <div id="image-preview-modal"></div>
							        <div class="row image-data-row">
							          <div class="col-sm-4 static-data">
							            <ul class="file-info-list">
							              <li><strong>File name:</strong> <span id="filename"></span></li>
							              <li><strong>File type:</strong> <span id="file-extension"></span></li>
							              <li><strong>File size:</strong> <span id="filesize"></span></li>
							              <li><strong>Dimensions:</strong> <span id="file-dimensions"></span></li>
							            </ul>
							            <ul class="file-info-list">
							              <li><strong>Uploaded by:</strong> <span id="uploader">Kasper</span></li>
							              <li><strong>Upload date:</strong> <span id="upload-date">28. august 2016</span></li>
							              <li><strong>Uploaded to:</strong> <span id="upload-folder">Images12</span></li>
							            </ul>
							          </div>
							          <div class="col-sm-8 dynamic-data">
							            <form class="form-horizontal">
							              <div class="form-group">
							                <label for="url" class="col-sm-2 control-label">URL</label>
							                <div class="col-sm-10">
							                  <input type="text" class="form-control" id="url" disabled>
							                </div>
							              </div>
							              <div class="form-group">
							                <label for="title" class="col-sm-2 control-label">Titel</label>
							                <div class="col-sm-10">
							                  <input type="password" class="form-control" id="title" placeholder="Titel">
							                </div>
							              </div>
							              <div class="form-group">
							                <label for="alt" class="col-sm-2 control-label">Alt Texy</label>
							                <div class="col-sm-10">
							                  <input type="password" class="form-control" id="alt" placeholder="Alt Text">
							                </div>
							              </div>
							            </form>
							            <div class="text-right">
							              <a href="" target="blank" id="full-image-link">Preview on new tab</a> | <a href="#" class="text-danger" id="delete-image">Delete image permantly</a>
							            </div>
							          </div>
							        </div>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							        <button type="button" class="btn btn-primary">Save Changes</button>
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

	<!-- 	<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script	src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/assets/basic/js/proflie_slide/classie.js"></script>
	<script	src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js"></script>
	<script src="./resources/assets/tag/js/search_tag.js"></script>
	<script src="./resources/assets/gallery/js/gallery/gallery_classie.js"></script>
	<script	src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js"></script>
	<script	src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>	 
	<script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>-->

	
	<script
		src="./resources/assets/gallery/grid/js/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/grid/js/masonry.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/grid/js/classie.js"></script>
	<script src="./resources/assets/gallery/grid/js/cbpGridGallery.js"></script>
	
	<!-- Modal -->
	<script src="./resources/assets/gallery/js/cbpGridGallery.js"></script>
	<!-- Modal -->
	
	<!-- 사진 업로드 모달 -->
	<script src="./resources/assets/gallery/js/pictureUpload.js"></script>
	<!-- 사진 업로드 모달 끝 -->
	
	<script>
		new CBPGridGallery(document.getElementById('grid-gallery'));
	</script>
</body>
</html>












