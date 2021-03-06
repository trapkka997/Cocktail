<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>5Sake's Cocktail</title>

<link rel="stylesheet"   href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"   href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet"   href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet"   href="./resources/assets/basic/css/navbar/navbar.css">
<!--profile-->
<link rel="stylesheet"   href="./resources/assets/basic/css/profile/default.css">
<link rel="stylesheet" href="./resources/assets/tag/css/tag_default.css">

<!-- navbar_핵심 -->
<link rel="stylesheet"   href="./resources/assets/basic/css/navbar/color_click.css">
<link rel="stylesheet"   href="./resources/assets/basic/css/navbar/spirits_icon.css">
<link rel="stylesheet"   href="./resources/assets/basic/css/navbar/check_list.css">
<link rel="stylesheet"   href="./resources/assets/basic/css/navbar/userRecommend_Tag.css">
<!-- navbar_핵심, 지우지마세여-->
<!-- 로딩 -->
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);
h2 {
   font-family: fantasy;
}
h4 {
   font-family: fantasy;
}
.card {
   flex-direction: inherit;
   border: none;
}
.card-body {
   text-align: center;
}
.img {
   width: 98px;
}
/*위치에 있던 .tile .flip css -> tag_default.css로 옮김 */
.mCSB_scrollTools {
  margin: 1px -3px 1px 0;
  opacity: 0;
}
.mCSB_inside > .mCSB_container {
  margin-right: 0px;
  padding: 0 10px;
}
.mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar {
  background-color: rgba(0, 0, 0, 0.5)!important;
}
.p_cocktailCard {
    font-family: 'Nanum Pen Script', cursive;
    text-shadow: -2px 1px #000000;
}
#div_ajax_load_image{
   position:absolute;
   z-index: 9999;
   
}
#div_ajax_load_image > img{
    width: -webkit-fill-available;
    height: -webkit-fill-available;
    position: fixed;
}
.picbig{
	font-size : xx-large;
	text-align: center;
}
</style>

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
   $(document).ready(function() {
      $('#content').load('/cocktail/main_p');      
      $('#cock_gallery').on('click', function() {
         $('#content').load('/cocktail/cocktailphoto');
      });
      $('#self_making').on('click', function() {
         $('#content').load('/cocktail/selfMaking');
      });
      $('.navbar-avatar').on('click', function() {
         $('#content').load('/cocktail/eachoneProfile?userEmail=${sessionScope.useremail}');
      });      
      /* 네모 친 id를 가진 i 태그 클릭시 body부분을 로드해서 띄워줍니다.*/
   });
</script>
</head>
<body>   
<!--  아작스 추가  -->
<div id="loading"></div>
<!--  아작스 추가  -->
   <div class="navbar is-top-fixed">
      <div class="container-fluid">
         <div class="container">
            <div class="navbar-home">
               <a href="/cocktail/"> 
                  <img src='./resources/assets/basic/img/navbar_home2.png' class='img' style="" />
               </a>
            </div>
            <!-- navbar-home_end -->
            <div class="navbar-left" style="width: 390px;">
               <a class="navbar-toggle" data-toggle="dropdown"
                  aria-expanded="false" href="#"> <span></span> <span></span> <span></span>
                  <div id="recommend" class="dropdown-menu" style="margin-left: 150px; margin-right: 150px; right: 0px;">      
               
                     <div class="row_drop_userRecommend">
                        <div class="col-md-12">
                           <div class="card-group">
                              <div class="card">
                                 <div class="card-body"
                                    style="border-right: 1px solid #e8dfdf6e;">
                                    <p class="card-text">
                                       <img src='${path }${user.savedFilename }'
                                          class='img' />
                                    </p>
                                    <label>
                                       <h2>${user.userNickname }</h2>
                                    </label>
                                    <p>
                                       <label>추천칵테일</label>
                                 </div>
                              </div>
                              <!-- user picture here -->
							  <c:forEach var="worldBests" items="${worldBestList }">
							  <div class="card">
                                 <div class="card-body">
                                    <h4 class="card-title">${worldBests[0].cocktailName }</h4>
                                    <p class="card-text">
                                       <img src="${worldBests[0].imageRink }" onclick="worldClick(${worldBests[0].cocktailSeq})" class='img world-img'>
                                    </p>

                                    <p>
                                       <label class="tag">#${worldBests[0].ingredient}</label> <label class="tag">#${worldBests[1].ingredient}</label>
                                       <label class="tag">#${worldBests[2].ingredient}</label>
                                    </p>

                                 </div>
                              </div>
							  </c:forEach>
                              
                           </div>
                           <!-- card_groupEnd -->
                        </div>
                        <!-- col-md-12_end -->
                     </div>
                     <!-- row_drop_userRecommendEnd -->
                  </div> <!-- dropdax_menu -->
               </a>
            </div>
            <!-- navbar_leftEnd -->

            <!-- navbar-center-->
            <div class="navbar-center">
               <i id='cock_gallery' class="fas fa-glass-martini icon"   style="margin-right: 20px;"></i> 
               <i id='self_making' class="fas fa-user-alt"   style="margin-left: 20px; margin-right: 30px;"></i>
            </div>

            <!-- navbar-right -->
            <div class="navbar-right">
               <a class="navbar-item" data-toggle="dropdown" aria-expanded="false">
                  <i class="fas fa-search"></i>
               </a>

               <div id="search" class="dropdown-menu" style="margin-left: 150px; margin-right: 150px; margin-top: 0px;">
				  <div class="row_drop_search">
                     <div class="col-md-12" id="bs-megadropdown-tabs">
                        <div class="row">
                           <div class="card-group">
                              <div class="card col-md-3">
                                 <div class="card-body" id="filter1">
                                    <!-- style="border-right: 1px solid #e8dfdf6e;" -->
                                    <h4 class="card-title">BASE SPIRITS</h4>
                                    <div style="float: left;">
                                       <input class="spirit_check" ingre-num="A" type='radio' name='spirit'
                                          value='valuable' id="all" /> <label for="all"> <img
                                          class="spirits_img"
                                          src="./resources/assets/basic/img/spirit_icon/icon_all.png" />
                                       </label> <input class="spirit_check" ingre-num="AB" type='radio' name='spirit'
                                          value='valuable' id="brandy" /> <label for="brandy">
                                          <img class="spirits_img"
                                          src="./resources/assets/basic/img/spirit_icon/icon_brandy.png" />
                                       </label> <input class="spirit_check" ingre-num="AW"  type='radio' name='spirit'
                                          value='valuable' id="whisky" /> <label for="whisky">
                                          <img class="spirits_img"
                                          src="./resources/assets/basic/img/spirit_icon/icon_whisky.png" />
                                       </label> <input class="spirit_check" ingre-num="AV"  type='radio' name='spirit'
                                          value='valuable' id="vodka" /> <label for="vodka">
                                          <img class="spirits_img"
                                          src="./resources/assets/basic/img/spirit_icon/icon_vodka.png" />
                                       </label> <input class="spirit_check" ingre-num="AR"  type='radio' name='spirit'
                                          value='valuable' id="rum" /> <label for="rum"> <img
                                          class="spirits_img"
                                          src="./resources/assets/basic/img/spirit_icon/icon_rum.png" />
                                       </label> <input class="spirit_check" ingre-num="AJ" type='radio' name='spirit'
                                          value='valuable' id="jin" /> <label for="jin"> <img
                                          class="spirits_img"
                                          src="./resources/assets/basic/img/spirit_icon/icon_jin.png" />
                                       </label> <input class="spirit_check" ingre-num="AT"  type='radio' name='spirit'
                                          value='valuable' id="tequila" /> <label for="tequila">
                                          <img class="spirits_img"
                                          src="./resources/assets/basic/img/spirit_icon/icon_tequila.png" />
                                       </label> <input class="spirit_check" ingre-num="AT" type='radio' name='spirit'
                                          value='valuable' id="ETC" /> <label for="ETC"> <img
                                          class="spirits_img"
                                          src="./resources/assets/basic/img/spirit_icon/icon_etc.png" />
                                       </label>
                                    </div>                                    
                                 </div>
                              </div>
                              <!-- BASE SPIRITS -->
                              <div class="card col-md-3">
                                 <div class="card-body" id="filter4">
                                    <h4 class="card-title">Color</h4>

                                    <div class="recommandCocktail" style="float: left;">

                                       <label class="cream"> <input type="radio"
                                          name="color" value="cream">
                                          <div class="color_layer"></div>
                                          <div class="color_button">
                                             <span class='picbig'></span>
                                          </div>
                                       </label> <label class="yellow"> <input type="radio"
                                          name="color" value="yellow">
                                          <div class="color_layer"></div>
                                          <div class="color_button">
                                             <span class='picbig'></span>
                                          </div>
                                       </label> <label class="orange"> <input type="radio"
                                          name="color" value="orange">
                                          <div class="layer"></div>
                                          <div class="color_button">
                                             <span class='picbig'></span>
                                          </div>
                                       </label> <label class="red"> <input type="radio"
                                          name="color" value="red">
                                          <div class="layer"></div>
                                          <div class="color_button">
                                             <span class='picbig'></span>
                                          </div>
                                       </label> <label class="brown"> <input type="radio"
                                          name="color" value="brown">
                                          <div class="layer"></div>
                                          <div class="color_button">
                                             <span class='picbig'></span>
                                          </div>
                                       </label> <label class="green"> <input type="radio"
                                          name="color" value="green">
                                          <div class="layer"></div>
                                          <div class="color_button">
                                             <span class='picbig'></span>
                                          </div>
                                       </label> <label class="blue"> <input type="radio"
                                          name="color" value="blue">
                                          <div class="color_layer"></div>
                                          <div class="color_button">
                                             <span class='picbig'></span>
                                          </div>
                                       </label> <label class="pink"> <input type="radio"
                                          name="color" value="pink">
                                          <div class="color_layer"></div>
                                          <div class="color_button">
                                             <span class='picbig'></span>
                                          </div>
                                       </label> <label class="peach"> <input type="radio"
                                          name="color" value="peach">
                                          <div class="color_layer"></div>
                                          <div class="color_button">
                                             <span class='picbig'></span>
                                          </div>
                                       </label>
                                    </div>
                                 </div>
                                 <!-- Color -->
                              </div>

                              <div class="card col-md-3">
                                 <div class="card-body" id="filter2">
                                    <h4 class="card-title">liqueur</h4>
                                    <div class="row_checkBox">
                                       <div class="CheckBox_wrapper_liqueur"
                                          style="margin-left: 25px; margin-top: 10px;">
                                          <div>
                                             <input name = "liqueur" type="radio" id="check_liqueur_all" /> <label
                                                class="label_liqueur" ingre-num="L" for="check_liqueur_all">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>All
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "liqueur" type="radio" id="check_liqueur_wine" /> <label
                                                class="label_liqueur" ingre-num="LW" for="check_liqueur_wine">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Wine
                                             </label>
                                          </div>
                                          <div>
                                             <input name = "liqueur" type="radio" id="check_liqueur_bitters" /> <label
                                                class="label_liqueur" ingre-num="LB" for="check_liqueur_bitters">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Bitters
                                             </label>
                                          </div>
                                          <div>
                                             <input name = "liqueur" type="radio" id="check_liqueur_beer" /> <label
                                                class="label_liqueur" ingre-num="LM" for="check_liqueur_beer">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Beer
                                             </label>
                                          </div>
                                          <div>
                                             <input name = "liqueur" type="radio" id="check_liqueur_liqueur" /> <label
                                                class="label_liqueur" ingre-num="LL" for="check_liqueur_liqueur">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Liqueur
                                             </label>
                                          </div>
                                       </div>
                                       <!-- CheckBox_wrapper_end -->
                                       <div class="CheckBox_wrapper_liqueur2"
                                          style="margin-right: 15px; margin-top: 10px;">

                                          <div>
                                             <input name = "liqueur" type="radio" id="check_liqueur_cremeliqueur" />
                                             <label class="label_liqueur" ingre-num="LC"
                                                for="check_liqueur_cremeliqueur">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Creme liqueur
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "liqueur" type="radio" id="check_liqueur_sherry" /> <label
                                                class="label_liqueur" ingre-num="LS" for="check_liqueur_sherry">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Sherry
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "liqueur" type="radio" id="check_liqueur_vermouth" /> <label
                                                class="label_liqueur" ingre-num="LV" for="check_liqueur_vermouth">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Vermouth
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "liqueur" type="radio" id="check_liqueur_amaretto" /> <label
                                                class="label_liqueur" ingre-num="LA" for="check_liqueur_amaretto">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Amaretto
                                             </label>
                                          </div>
                                       </div>
                                       <!-- CheckBox_wrapper2_end -->
                                    </div>
                                 </div>
                                 <!-- liqueur -->
                              </div>
                              <div class="card col-md-3">
                                 <div class="card-body" id="filter3">
                                    <h4 class="card-title">material</h4>
                                    <div class="row_checkBox">
                                       <div class="CheckBox_wrapper_material" style="margin-top: 10px; margin-right: 27px;">
                                          <div>
                                             <input name = "material" type="radio" id="check_material_all" /> <label
                                                class="label_material" ingre-num="M" for="check_material_all">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>All
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material_apple" /> <label
                                                class="label_material" ingre-num="FA" for="check_material_apple">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Apple
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material_cherry" /> <label
                                                class="label_material" ingre-num="FC" for="check_material_cherry">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Cherry
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material_coconut" /> <label
                                                class="label_material" ingre-num="FK" for="check_material_coconut">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Coconut
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material_grapefruit" />
                                             <label class="label_material" ingre-num="FG"
                                                for="check_material_grapefruit">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Grape Fruit
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material_lemon" /> <label
                                                class="label_material" ingre-num="FL" for="check_material_lemon">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Lemon
                                             </label>
                                          </div>
                                          <!-- CheckBox_wrapper1_end -->
                                       </div>

                                       <div class="CheckBox_wrapper_material2"
                                          style="margin-top: 10px;">
                                          <div>
                                             <input  name = "material" type="radio" id="check_material_lime" /> <label
                                                class="label_material" ingre-num="FI" for="check_material_lime">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Lime
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material_raspberry" />
                                             <label class="label_material" ingre-num="FR"
                                                for="check_material_raspberry">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Raspberry
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material_orange" /> <label
                                                class="label_material" ingre-num="FO" for="check_material_orange">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Orange
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material_peach" /> <label
                                                class="label_material" ingre-num="FP" for="check_material_peach">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Peach
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material_pineapple" />
                                             <label class="label_material" ingre-num="FF"
                                                for="check_material_pineapple">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Pineapple
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material_tomato" /> <label
                                                class="label_material" ingre-num="FT" for="check_material_tomato">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Tomato
                                             </label>
                                          </div>

                                       </div>
                                       <!-- CheckBox_wrapper2_end -->


                                       <div class="CheckBox_wrapper_material3"
                                          style="margin-top: 10px;">

                                          <div>
                                             <input name = "material" type="radio" id="check_material" /> <label
                                                class="label_material" ingre-num="ME" for="check_material_egg">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Egg
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material" />
                                             <label class="label_material" ingre-num="MT"
                                                for="check_material_gingerale">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Gingerale
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material" /> <label
                                                class="label_material" ingre-num="MM" for="check_material_milk">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Milk
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material" /> <label
                                                class="label_material" ingre-num="MC" for="check_material_sugar">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Sugar
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material" /> <label
                                                class="label_material" ingre-num="MS" for="check_material_spicy">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Spicy
                                             </label>
                                          </div>

                                          <div>
                                             <input name = "material" type="radio" id="check_material" /> <label
                                                class="label_material" ingre-num="MC" for="check_material_syrup">
                                                <div>
                                                   <i class="fa fa-check"></i>
                                                </div>Syrup
                                             </label>
                                          </div>

                                       </div>
                                       <!-- CheckBox_wrapper3_end -->
                                    </div>
                                    <!-- checkbox_end -->
                                 </div>
                              </div>
                              <!--material-->
                           </div>
                        </div>
                     </div>

                     <div class="row_cocktail_fliter">
					     <div class="grid">   
					         <div class="wrapper_cocktailCard">
					             <div class="cols_cocktailCard" style="max-height:400px; overflow:auto;"></div>
					        </div>
					    </div>
					</div>
                     <!-- cocktail_Fliter -->
                  </div>
                  <!-- dropdax_menu -->
               </div>
            </div>
            <div class="navbar-avatar" style="margin-left: 19px;">
               <a href="" onclick="return false;" class="navbar-item is-avatar" @click.prevent="showProfilePanel"> 
                  <img class="pro-img-link" src="${path }${user.savedFilename }" alt="Avatar" />
               </a>
            </div>

         </div>
      </div>
      <!-- container -->
   </div>
   <div id="content"></div>   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
   <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
   <script src="./resources/assets/tag/js/search_tag.js"></script>
   <script src="./resources/assets/basic/js/photo_profile.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
   <script>
		 var sock = new SockJS('http://10.10.8.165:8888/cocktail/myHandler');
		  sock.onopen = function() {
		     console.log('open');
		 };
		 sock.onmessage = function(e) {
		    	var currentTime = Date.now()
		    	var GMT = -(new Date()).getTimezoneOffset()/60;
		    	var totalSeconds = Math.floor(currentTime/1000);
		    	seconds = ('0' + totalSeconds % 60).slice(-2);
		    	var totalMinutes = Math.floor(totalSeconds/60);
		    	minutes = ('0' + totalMinutes % 60).slice(-2);
		    	var totalHours = Math.floor(totalMinutes/60);
		    	hours = ('0' + (totalHours+GMT) % 24).slice(-2);
		    	var timeDisplay = hours + ":" + minutes + ":" + seconds;
		     console.log('message', e.data);
		     var resp = e.data.split(" : ");
		     var getData = resp[2];
		     var getEmail = resp[0];
		     console.log(resp);
		     var userId = document.getElementById('userEmail').value;
		     	if(userId == getEmail){
		     		// 본인이 쓴 글
		     		 var usrPicture = document.getElementById('path').value+resp[1];
					 var message = "";
					 message +='<div class="container_chat">';
					/*  message +='<img src="'+ usrPicture+'" alt="Avatar" style="width: 100%;">'; */
					 message +='<p>'+getData+'</p>';
					 message +='<span class="time-left">'+timeDisplay+'</span>';
					 message +='</div>'
				     $('.chat_chat').append(message);
					 $('#msg').val('');
					 //sock.close();
		     	}else{
		     		//다른 사람
		     		 var usrPicture = document.getElementById('path').value+resp[1];
					 var message = "";
					 message +='<div class="darker">';
					/*  message +='<img src="'+ usrPicture+'" alt="Avatar" style="width: 100%;">'; */
					 message +='<p>'+getData+'</p>';
					 message +='<span class="time-left">'+timeDisplay+'</span>';
					 message +='</div>'
				     $('.chat_chat').append(message);
					 $('#msg').val('');
					 //sock.close();
		     	}
	
		 };

		 sock.onclose = function() {
		     console.log('close');
		 }; 
		
		</script>
   <script>
      $('.dropdown-menu').children('.row_drop_search').children('.col-md-12').on("click.bs.dropdown", function(e) {
         /* console.log(this); */
         e.stopPropagation();
         /* e.preventDefault(); */
      });
   </script>
   <script type="text/javascript">
   function searchCocktail(resp){
      var inner = "";
      resp.forEach(function(value, index, resp) {                                          
         inner += '<div class="col_cocktailCard" ontouchstart="this.classList.toggle(\'hover\');" onclick="myF('+resp[index].cocktailSeq+')">';
         inner += '<div class="container_cocktailCard">';
         inner += '<div class="front_cocktailCard" style="background-image: url('+resp[index].imageRink+')">';
         inner += '<div class="inner_cocktailCard">';
         inner += '<p class="p_cocktailCard">'+resp[index].cocktailName+'</p>';
         inner += '</div>';
         inner += '</div>';
         inner += '<div class="back_cocktailCard" style="background-image: url('+resp[index].imageRink+')" size: contain;>';
         inner += '<div class="inner_cocktailCard">';
         inner += '<p></p>';
         inner += '</div>';
         inner += '</div>';
         inner += '</div>';
         inner += '</div>';

      });
      console.log(resp);
      $('.cols_cocktailCard').html(inner); 
   }   
       $.ajax({
         method : "post",
         url : "getCocktail",
         success : searchCocktail,
         
         error : function(){
            alert('error');
         }
      }); 
       function myF(num){
         $("#content").load("/cocktail/cocktailDetail?cocktailSeq="+num);   
      }
   </script>
   <script type="text/javascript">   
   var num;
   var spilits =[];
   var liqueur =[];
   var material =[];
   var color;
   $('.recommandCocktail').children('label').on('click', function() {
      color = $(this).attr('class')+"Color";
      console.log(spilits);
      console.log(JSON.stringify(spilits));
      
      var txt = '<i class="fa fa-check"></i>';
	  $(this).children().children('.picbig').html(txt);

      num = 0;
      $.ajax({
         method : "post",
         url : "cocktailTagSearch",
         traditional : true,
         data : {
            "num" : num,
            "color" : color,
            "spilits" : spilits,
            "liqueur" : liqueur,
            "material" : material
         },
         success : searchCocktail
         /* 아작스 추가 */
         ,beforeSend: function () {
                 if($("#div_ajax_load_image").length != 0) {
                        $("#div_ajax_load_image").show();
                 } else {
                        $('#loading').append('<div id="div_ajax_load_image">'
                              +'<img class = "loadingPage" src="https://cdn-images-1.medium.com/max/1600/0*bFV-rtVLhuCf9Ijl.gif"></div>');
                 }         
             }, complete: function () {
               $("#div_ajax_load_image").hide();
             }/* 아작스 추가 */
         ,error : function(){
            alert('error');
         }   
      })
   });
   
   $('.spirit_check').on('click', function(){
      console.log($(this).attr('ingre-num'));
      console.log(spilits);
      console.log(JSON.stringify(spilits));
      spilits = [$(this).attr('ingre-num')];
      num = 0;
      $.ajax({
         method : "post",
         url : "cocktailTagSearch",
         traditional : true,
         data : {
            "num" : num,
            "color" : color,
            "spilits" : spilits,
            "liqueur" : liqueur,
            "material" : material
         },
         success : searchCocktail
         /* 아작스 추가 */
         ,beforeSend: function () {
                 if($("#div_ajax_load_image").length != 0) {
                        $("#div_ajax_load_image").show();
                 } else {
                        $('#loading').append('<div id="div_ajax_load_image">'
                              +'<img src="https://cdn-images-1.medium.com/max/1600/0*bFV-rtVLhuCf9Ijl.gif"></div>');
                 }         
             }, complete: function () {
               $("#div_ajax_load_image").hide();
             }/* 아작스 추가 */
         ,error : function(){
            alert('error');
         }   
         
      })
   });   
   
   $('.label_liqueur').on('click', function(){
	      console.log($(this).attr('ingre-num'));
	      console.log(liqueur);
	      console.log(JSON.stringify(liqueur));
	      liqueur = [$(this).attr('ingre-num')];
	      num = 0;
	      $.ajax({
	         method : "post",
	         url : "cocktailTagSearch",
	         traditional : true,
	         data : {
	            "num" : num,
	            "color" : color,
	            "spilits" : spilits,
	            "liqueur" : liqueur,
	            "material" : material
	         },
	         success : searchCocktail
	         /* 아작스 추가 */
	         ,beforeSend: function () {
	                 if($("#div_ajax_load_image").length != 0) {
	                        $("#div_ajax_load_image").show();
	                 } else {
	                        $('#loading').append('<div id="div_ajax_load_image">'
	                              +'<img src="https://cdn-images-1.medium.com/max/1600/0*bFV-rtVLhuCf9Ijl.gif"></div>');
	                 }         
	             }, complete: function () {
	               $("#div_ajax_load_image").hide();
	             }/* 아작스 추가 */
	         ,error : function(){
	            alert('error');
	         }   
	         
	      })
	   });   
   
   $('.label_material').on('click', function(){
	      console.log($(this).attr('ingre-num'));
	      console.log(material);
	      console.log(JSON.stringify(material));
	      material = [$(this).attr('ingre-num')];
	      num = 0;
	      $.ajax({
	         method : "post",
	         url : "cocktailTagSearch",
	         traditional : true,
	         data : {
	            "num" : num,
	            "color" : color,
	            "spilits" : spilits,
	            "liqueur" : liqueur,
	            "material" : material
	         },
	         success : searchCocktail
	         /* 아작스 추가 */
	         ,beforeSend: function () {
	                 if($("#div_ajax_load_image").length != 0) {
	                        $("#div_ajax_load_image").show();
	                 } else {
	                        $('#loading').append('<div id="div_ajax_load_image">'
	                              +'<img src="https://cdn-images-1.medium.com/max/1600/0*bFV-rtVLhuCf9Ijl.gif"></div>');
	                 }         
	             }, complete: function () {
	               $("#div_ajax_load_image").hide();
	             }/* 아작스 추가 */
	         ,error : function(){
	            alert('error');
	         }   
	         
	      })
	   });   
   		function worldClick(num){
   			$("#content").load("/cocktail/cocktailDetail?cocktailSeq="+num); 
   		}
   </script>   
</body>
</html>