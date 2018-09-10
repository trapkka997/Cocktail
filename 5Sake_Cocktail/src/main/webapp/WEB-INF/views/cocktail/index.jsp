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
        .card {
          flex-direction: inherit;
        }

        .card-body {
          text-align: center;
        }

        .img {
          width: 200px;
          border: 20px solid black;
          border-radius: 50%
        }

        .tag {
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
        <a id="showRight" href="#" class="navbar-item is-avatar" @click.prevent="showProfilePanel">
            <img src="https://unsplash.it/200/200?image=1005" alt="Avatar"/>
          </a>
      </div>
      <!-- navbar-right -->

      <!-- start sideshow -->
            <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
              <div class="exid_button_container">
                <div class- "exid_button_row">
                  <div class="device">
                    <div id="exid_button">
                      <button type="button" class="close" aria-label="Close">
                                   <span aria-hidden="true">×</span>
                                </button>
                    </div>
                  </div>
                </div>
                <!-- exid_button_row -->
              </div>
              <!-- exid_button_container -->
              <div class="top">
                <div class="device-overlay">
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
              </div>
            </nav>

      <!-- end sideshow -->

    </div>
  </div>
  <!-- container -->

</div>



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


    </body>

    </html>
