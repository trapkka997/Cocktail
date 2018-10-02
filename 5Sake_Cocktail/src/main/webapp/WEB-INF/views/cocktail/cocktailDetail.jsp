<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>5Sake's Cocktail</title>
    
    
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanummyeongjo.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One&amp;subset=latin-ext">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="./resources/assets/basic/css/navbar/navbar.css?h=5e4f93ff911994d0acfb72a92c76eb04">
    <link rel="stylesheet" href="./resources/assets/product_detail/css/product_detail/product_detail.css?h=583a78a19df08ccbf1a3f2a89dccbf94">
    <link rel="stylesheet" href="./resources/assets/basic/css/proflie_slide/slide_component.css?h=c31784850592eda94811485f90318815">
    <link rel="stylesheet" href="./resources/assets/product_detail/css/recommend/cocktail_recommend_title.css?h=8ba319ea454a344c8bf43dd4d88bcbb9">
    <link rel="stylesheet" href="./resources/assets/product_detail/css/recommend/recommend_cocktail.css?h=9fdcb590092abd8e204c7b69a22c515a">
</head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
@import url(//fonts.googleapis.com/earlyaccess/nanumgothiccoding.css);

/* 사진 테두리 */
[data-aos^=fade][data-aos^=fade].aos-animate {
    opacity: 0;
    transform: translate(0);
}
/* 사진 테투리 */

.cocktail_detail{

	font-family: 'Jeju Gothic', sans-serif;
}

.cocktail_name{

	font-family: 'Jeju Gothic', sans-serif;
}
</style>
<body>
	<input type="hidden" id="cocktailSeq" name="cocktailSeq" value="${cocktail.cocktailSeq }">
	<div class="cocktail_show">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product_wrapper" style="width: 750px;">
						<div class="product-img" style="width: 375px;" >
							<img class="product_detail-img"
								style="opacity:9; background-repeat: no-repeat; background-image:url(&quot;${cocktail.imageRink}&quot;);background-position:center;background-size:contain;width:375px;height:420px;color:rgb(120,133,147);background-color:rgba(255,255,255,0);">
						</div>
						<div class="product-info">
							<div class="product-text">
							
								<h1 class = "cocktail_name" style="margin-top: -15px; padding-top: 41px; cursive;">
									${cocktail.cocktailName}
								</h1>
								
								<h2 class = "cocktail_recipes" style="font-size: 15px; background-position: top; background-size: auto; background-repeat: no-repeat; margin-bottom: 12px;">
									Cocktail Recipes
								</h2>
								
								<div class="cocktail_detail"
									style="padding-bottom: 0px; height: 210px; margin-left: 30px; ">
									${cocktail.recipe}
								</div>
								
							</div>
							<div class="product-savebutton">
								<button type="button" onclick="saveBtnn()">Save</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<div class="container_cocktail">
			<div class="col">
				<div class="cocktail_recommend_title">
					<h2 class="C_R_title">${aa}와 어울리는 칵테일</h2>
					<small class="C_R_small">당신을 위한 더 많은 칵테일 추천</small>
				</div>
			</div>
			<div class="row" style="width: 80%; margin: 30px auto;">
				<div class="product-items">
					<div class="product-item">
						<div class="item-wrap">
							<img src="./resources/assets/product_detail/img/no_cocktail.jpg" />
							<div class="wrap-qtt">
								<div class="wrap-qtt-field-qtt"></div>
							</div>
						</div>
						<div class="item-info">
							<div class="item-title">Cocktail Name</div>
							<div class="item-price" data-price="45">tag</div>
						</div>
					</div>
					<div class="product-item">
						<div class="item-wrap">
							<img src="./resources/assets/product_detail/img/no_cocktail.jpg" />
							<div class="wrap-qtt">
								<div class="wrap-qtt-field-qtt"></div>
							</div>
						</div>
						<div class="item-info">
							<div class="item-title">Cocktail Name</div>
							<div class="item-price" data-price="45">tag</div>
						</div>
					</div>
					<div class="product-item">
						<div class="item-wrap">
							<img src="./resources/assets/product_detail/img/no_cocktail.jpg" />
							<div class="wrap-qtt">
								<div class="wrap-qtt-field-qtt"></div>
							</div>
						</div>
						<div class="item-info">
							<div class="item-title">Cocktail Name</div>
							<div class="item-price" data-price="45">tag</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container_cocktail">
			<div class="col">
				<div class="cocktail_recommend_title">
					<h2 class="C_R_title">${aa} 와 함께한 사람들</h2>
					<small class="C_R_small">${aa} 와 함께한 사람들의 추억을 만나보세요</small>
				</div>
			</div>
			<div class="row" style="width: 80%; margin: 30px auto;">
				<div class="product-items">
					<div class="product-item">
						<div class="item-wrap">
							<img src="./resources/assets/product_detail/img/no_cocktail.jpg" />
							<div class="wrap-qtt">
								<div class="wrap-qtt-field-qtt"></div>
							</div>
						</div>
						<div class="item-info">
							<div class="item-title">Cocktail Name</div>
							<div class="item-price" data-price="45">tag</div>
						</div>
					</div>
					<div class="product-item">
						<div class="item-wrap">
							<img src="./resources/assets/product_detail/img/no_cocktail.jpg" />
							<div class="wrap-qtt">
								<div class="wrap-qtt-field-qtt"></div>
							</div>
						</div>
						<div class="item-info">
							<div class="item-title">Cocktail Name</div>
							<div class="item-price" data-price="45">tag</div>
						</div>
					</div>
					<div class="product-item">
						<div class="item-wrap">
							<img src="./resources/assets/product_detail/img/no_cocktail.jpg" />
							<div class="wrap-qtt">
								<div class="wrap-qtt-field-qtt"></div>
							</div>
						</div>
						<div class="item-info">
							<div class="item-title">Cocktail Name</div>
							<div class="item-price" data-price="45">tag</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/assets/product_detail/js/bs-animation.js?h=cc4d20340936b09bec81533dd59db3a8"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    <script src="./resources/assets/basic/js/proflie_slide/classie.js?h=723c75fde6dc7bb3ef0f7f12584655a0"></script>
    <script src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js?h=97989a57a1e8fb69eff65e5a62de7dfb"></script>
    <script>
    function saveBtnn() {
		var cocktailSeq = document.getElementById('cocktailSeq').value;
	 	$.ajax({
			method: "get",
			url: "recommandCocktail",
			data: {
				cocktailSeq : cocktailSeq
			},
			success: function(resp) {
				if(resp == 1){
					alert('조아연');
				}else if(resp == 0){
					alert('이미 좋아요 하셨습니다.');
				}
			},
			error: function () {
				alert('error');
			}
		}); 
	}	
    </script> 
    
</body>

</html>