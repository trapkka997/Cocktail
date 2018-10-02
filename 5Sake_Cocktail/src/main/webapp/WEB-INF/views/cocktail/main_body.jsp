<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>5Sake's Cocktail</title>
<link rel="stylesheet"
	href="./resources/assets/basic/css/proflie_slide/slide_component.css">
<link rel="stylesheet"
	href="./resources/assets/main/css/Simple-Slider.css">
<link rel="stylesheet"
	href="./resources/assets/main/css/title/title.css">

<style type="text/css">
.recommandCocktail_img
{
	height: 70%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: contain;
}
.recommandPhoto_img{
	height: 50%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: contain;
}
.userEL2556141 hr {
	border: 0;
	border-top: 1px solid #7f7f7f;
	height: 1px;
	margin-bottom: 0;
}

.userEL2556141 hr+hr {
	border-style: dashed;
	margin-top: 2px;
	margin-bottom: 20px;
}

.userEL2556149 p.content-text {
	font-family: 'Quicksand', 'Nanum Gothic';
}

.userEL2556149 hr.divider {
	width: 42px;
	margin: 10px auto 10px 0;
	border: none;
	border-top: 1px solid #000;
}

.userEL2556149 p.cate-text {
	font-family: 'Lora', 'Nanum Gothic';
}
</style>
<script>
	$(document).ready(function() {
		$('.recommandCocktail_img').on('click', function() {
			$("#content").load("/cocktail/cocktailDetail?cocktailSeq="+$(this).attr('seq_num'));
		});	
		$('.recommandPhoto_img').on('click', function() {
			$("#content").load("/cocktail/eachoneProfile?userEmail="+$(this).attr('usr_email'));
		});	
	});
</script>
</head>
<body>
	<div>
		<div class="container">
			<div class="slide_row" id="slideshow">
				<div class="col-md-12" id="slideshow">
					<div class="simple-slider" style="margin-top: 35px; margin-bottom: 50px;">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide"
									style="background-image: url(./resources/assets/main/img/slideshow2.jpg)"></div>
								<div class="swiper-slide"
									style="background-image: url(./resources/assets/main/img/slideshow1.jpg)"></div>
								<div class="swiper-slide"
									style="background-image: url(./resources/assets/main/img/slideshow3.jpg)"></div>
							</div>
							<div class="swiper-pagination"></div>

						</div>

					</div>
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
				</div>
			</div>
			<!-- line -->
			<div class='userEL2556141'>
				<div class='container'>
					<div class='no-padding'>
						<div class='divider-box' data-divider='true'
							data-selector='.divider-box' data-title='divider width'>
							<hr data-selector='hr' data-border='true' data-title='line color'>
							<hr data-selector='hr' data-border='true' data-title='line color'>
						</div>
					</div>
				</div>
			</div>
			<!-- line -->

			<div class="row" id="cocktails">
				<div class="col-md-12" id="recommend_title">
					<h2 class="chapter ng-binding">
						<br> <small> <br> <i
							class="js-filter-text ng-binding">Popular</i><br>
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
									<c:forEach var="recommandCocktail"
										items="${ recommandCocktailList}">
										<td class="recommandCocktail_td"
											style="text-align: center; border-top: none;">
											<%-- <a href="cocktailDetail?cocktailSeq=${recommandCocktail.cocktailSeq }"> --%>
											<img class="recommandCocktail_img"
											seq_num="${recommandCocktail.cocktailSeq }"
											src="${recommandCocktail.imageRink }"> <!-- </a> -->
											
											<div class="text-box">
												<p class="content-text" data-edit="true"
													data-selector="p.content-text">
													<b>Chateau Minuty</b>
												</p>
												<hr class="divider" data-selector="hr.divider"
													data-border="true" data-title="선 색상">
												<p class="cate-text" data-edit="true"
													data-selector="p.cate-text">Party</p>
											</div>
											
										</td>
									</c:forEach>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>


			<!-- line -->
			<div class='userEL2556141'>
				<div class='container'>
					<div class='no-padding'>
						<div class='divider-box' data-divider='true'
							data-selector='.divider-box' data-title='divider width'>
							<hr data-selector='hr' data-border='true' data-title='line color'>
							<hr data-selector='hr' data-border='true' data-title='line color'>
						</div>
					</div>
				</div>
			</div>

			<div class="row" id="photos">
				<div class="col-md-12" id="photo_title">
					<h2 class="chapter ng-binding">
						<br> <small> <br> <i
							class="js-filter-text ng-binding">Popular</i><br>
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
									<c:forEach var="recommandUserPhoto"
										items="${recommandUserPhotoList }">
										<td class = "recommandPhoto_td" style = "text-align: center; border-top: none; ">
										<img class="recommandPhoto_img" usr_email="${recommandUserPhoto.userEmail}"
											src="${path }${recommandUserPhoto.saveFileName}">
											<div class="text-box">
												<p class="content-text" data-edit="true"
													data-selector="p.content-text">
													<b>Chateau Minuty</b>
												</p>
												<hr class="divider" data-selector="hr.divider"
													data-border="true" data-title="선 색상">
												<p class="cate-text" data-edit="true"
													data-selector="p.cate-text">Party</p>
											</div>
											
											</td>

									</c:forEach>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- line -->
			<div class='userEL2556141'>
				<div class='container'>
					<div class='no-padding'>
						<div class='divider-box' data-divider='true'
							data-selector='.divider-box' data-title='divider width'>
							<hr data-selector='hr' data-border='true' data-title='line color'>
							<hr data-selector='hr' data-border='true' data-title='line color'>
						</div>
					</div>
				</div>
			</div>
			<!-- line -->


		</div>
	</div>
	<script src="./resources/assets/main/js/Simple-Slider.js"></script>
</body>
</html>