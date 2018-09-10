<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Neat — Free Website Template, Free HTML5 Template by freehtml5.co</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
    <link rel="stylesheet" href="./resources/assets/tag/css/tag_default.css">
</head>

<body style="background-color:#ecf8f9;">
	<div id="page" style="padding-left: 20px;padding-right: 20px;">

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
      <div class="grid">
        <c:forEach var="cocktail" items="${cocktailList}">
	         <div class="element-item ${cocktail.alcole} ${cocktail.liqueur} ${cocktail.mateial}" data-category="brandy">
	          <h3 class="name">${cocktail.cocktailname}</h3>
	          <a href="cocktailDetail?cocktailname=${cocktail.cocktailname }">
	          	<img src="${cocktail.imagerink }" height="100px" width="100px">
	          </a>
	        </div>
        </c:forEach>
      </div>
      <div id="fh5co-blog">
        <div class="row">

        </div>
      </div>
    </div>
    </div>
  </div>
  <div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
  </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/assets/tag/js/tag_search/isotope.pkgd.js"></script>
    <script src="./resources/assets/tag/js/search_tag.js"></script>
</body>

</html>