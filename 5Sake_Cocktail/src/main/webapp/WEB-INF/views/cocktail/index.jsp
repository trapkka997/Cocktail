<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <title>NEWS FEED</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <link rel="stylesheet" href="./resources/assets/basic/css/navbar/navbar.css">
    <link rel="stylesheet" href="./resources/assets/basic/css/proflie_slide/slide_component.css">
    <!--profile-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./resources/assets/basic/css/profile/default.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
    <link rel="stylesheet" href="./resources/assets/tag/css/tag_default.css">
    <style>
    	.card{
    		flex-direction: inherit;
    	}
    	.card-body{text-align: center;}
    	.img{
    		width : 200px;
    		border : 20px solid black;
    		border-radius: 50%
    	}
    	.tag{
    		background-color: #17a2b8;
    		border-radius: 10%;
    	}
    </style>
</head>
<body>
	<div class="navbar is-top-fixed">
	  <div class="container-fluid">
	    <div class="container">	
	      <div class="navbar-left">
	        <a class="navbar-toggle" data-toggle="dropdown" aria-expanded="false" href="#">
	           <span></span>
	           <span></span>
	           <span></span>
	           <div id="recommend" class="dropdown-menu" 
	           			style="margin-left:170px; margin-top:0px; width: 1500px;">
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
	                                  <div class="card-body">
	                                      <h4 class="card-title">Title</h4>
	                                      <p class="card-text">
	                                      	<img src='./resources/assets/basic/img/カクテルアイコン5.png' class='img'/>
	                                      </p>
	                                      	<label><h2>UserID</h2></label><p>
	                                      	<label>추천칵테일</label>
	                                      </div>
	                                 </div>
	                                 <!-- user picture here -->
	
	                                 <div class="card"> 
	                                     <div class="card-body">
	                                         <h4 class="card-title">Alcohol</h4>
	                                         <p class="card-text">
	                                      	<img src='./resources/assets/basic/img/カクテルアイコン5.png' class='img'/>
	                                      </p>
	                                      <div>
	                                      	<label><h4>cocktailName</h4></label><p>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      </div>
	                                      </div>
	                                 </div>
	                                 <!-- randam cocktail -->
	
	                                 <div class="card"> 
	                                     <div class="card-body">
	                                         <h4 class="card-title">Liqueur</h4>
	                                         <p class="card-text">
	                                      	<img src='./resources/assets/basic/img/カクテルアイコン5.png' class='img'/>
	                                      </p>
	                                      <div>
	                                      	<label><h4>cocktailName</h4></label><p>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      </div>
	                                      </div>
	                                 </div>
	                                 <!-- randam cocktail -->
	
	                                 <div class="card"> 
	                                     <div class="card-body">
	                                         <h4 class="card-title">Material</h4>
	                                         <p class="card-text">
	                                      	<img src='./resources/assets/basic/img/カクテルアイコン5.png' class='img'/>
	                                      </p>
	                                      <div>
	                                      	<label><h4>cocktailName</h4></label><p>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      </div>
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
	                                       <div class="card-body">
	                                           <h4 class="card-title">Title</h4>
	                                            <p class="card-text">
	                                      	<img src='./resources/assets/basic/img/カクテルアイコン5.png' class='img'/>
	                                      </p>
	                                      <div>
	                                      	<label><h4>cocktailName</h4></label><p>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      </div>
	                                      </div>
	                                 </div>
	                                   <!-- randam cocktail -->
	                                   <div class="card"> 
	                                       <div class="card-body">
	                                           <h4 class="card-title">Title</h4>
	                                            <p class="card-text">
	                                      	<img src='./resources/assets/basic/img/カクテルアイコン5.png' class='img'/>
	                                      </p>
	                                     <div>
	                                      	<label><h4>cocktailName</h4></label><p>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      </div>
	                                      </div>
	                                 </div>
	                                   <!-- randam cocktail -->
	                                   <div class="card"> 
	                                       <div class="card-body">
	                                           <h4 class="card-title">Title</h4>
	                                           <p class="card-text">
	                                      	<img src='./resources/assets/basic/img/カクテルアイコン5.png' class='img'/>
	                                      </p>
	                                     <div>
	                                      	<label><h4>cocktailName</h4></label><p>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      	<label class="tag">#태그명</label>
	                                      </div>
	                                      </div>
	                                 </div>
	                                   <!-- randam cocktail -->
	                               </div>
	                           </div>
	                       </div>	
	                </div>
	           </div>
	           <!-- dropdax_menu -->
	        </a>
	      </div>
	      <!-- navbar-left -->	
	      <div class="navbar-center">
	        <a href="#" class="navbar-item navbar-logo">
	          <i class="fas fa-glass-martini icon"></i>
	        </a>
	        <a href="#" class="navbar-item navbar-logo">
	          <i class="fab fa-microsoft icon"></i>
	        </a>
	        <a href="#" class="navbar-item navbar-logo">
	          <i class="fas fa-user-alt"></i>
	        </a>
	      </div>
	      <!-- navbar-center -->	
	      <div class="navbar-right">
	          <a href="#" class="navbar-item" data-toggle="dropdown" aria-expanded="false" href="#">
	              <i id = "showRightPush" class="fas fa-search"></i>
				</a>
	              <div id ="search" class="dropdown-menu" style="margin-left: 150px;  margin-right: 150px;  margin-top: 0px;">
	                <div class="row_drop_search">
	                  <div>
	                    <button type="button" class="close" aria-label="Close">
	                      <span aria-hidden="true">×</span>
	                    </button>
	                  </div>
	                    <div class="col-md-12">
	                      <div class="card-group">
	                          <div class="card"> 
	                              <div class="card-body" id="filter1">
	                                  <h4 class="card-title">BASE SPIRITS</h4>
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
	                          </div>
	                          <!-- user picture here -->
	
	                          <div class="card"> 
	                              <div class="card-body" id="filter2">
	                                  <h4 class="card-title">liqueur</h4>
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
	                          <!-- randam cocktail -->
							</div>
	                          <div class="card" > 
	                              <div class="card-body" id="filter3">
	                                  <h4 class="card-title">material</h4>
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
	                          <!-- randam cocktail -->
								</div>
	                          <div class="card"> 
	                              <div class="card-body" id="filter4">
	                                  <h4 class="card-title">Color</h4>
	                                   <div id="color" class="button-group" data-filter-group='color'>
								          <button class="button is-checked" data-filter="*">All</button>
								          <button class="button" data-filter=".시럽">Red</button>
								          <button class="button" data-filter=".레몬">Blue</button>
								          <button class="button" data-filter=".사과">Green</button>
								          <button class="button" data-filter=".체리">Pink</button>
								          <button class="button" data-filter=".파인애플">Orenge</button>
								          <button class="button" data-filter=".라임">Yellow</button>					          
								        </div>
	                         	 </div>
	                          <!-- randam cocktail -->
	                      </div>
	                    </div>
	                </div>
	                <div class="row_cocktail_fliter">
	                    <div class="grid">
	                    			<c:forEach var="cocktail" items="${cocktailList }">
	                    				<div class="element-item ${cocktail.alcole } ${cocktail.liqueur } ${cocktail.mateial }" data-category="transition">
									  	  <h3 class="name">${cocktail.cocktailname }</h3>
									  	  <a href="cocktailDetail?cocktailname=${cocktail.cocktailname }">
									  	  <img src="${cocktail.imagerink }" height="100" width="100"> </a>
									    </div>
	                    			</c:forEach>
									
							<%--<c:forEach var="cocktail" items="${cocktailList}">
						         <div class="element-item ${cocktail.alcole} ${cocktail.liqueur} ${cocktail.mateial}" data-category="brandy">
						          <h3 class="name">${cocktail.cocktailname}</h3>
						          <a href="cocktailDetail?cocktailname=${cocktail.cocktailname }">
						          	<img src="${cocktail.imagerink }" height="100px" width="100px">
						          </a>
	      						  </div>
				      	  </c:forEach> --%>
				      </div>
	                </div>
	                <!-- cocktail_Fliter -->
	              </div>
	              <!-- dropdax_menu -->		  
	              </div>
	
	
	      <div class="navbar-avatar">
	        <a id='showRight' href="#" class="navbar-item is-avatar" @click.prevent="showProfilePanel">
	            <img src="https://unsplash.it/200/200?image=1005" alt="Avatar"/>
	          </a>
	      </div>
	      <!-- navbar-right -->
	
	    </div>
	  </div>
	  <!-- container -->
	
	</div>
	<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
	  <div class="device">
		  <div class="top">
		    <div class="device-overlay"></div>
		    <div class="editable">
		      <div class="editable__circle">
		        <div class="editable__rotater">
		          <div class="editable__rotater-item">
		            <i class="fa fa-camera"></i>
		          </div>
		        </div>
		        <div class="editable__rotater">
		          <div class="editable__rotater-item">
		            <i class="fa fa-comments"></i>
		          </div>
		        </div>
		        <div class="editable__rotater">
		          <div class="editable__rotater-item">
		            <i class="fa fa-video-camera"></i>
		          </div>
		        </div>
		        <div class="editable__rotater">
		          <div class="editable__rotater-item">
		            <i class="fa fa-user"></i>
		          </div>
		        </div>
		      </div>
		      <div class="editable__cont">
		        <img src="./resources/assets/gallery/img/test_image/large/3.png" class="editable__cont-img">
		        <span class="editable__cont-edit js-edit">
		          <i class="fa fa-pencil-square-o"></i>
		        </span>
		      </div>
		    </div>
		  </div>
		  <div class="mid">
		    <div class="mid-block">
		      <h2 class="mid-number">77</h2>
		      <h3 class="mid-text">Teams</h3>
		    </div>
		    <div class="mid-block">
		      <h2 class="mid-number">666</h2>
		      <h3 class="mid-text">Reports</h3>
		    </div>
		  </div>
		  <div class="btm">
		    <h2 class="btm-text">Whatever</h2>
		  </div>
		  <div class="second">
		    <h2 class="second__h">Hello there!</h2>
		    <span class="second__back">Go back</span>
		    <a href="https://codepen.io/suez/public/" target="_blank" class="second__other">My other demos</a>
		  </div>
		</div>
	</nav>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/assets/basic/js/proflie_slide/classie.js"></script>
	<script src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js"></script>
    <script src="./resources/assets/tag/js/search_tag.js"></script>
    <script>
		  var menuRight = document.getElementById( 'cbp-spmenu-s2' ),
		    showRight = document.getElementById( 'showRight' ),
		    body = document.body;
		
		    showRight.onclick = function() {
		      classie.toggle( this, 'active' );
		      classie.toggle( menuRight, 'cbp-spmenu-open' );
		      disableOther( 'showRight' );
		    };
		
		  function disableOther(button) {
		    if( button !== 'showRight' ) {
		      classie.toggle( showRight, 'disabled' );
		    }
		  }
	</script>
	<script>
	$(document).ready(function() {			  
		  var $editable = $(".editable");
		  var $overlay = $(".device-overlay");
		  var $circle = $(".editable__circle");
		  var circleTrans = 400;
		  var $item = $(".editable__rotater-item");
		  var $second = $(".second");
		  
		  $(document).on("click", ".js-edit", function() {
		    $editable.addClass("clicked");
		    $overlay.addClass("active");
		  });
		  
		  $(document).on("click", ".device-overlay", function() {
		    $editable.removeClass("clicked");
		    $overlay.removeClass("active");
		  });
		  
		  $(document).on("click", ".editable__rotater-item", function() {
		    $(this).parent().addClass("picked");
		    $circle.addClass("picked");
		    $second.addClass("picked");
		  });
		  
		  $(document).on("click", ".second__back", function() {
		    $(".editable__rotater").removeClass("picked");
		    $circle.addClass("instant");
		    $circle.css("top");
		    $circle.removeClass("picked");
		    $second.removeClass("picked");
		    $editable.removeClass("clicked");
		    $overlay.removeClass("active");
		    setTimeout(function() {
		      $circle.removeClass("instant");
		    }, circleTrans);
		  });
		  
		});
	</script>
</body>

</html>	