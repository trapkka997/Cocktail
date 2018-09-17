<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neat — Free Website Template, Free HTML5 Template by freehtml5.co</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Abel">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Abhaya+Libre">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Abril+Fatface">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Acme">
    <link rel="stylesheet" href="./resources/assets/css/page_default/animate.css?h=abb70068f2bbb9350cd70184af8c04b9">
    <link rel="stylesheet" href="./resources/assets/css/page_default/bootstrap.css?h=1a48b0887f2320c6122d56946cbdc556">
    <link rel="stylesheet" href="./resources/assets/css/page_default/flexslider.css?h=367e487d1bdd1899e6f2141318162cb0">
    <link rel="stylesheet" href="./resources/assets/css/page_default/icomoon.css?h=c8b93ce725d7c590cad3260293efd8ba">
    <link rel="stylesheet" href="./resources/assets/css/page_default/magnific-popup.css?h=a2c43e6d963a37b0c6f84159a08d2e4c">
    <link rel="stylesheet" href="./resources/assets/css/page_default/style.css?h=fe6c29024c386b6b3d66d7e72da758d4">
    <link rel="stylesheet" href="./resources/assets/css/tag_search/tag_default.css?h=4dd1062002b011063b0fa886b1c86a20">
</head>

<body style="background-color:#ecf8f9;">
<div class="fh5co-loader">
</div>

<div id="page">
  <nav class="fh5co-nav" role="navigation">
    <div class="container-wrap">
      <div class="top-menu">
        <div class="row">
          <div class="col-xs-2">
            <div id="fh5co-logo"><a href="index.html">Neat</a></div>
          </div>
          <div class="col-xs-10 text-right menu-1">
            <ul>
              <li><a href="/cocktail/">Home</a></li>
              
              <li><a href="photoLibrary">LIBRARY</a></li>
              <li class="has-dropdown active">
                <a href="search">SEARCH</a>
                <ul class="dropdown">
                  <li><a href="#">Web Design</a></li>
                  <li><a href="#">eCommerce</a></li>
                  <li><a href="#">Branding</a></li>
                  <li><a href="#">API</a></li>
                </ul>
              </li>
              <li><a href="about.html">About</a></li>
              <li><a href="contact.html">Contact</a></li>
            </ul>
          </div>
        </div>

      </div>
    </div>
  </nav>
  <div class="container-wrap">

    <aside id="fh5co-hero">
      <div class="flexslider">
        <ul class="slides">
          <li style="background-image :url(./resources/assets/img/logo/linkedin_banner_image_2.png?h=ca10431066015910b447e80d57b75821)">
            <div class="overlay-gradient"></div>
            <div class="container-fluids">
              <div class="row">
                <div class="col-md-6 col-md-offset-3 slider-text slider-text-bg">
                  <div class="slider-text-inner text-center">
                    <h1></h1>
                    <h2></h2>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </aside>
    <!-- 로고 -->

	<div id = "tag_filter_title">
        <h1>Isotope - filtering &amp; sorting</h1>
    </div>
    <div id='toggle' style="padding-left: 20px; padding-right: 20px;">
      <div id="filter1">
        <h2>BASE SPIRITS</h2>
        <div id="alcole" class="button-group" data-filter-group='alcole'>
          <button class="button is-checked" data-filter="*">All</button>
          <button class="button" data-filter=".브랜디">Brandy</button>
          <button class="button" data-filter=".위스키">Whisky</button>
          <button class="button" data-filter=".보드카">Vodka</button>
          <button class="button" data-filter=".럼">Rum</button>
          <button class="button" data-filter=".드라이진">Dry Jin</button>
          <button class="button" data-filter=".테킬라">Tequila</button>
        </div>
      </div>

      <div id="filter2">
        <h2>liqueur</h2>
        <div id="liqueur" class="button-group" data-filter-group='liqueur'>
          <button class="button is-checked" data-filter="*">All</button>
          <button class="button" data-filter=".와인">Wine</button>
          <button class="button" data-filter=".비터스">Bitters</button>
          <button class="button" data-filter=".비어">Beer</button>
          <button class="button" data-filter=".리큐르">Liqueur</button>
          <button class="button" data-filter=".크레임">Cemeliqueur</button>
          <button class="button" data-filter=".쉐리">Sherry</button>
          <button class="button" data-filter=".베르무트">Vermouth</button>
          <button class="button" data-filter=".아마레또">Amaretto</button>
        </div>
      </div>

      <div id="filter3">
        <h2>material</h2>
        <div id="material" class="button-group" data-filter-group='material'>
          <button class="button is-checked" data-filter="*">All</button>
          <button class="button" data-filter=".시럽">Syrup</button>
          <button class="button" data-filter=".레몬">Lemon</button>
          <button class="button" data-filter=".사과">Apple</button>
          <button class="button" data-filter=".체리">Cherry</button>
          <button class="button" data-filter=".파인애플">Pineapple</button>
          <button class="button" data-filter=".라임">Lime</button>
          <button class="button" data-filter=".오렌지">Orange</button>
          <button class="button" data-filter=".코코넛">Coconut</button>
          <button class="button" data-filter=".토마토">Tomato</button>
          <button class="button" data-filter=".자몽">Grapefruit</button>
          <button class="button" data-filter=".라즈베리">Raspberry</button>
          <button class="button" data-filter=".계란">Egg</button>
          <button class="button" data-filter=".스파이시">Spicy</button>
          <button class="button" data-filter=".설탕">Sugar</button>
          <button class="button" data-filter=".우유">Milk</button>
          <button class="button" data-filter=".복숭아">Peach</button>
          <button class="button" data-filter=".탄산수">Soda</button>
          <button class="button" data-filter=".진저에일">Gingerale</button>
          
        </div>
      </div>

      <div class="grid">
        <c:forEach var="cocktail" items="${cocktailList}">
         <div class="element-item" data-category="brandy">
          <h3 class="name">${cocktail.cocktailName}</h3>
          <a href="cocktailDetail?cocktailname=${cocktail.cocktailName }">
          	<img src="${cocktail.imageRink }" height="100px" width="100px">
          </a>
        </div>
        
        </c:forEach>
       
      </div>
      <div id="fh5co-blog">
        <div class="row">

        </div>
      </div>
    </div>
    <!-- END container-wrap -->

    <div class="container-wrap">
      <!-- <footer id="fh5co-footer" role="contentinfo">
      <div class="row copyright">
        <div class="col-md-12 text-center">
          <p>
            <small class="block">© 2016 Free HTML5. All Rights Reserved.</small>
            <small class="block">Designed by <a href="http://freehtml5.co/" target="_blank">FreeHTML5.co</a> Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>
          </p>
          <p>
          </p>
          <ul class="fh5co-social-icons">
            <li><a href="#"><i class="icon-twitter"></i></a></li>
            <li><a href="#"><i class="icon-facebook"></i></a></li>
            <li><a href="#"><i class="icon-linkedin"></i></a></li>
            <li><a href="#"><i class="icon-dribbble"></i></a></li>
          </ul>
          <p></p>
        </div>
      </div>
    </footer> -->
    </div>
  </div>

  <div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
  </div>
	
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/assets/js/page_default/jquery.countTo.js?h=0f48c1b00e0bc4c33ed8aacfba285409"></script>
    <script src="./resources/assets/js/page_default/jquery.easing.1.3.js?h=2cb90c06cfc2084e0e11ca2b8a10f6c9"></script>
    <script src="./resources/assets/js/page_default/jquery.flexslider-min.js?h=d22c7a166ed20731c48d2f36ff1334ad"></script>
    <script src="./resources/assets/js/page_default/jquery.magnific-popup.min.js?h=d9267d6dda814fd767e1df7bfbe7eb57"></script>
    <script src="./resources/assets/js/page_default/jquery.waypoints.min.js?h=28ef3dc306be44a30ec0d0ffe2bee109"></script>
    <script src="./resources/assets/js/page_default/magnific-popup-options.js?h=dff6a284a8ab2e228307c7b5f6d443dd"></script>
    <script src="./resources/assets/js/page_default/main.js?h=956ce6896f30e1f1c0bb1e30f608fd45"></script>
    <script src="./resources/assets/js/page_default/modernizr-2.6.2.min.js?h=c3076c3133684f1acfb50014a2aa0876"></script>
    <script src="./resources/assets/js/page_default/respond.min.js?h=fda355038387a38685fb8213c2c2374b"></script>
    <script src="./resources/assets/js/tag_search/isotope.pkgd.js?h=8896e082b3fa1738e2e2f558a7fc1fa4"></script>
    <script src="./resources/assets/js/tag_search/search_tag.js"></script>
	<script>
	        $("#tag_filter_title").click(function(){
	        	//alert('aa');
	           // $(this).next("div").toggleClass("hide");
	            var submenu = $(this).next("div");
	            if( submenu.is(":visible") ){
	                submenu.slideUp("slow");
	            }else{
	                submenu.slideDown("slow");
	            }
	        });
	</script>
</body>

</html>