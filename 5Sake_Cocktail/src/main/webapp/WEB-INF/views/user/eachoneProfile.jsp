<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NEWS FEED</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <link rel="stylesheet" href="./resources/assets/selfmaking/css/button/button.css?h=2c12abb053befac8c412e344657ea528">
    <link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css?h=b679bc097ab01ae7b3b09963f03f24d6">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="./resources/assets/basic/css/navbar/navbar.css?h=5e4f93ff911994d0acfb72a92c76eb04">
    <link rel="stylesheet" href="./resources/assets/eachoneProfile/css/profile_follow/profile_follow.css?h=65ebafe7a2118cb3ae1a7c9307acfb2b">
    <link rel="stylesheet" href="./resources/assets/basic/css/proflie_slide/slide_component.css">
</head>

<body>
<input type="hidden" id="userEmail" name="userEmail" value="${user.userEmail }">
<div class="navbar is-top-fixed">
  <div class="container-fluid">
    <div class="container">

      <div class="navbar-left">
        <a class="navbar-toggle" data-toggle="dropdown" aria-expanded="false" href="#">
           <span></span>
           <span></span>
           <span></span>
           <div id="recommend" class="dropdown-menu" style="margin-left: 150px;  margin-right: 150px;  margin-top: 0px;">
             <div>
               <div>
                 <button type="button" class="close" aria-label="Close">
                   <span aria-hidden="true">×</span>
                 </button>
               </div>
                       <div class="row_drop_userRecommend">
                           <div class="col-md-12">
                             <div class="card-group">
                                 <div class="card"><img class="card-img-top w-100 d-block" />
                                     <div class="card-body">
                                         <h4 class="card-title">Title</h4>
                                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                 </div>
                                 <!-- user picture here -->

                                 <div class="card"><img class="card-img-top w-100 d-block" />
                                     <div class="card-body">
                                         <h4 class="card-title">Title</h4>
                                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                 </div>
                                 <!-- randam cocktail -->

                                 <div class="card"><img class="card-img-top w-100 d-block" />
                                     <div class="card-body">
                                         <h4 class="card-title">Title</h4>
                                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                 </div>
                                 <!-- randam cocktail -->

                                 <div class="card"><img class="card-img-top w-100 d-block" />
                                     <div class="card-body">
                                         <h4 class="card-title">Title</h4>
                                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                 </div>
                                 <!-- randam cocktail -->
                             </div>
                           </div>
                       </div>
                       <!-- row_drop_userRecommend end -->

                       <div class="row_siterecommend">
                           <div class="col-md-12">
                               <div class="card-group">
                                   <div class="card"><img class="card-img-top w-100 d-block" />
                                       <div class="card-body">
                                           <h4 class="card-title">Title</h4>
                                           <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                   </div>
                                   <!-- randam cocktail -->
                                   <div class="card"><img class="card-img-top w-100 d-block" />
                                       <div class="card-body">
                                           <h4 class="card-title">Title</h4>
                                           <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                   </div>
                                   <!-- randam cocktail -->
                                   <div class="card"><img class="card-img-top w-100 d-block" />
                                       <div class="card-body">
                                           <h4 class="card-title">Title</h4>
                                           <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
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
        <a href="cocktailphoto" class="navbar-item navbar-logo">
          <i class="fas fa-glass-martini icon"></i>
        </a>
        <a href="userphoto" class="navbar-item navbar-logo">
          <i class="fab fa-microsoft icon"></i>
        </a>
        <a href="selfMaking" class="navbar-item navbar-logo">
          <i class="fas fa-user-alt"></i>
        </a>
      </div>
      <!-- navbar-center -->

      <div class="navbar-right">
        <a href="#" class="navbar-item" data-toggle="dropdown" aria-expanded="false" href="#">
              <i id = "showRightPush" class="fas fa-search"></i>

              <div id ="search" class="dropdown-menu" style="margin-left: 150px;  margin-right: 150px;  margin-top: 0px;">
                <div class="row_drop_search">
                  <div>
                    <button type="button" class="close" aria-label="Close">
                      <span aria-hidden="true">×</span>
                    </button>
                  </div>
                    <div class="col-md-12">
                      <div class="card-group">
                          <div class="card"><img class="card-img-top w-100 d-block" />
                              <div class="card-body">
                                  <h4 class="card-title">Title</h4>
                                  <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                          </div>
                          <!-- user picture here -->

                          <div class="card"><img class="card-img-top w-100 d-block" />
                              <div class="card-body">
                                  <h4 class="card-title">Title</h4>
                                  <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                          </div>
                          <!-- randam cocktail -->

                          <div class="card"><img class="card-img-top w-100 d-block" />
                              <div class="card-body">
                                  <h4 class="card-title">Title</h4>
                                  <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                          </div>
                          <!-- randam cocktail -->

                          <div class="card"><img class="card-img-top w-100 d-block" />
                              <div class="card-body">
                                  <h4 class="card-title">Title</h4>
                                  <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                          </div>
                          <!-- randam cocktail -->
                      </div>
                    </div>
                </div>
                <div class="row_cocktail_fliter">
                    <div class="col-md-12" style="background-image: url('http://2.bp.blogspot.com/-rBQgW0Kk8ms/UDAcq9wGmAI/AAAAAAAAQgo/KyZLoQR37OY/s1600/amile+face.jpg');height: 300px;"></div>
                </div>
                <!-- cocktail_Fliter -->
              </div>
              <!-- dropdax_menu -->


          </a>
      </div>


      <div class="navbar-avatar">
        <a id="showRight" href="eachoneProfile?userEmail=${sessionScope.useremail }" class="navbar-item is-avatar" @click.prevent="showProfilePanel">
            <img src="https://unsplash.it/200/200?image=1005" alt="Avatar"/>
          </a>
      </div>
      <!-- navbar-right -->

    </div>
  </div>
  <!-- container -->

</div>


<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
  <h3>Menu</h3>
  <a href="#">Celery seakale</a>
  <a href="#">Dulse daikon</a>
  <a href="#">Zucchini garlic</a>
  <a href="#">Catsear azuki bean</a>
  <a href="#">Dandelion bunya</a>
  <a href="#">Rutabaga</a>
</nav>

<script>
  var menuRight = document.getElementById('cbp-spmenu-s2'),
    showRight = document.getElementById('showRight'),
    body = document.body;

  showRight.onclick = function() {
    classie.toggle(this, 'active');
    classie.toggle(menuRight, 'cbp-spmenu-open');
    disableOther('showRight');
  };

  function disableOther(button) {
    if (button !== 'showRight') {
      classie.toggle(showRight, 'disabled');
    }
  }
</script>

    <div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="button_container">
                        <div class="outer">
                            <div class="inner"><div class="profile">

      <div class="profile-image">

        <img src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces" alt="">

      </div>

      <div class="profile-user-settings">

        <h1 class="profile-user-name">${user.userEmail }</h1>

        <button class="btn profile-edit-btn" onclick="followBtn()">Follow</button>

      </div>

      <div class="profile-stats">

        <ul>
          <li><span class="profile-stat-count">${postNum }</span> posts</li>
          <li><span class="profile-stat-count">${followerNum }</span> followers</li>
          <li><span class="profile-stat-count">${followNum }</span> following</li>
        </ul>

      </div>
    </div></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="grid-gallery" class="grid-gallery"><section class="grid-wrap">
  <ul class="grid">
    <li class="grid-sizer"></li>
    <!-- for Masonry column width -->
    <c:forEach var="photo" items="${photoList }">
     <li>
      <figure>
        <img src="${path }${photo.saveFileName}" alt="img01" />
        <figcaption>
          <h3>${photo.title }</h3>
          <p>${photo.writeDate }</p>
        </figcaption>
      </figure>
    </li>
    </c:forEach>
  
  </ul>
  <nav>
    <span class="icon nav-prev"></span>
    <span class="icon nav-next"></span>
    <span class="icon nav-close"></span>
  </nav>
  <div class="info-keys icon">Navigate with arrow keys</div>
</section></div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/assets/gallery/js/gallery/gallery_classie.js?h=a9df1cfb76ce492afd9d13f3320272fd"></script>
    <script src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js?h=e6c353b0df611eade595734940bd3fca"></script>
    <script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js?h=a63342ddc4c321bc1d293bce584313ba"></script>
    <script src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js?h=82bdcdaa438659d4cb966ab112b162f4"></script>
    <script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js?h=dc78f544798256037e9498d30b0652f9"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="./resources/assets/basic/js/proflie_slide/proflieSlide_modernizr.custom.js?h=97989a57a1e8fb69eff65e5a62de7dfb"></script>
    <script src="./resources/assets/basic/js/proflie_slide/proflieSlide_slideclassie.js?h=723c75fde6dc7bb3ef0f7f12584655a0"></script>
    <script type="text/javascript">
    function followBtn() {
		alert('follow btn click');
		$.ajax({
			method : "get",
			url : "userFollow",
			data : {
				followUser : document.getElementById('userEmail').value
			},
			success : function(resp) {
				if(resp === '1'){
					alert('팔로우 완료');
				}else if(resp === '2'){
					alert('이미 팔로우 한 사람입니다.');
				}else if(resp === '3'){
					alert('본인은 팔로우 할 수 없습니다.');
				}
			},
			error : function() {
				alert('에러');
			}
		});
	}
    </script>
    
</body>

</html>