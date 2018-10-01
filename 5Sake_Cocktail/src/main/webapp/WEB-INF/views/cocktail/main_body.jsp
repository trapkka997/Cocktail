<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>5Sake's Cocktail</title>
	<link rel="stylesheet"	href="./resources/assets/basic/css/proflie_slide/slide_component.css">
	<link rel="stylesheet"	href="./resources/assets/main/css/Simple-Slider.css">
	<link rel="stylesheet"	href="./resources/assets/main/css/title/title.css">
	<script>
	$(document).ready(function() {
		$('.img_img').on('click', function() {
			$("#content").load("/cocktail/cocktailDetail?cocktailSeq="+$(this).attr('seq_num'));
		});	
		$('.img_img_img').on('click', function() {
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
					<div class="simple-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide"
									style="background-image: url(./resources/assets/main/img/slideshow1.jpg)"></div>
								<div class="swiper-slide"
									style="background-image: url(./resources/assets/main/img/slideshow2.jpg)"></div>
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


			<div class="row" id="cocktails">
				<div class="col-md-12" id="recommend_title">
					<h2 class="chapter ng-binding">
						<br> <small> <br> <i class="js-filter-text ng-binding">Popular</i><br>
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
									<c:forEach var="recommandCocktail" items="${ recommandCocktailList}">
									<td >
									<%-- <a href="cocktailDetail?cocktailSeq=${recommandCocktail.cocktailSeq }"> --%>
										<img class="img_img" seq_num ="${recommandCocktail.cocktailSeq }" src="${recommandCocktail.imageRink }"><!-- </a> -->
									</td>
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
								<c:forEach var="recommandUserPhoto" items="${recommandUserPhotoList }">
									<td>
									<img class="img_img_img" usr_email="${recommandUserPhoto.userEmail}"  src="${path }${recommandUserPhoto.saveFileName}"></a>
									</td>
								</c:forEach>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./resources/assets/main/js/Simple-Slider.js"></script>
</body>
</html>