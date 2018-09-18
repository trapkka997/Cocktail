<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Neat — Free Website Template, Free HTML5 Template by freehtml5.co</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
</head>

<body style="background-color:#ecf8f9;">
	<div id="page" style="padding-left: 20px;padding-right: 20px;">

    <div id = "tag_filter_title">
        <h1>Isotope - filtering &amp; sorting</h1>
    </div>
    <div id='toggle' style="padding-left: 20px; padding-right: 20px;">
      <div id="filter1">
        <h2>BASE SPIRITS</h2>
        <div id="alcole" class="button-group">
          <button class="button alcole all">All</button>
          <c:forEach var="ingredientByAlcole" items="${ingredientByAlcoleList }">
          	<button class="button alcole" seq-data="${ingredientByAlcole.ingredientSeq }" classfy-data="${ingredientByAlcole.classify}">${ingredientByAlcole.ingredient }</button>
          </c:forEach>
        </div>
      </div>

      <div id="filter2">
        <h2>liqueur</h2>
        <div id="liqueur" class="button-group">
          <button class="button liqueur all">All</button>
          <c:forEach var="ingredientByLiqueurList" items="${ingredientByLiqueurList }">
          	<button class="button liqueur" seq-data="${ingredientByLiqueurList.ingredientSeq }" classfy-data="${ingredientByLiqueurList.classify}">${ingredientByLiqueurList.ingredient }</button>
          </c:forEach>
        </div>
      </div>

      <div id="filter3">
        <h2>material</h2>
        <div id="material" class="button-group">
          <button class="button material all">All</button>
          <c:forEach var="ingredientByMaterialList" items="${ingredientByMaterialList }">
          	<button class="button material" seq-data="${ingredientByMaterialList.ingredientSeq }" classfy-data="${ingredientByMaterialList.classify}">${ingredientByMaterialList.ingredient }</button>
          </c:forEach>
         
        </div>
      </div>
      <div class="grid">
      <div class="grid">
        <c:forEach var="cocktail" items="${cocktailList}">
	         <div class="element-item " data-category="brandy">
	          <h3 class="name">${cocktail.cocktailName}</h3>
	          <a href="cocktailDetail?cocktailSeq=${cocktail.cocktailSeq }">
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
    </div>
  </div>
  <div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
  </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
    <script>
    	var $spilitsClicked = $('.button.alcole.all'); 
    	var $liqueurClicked = $('.button.liqueur.all');
    	var $materialClicked = $('.button.material.all');
    	$spilitsClicked.css("background-color", "yellow");
    	$liqueurClicked.css("background-color", "yellow");
    	$materialClicked.css("background-color", "yellow");
    	$('.material').on('click', function() {
   			console.log(this);
   			$materialClicked.css("background-color", "white");
   			$(this).css("background-color", "yellow");
   			$materialClicked = $(this);
		}) ;
    	$('.alcole').on('click', function() {
   			console.log(this);
   			$spilitsClicked.css("background-color", "white");
   			$(this).css("background-color", "yellow");
   			$spilitsClicked = $(this);
		}) ;
   		$('.liqueur').on('click', function() {
   			console.log(this);
   			$liqueurClicked.css("background-color", "white");
   			$(this).css("background-color", "yellow");
   			$liqueurClicked = $(this);
		}) ;
   		
   		
   		function selectTagSearch() {
   			
			$.ajax({
				method : "get",
				url : "cocktailTagSearch",
				data : {
					spilits : $spilitsClicked.attr('seq-data'),
					liqueur : $liqueurClicked.attr('seq-data'),
					material : $materialClicked.attr('seq-data')
				},
				success : function() {
					
				},
				error : function() {
					
				}
			});
		}
    </script>
</body>

</html>