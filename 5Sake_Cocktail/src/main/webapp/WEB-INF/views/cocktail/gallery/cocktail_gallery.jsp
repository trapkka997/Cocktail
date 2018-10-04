<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>5sake's cocktail</title>
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet"	href="./resources/assets/selfmaking/css/button/button.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet"	href="./resources/assets/gallery/css/uploadbutton.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/hover.css">
<link rel="stylesheet"	href="./resources/assets/gallery/css/pictureUpload.css">
<link rel="stylesheet"	href="./resources/assets/gallery/css/button.css">
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
.small_img{
    height: 50%;
    z-index: 57;
    position: absolute;
    left: 540px;
    top: 350px;
    
    border-bottom-left-radius: 40px;
    border-bottom-right-radius: 40px;
    -webkit-box-shadow: -7px -6px 5px #0e0d0d66;
}
li{
	display: none;
}
.slideshow > ul> li{
	display: block;
}
</style>
<script>
	$(document).ready(function() {
		$('.big_img').on('click', function() {
			$("#content").load("/cocktail/eachoneProfile?userEmail="+$(this).attr('usr-email'));
		});	
	});
	$(function(){
		$("li").slice(0,9).show(); // 최초 10개 선택
		 $("#load").click(function(e){ // Load More를 위한 클릭 이벤트e
			e.preventDefault();
			$("li:hidden").slice(0,9).show(); // 숨김 설정된 다음 10개를 선택하여 표시
			new CBPGridGallery(document.getElementById('grid-gallery'));
		}); 
	});
</script>
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
									<h1 style="margin-top: 20px;">みんなのさけ</h1>
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
								<c:forEach var="userPhoto" items="${userPhotos }" varStatus="var">
									<li>
										<figure class="tile2 scale-anm brandy all">
											<div class="profilebox profilebox1">
												<img class="galleryPhoto"
													src="${userPhoto.saveFileName}" alt="img01" />
												<div class="SocialIcons" id='icon${var.index}'>
													<a onclick="hover(${var.index},${userPhoto.userPhotoSeq })" href="#">
														<i class="fas fa-heartbeat"></i>
													</a>
												</div>
											</div>
											<figcaption>
												<h3>${userPhoto.title}</h3>
												<p>${userPhoto.contents}</p>
											</figcaption>
										</figure>
									</li>
								</c:forEach>
							</ul>
						</section>
						<section class="slideshow">
							<ul>
 								<c:forEach var="userPhoto" items="${userPhotos}">
									<li>
										<figure>
											<figcaption>
												<h3>${userPhoto.title}</h3>
												<p>${userPhoto.contents}</p>
											</figcaption>
											<img class="big_img" usr-email="${userPhoto.userEmail }" src="${userPhoto.saveFileName}"
												alt="img01" />
											<img class="small_img" style = "width : 25%"
												src="${userPhoto.imageRink}"
												alt="img01" />
										</figure>
									</li>
								</c:forEach>

							</ul>
							<nav>
							<span class="nav-prev"> 
								<i class="fas fa-angle-left"></i>
							</span> 
							<span class="nav-next"> 
								<i class="fas fa-angle-right"></i>
							</span> 
							<span class="nav-close" style="color: lightblue;"> 
								<i class="fas fa-times"></i>
							</span>
						</nav>
						</section>
						<!-- // slideshow -->
					</div>
				</div>
				
				
				<!-- load_button -->
				<div class="col-md-12" style="text-align: center;">
					<a href="#" id="load">Load More</a>
				</div>
				<!-- load_button -->
				
				
				<!-- modal -->
				<div class="plus-button" class="btn btn-primary" data-toggle="modal"
					 data-target="#myModal">+</div>
					
				<%-- <!-- modal1_start -->
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

											<c:forEach var="url" items="${urls }">
												<div class="image-container">
													<div class="inner-image-container">
														<div class="on-image-controls">
															<div class="delete-confirm">Confirm deleting!</div>

															<span class="fa fa-times" data-toggle="tooltip"
																data-placement="top" title="Delete image"></span>
														</div>
														<div class="center-container">
															<img src="${url }">
														</div>
													</div>
												</div>
											</c:forEach>

										</div>
										<form name="uploadForm" id="uploadForm"
											enctype="multipart/form-data" method="post">
											<div id="dropzone" class="dropzone">
											Drop files here to <a href="#" alt="Click" id="upload-link">upload</a></div>
										</form>
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
				<!-- modal --> --%>
			</div>
		</div>
	</div>
	<div class="modal fade" role="dialog" tabindex="-1"	id="getCocktailModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Matching Cocktail</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body" style="text-align: center;">
					<p>Share Your Memories</p>
					<div>
						<img id="modalImgId">
					</div>
					<div>
						<textarea id="modalTextArea" style="width: -webkit-fill-available;"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-light" type="button" data-dismiss="modal">Close</button>
					<button class="btn btn-primary" type="button" data-dismiss="modal"
						onclick="saveBtn()">Save</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 사진 상세 슬라이드 -->
	<script src="./resources/assets/gallery/grid/js/modernizr.custom.js"></script>
	<script	src="./resources/assets/gallery/grid/js/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/grid/js/masonry.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/grid/js/classie.js"></script>
	<script src="./resources/assets/gallery/grid/js/cbpGridGallery.js"></script>

	<!-- Modal -->
	<script src="./resources/assets/gallery/js/cbpGridGallery.js"></script>
	<!-- Modal -->

	<!-- 사진 업로드 모달 -->
	<script src="./resources/assets/gallery/js/pictureUpload.js"></script>
	<script src="./resources/assets/gallery/js/filestack.js"></script>
	<!-- 사진 업로드 모달 끝 -->

	<script>
		new CBPGridGallery(document.getElementById('grid-gallery'));
	</script>
	<script>

	function hover(num,userPhotoSeq) {
		$('#icon'+num).children().children().css('color', 'red');
		$('#icon'+num).css('transform', 'none')
		.css('transition', 'none')
		.css('transform-origin', 'none')
		.css('opacity', 'inherit')
		.css('left', '15px');
		event.stopPropagation();
		$.ajax({
			method:"get",
			url:"userlikephoto",
			data:{
				userPhotoSeq : userPhotoSeq
			},
			success:function(resp){
				alert('좋아요!');
			},
			error:function(){
				alert('err');
			}
		});
	}	
	</script>
	<script type="text/javascript">
	 
		/* ;(function($) {
			var settings = {
				url : '/cocktail/vision',
				toDo : 'OPTIONAL TODO VARIABLE TO SEND TO UPLOAD FILE',
				hoverClass : 'dragAndUploadActive',
				uploadingClass : 'dragAndUploadUploading',
				errorClass : 'dragAndUploadFailure',
				successClass : 'dragAndUploadSuccess',
				statusField : '#dragAndUploadStatus',
				classChangeDelay : 750,
				maxSize : 5242880
			};

			function message(item, newClass, text, removeClass) {
				$(settings.statusField).html(text);
				$(item).removeClass(
						settings.hoverClass + ' ' + settings.uploadingClass)
						.addClass(newClass).delay(settings.classChangeDelay)
						.promise().done(function() {
							if (removeClass === 1) {
								$(this).removeClass(newClass);
							}
						});
			}

			function uploadFile(file, item) {
				if (file.size <= settings.maxSize) {
					var fd = new FormData();
					fd.append("file", file);
					var xhr = new XMLHttpRequest();
					xhr.onreadystatechange = function() {
						if (this.readyState == 4 && this.status == 200) {
							succFunction(this, item, xhr.response);
							console.log(xhr.response);
						} else if (this.status == 500) {
							failFunction(this, item, xhr.response);
						} else if (this.status == 403) {
							failFunction(this, item, xhr.response);
						} else if (this.status == 404) {
							failFunction(this, item, xhr.response);
						}
					};
					xhr.open("POST", "/cocktail/vision");
					xhr.send(fd);

				} else {
					message(item, settings.errorClass, 'File is too large.', 0);
				}
			}
			function succFunction(xhttp, item, resp) {
				var arr = JSON.parse(resp);
				cocktailList = arr;
				message(item, settings.successClass,
						'File successfully uploaded.', 0);
				$('#modalImgId').attr("src", arr[0].imageRink);
				$('#getCocktailModal').modal('show');
			}
			function failFunction(xhttp, item, resp) {
				message(item, settings.errorClass, 'Upload failed.', 0);
			}

 			function findFiles(e, item) {
				console.log(e);
				console.log(item);
				var files = e.originalEvent.dataTransfer.files;
				console.log(files);
				$(item).addClass(settings.uploadingClass);
				$.each(files, function(key, value) {
					console.log(key);
					console.log(value);
					uploadFile(value, item);
				});
			} 

			 function setEvents(item) {
				$(item).on(
						'drop dragover dragenter dragleave',
						function(e) {
							$(this).removeClass(
									settings.errorClass + ' '
											+ settings.successClass);
							e.stopPropagation();
							e.preventDefault();
							if (e.type !== 'dragover') {
								$(this).toggleClass(settings.hoverClass);
							}
							if (e.type === 'drop') {
								findFiles(e, item);
								console.log(e);
								console.log(item);
							}
						});
			} 

 			function setOptions(options) {
				$.each(options, function(key, val) {
					settings[key] = val;
				});
			}

			$.fn.dragAndUpload = function(options) {
				if (options !== undefined)
					setOptions(options);
				this.each(function() {
					setEvents(this);
				});
				return this;
			} 
		}(jQuery)); */

/* 		$(document).ready(function() {
			// Uses default settings
			$("#dropzone").dragAndUpload();
		}); */

	</script>
	
	<script>
		var cocktailList;
		jQuery(document).ready(function() {
			var pickerOptions = {
				accept : 'image/*',
			}
			var apiKey = 'AB8tiXIh3TPiZmocJNLKPz';
			var client = filestack.init(apiKey);
			jQuery(".plus-button").click(function() {
				client.pick(pickerOptions).then(function(result) {
					console.log(result.filesUploaded[0]);
					console.log(JSON.stringify(result.filesUploaded))
					$.ajax({
						method : "post",
						url : "vision",
						data : {
							path : result.filesUploaded[0].url
						},
						dataType : "json",
						success : function(resp){
							console.log(resp);
							cocktailList = resp;
							$('#modalImgId').attr("src", resp[0].imageRink);
							$('#getCocktailModal').modal('show');
						},
						error : function(){
							alert('err');
						}
					});
				});
			});

		})
		
		function saveBtn() {
			var imgSource = $('#modalImgId').attr("src");
			var textAreaSource = $('#modalTextArea').val();
			console.log(imgSource);
			console.log(textAreaSource);
			console.log(cocktailList);
			$.ajax({
				method : 'post',
				url : 'writeBoard',
				data : {
					contents : textAreaSource,
					cocktailName : cocktailList[0].cocktailName,
				},
				dataType : 'text',
				success : function(resp) {
					$("#content").load("/cocktail/cocktailphoto");
					$('#myModal').modal('hide');
				},
				error : function() {
					alert('err');
				}
			})
		}
	</script>
</body>
</html>












