<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="background-color:#ffffff;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neat — Free Website Template, Free HTML5 Template by freehtml5.co</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
    <link rel="stylesheet" href="./resources/assets/css/middle_tab.css?h=23b7421a8883f59f52e2a19437b15b9f">
    <link rel="stylesheet" href="./resources/assets/css/page_default/animate.css?h=abb70068f2bbb9350cd70184af8c04b9">
    <link rel="stylesheet" href="./resources/assets/css/page_default/bootstrap.css?h=1a48b0887f2320c6122d56946cbdc556">
    <link rel="stylesheet" href="./resources/assets/css/page_default/flexslider.css?h=367e487d1bdd1899e6f2141318162cb0">
    <link rel="stylesheet" href="./resources/assets/css/page_default/icomoon.css?h=c8b93ce725d7c590cad3260293efd8ba">
    <link rel="stylesheet" href="./resources/assets/css/page_default/magnific-popup.css?h=a2c43e6d963a37b0c6f84159a08d2e4c">
    <link rel="stylesheet" href="./resources/assets/css/page_default/style.css?h=d1181d8a3989052d2280ca3123bce49b">
    <link rel="stylesheet" href="./resources/assets/css/photo_layout.css?h=20aefad183f30e2a849586a7bae88962">
</head>

<body style="background-color:#ffffff;"><div class="fh5co-loader"></div>

<div id="page">
  <nav class="fh5co-nav" role="navigation">
    <div class="container-wrap">
      <div class="top-menu">
        <div class="row">
          <div class="col-xs-2">
            <div id="fh5co-logo"><a href="/cocktail/">Neat</a></div>
          </div>
          <div class="col-xs-10 text-right menu-1">
            <ul>
              <li><a href="/cocktail/">Home</a></li>
              <li class="active"><a href="photoLibrary">LIBRARY</a></li>
              <li class="has-dropdown">
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
          <li style="background-image: url(images/img_bg_3.jpg);">
            <div class="overlay-gradient"></div>
            <div class="row">
              <div class="col-md-6 col-md-offset-3 slider-text slider-text-bg">
                <div class="slider-text-inner text-center">
                  <h1>Work</h1>
                  <h2>Free html5 templates Made by </h2>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </aside>
    <!-- 탭 메뉴 들어갈 것 -->


    <!-- 중간 탭 -->
    <div class="tabs">
      <div class="tab-2">
        <label for="tab2-1" style="padding-left:200px; padding-right: 200px;">One</label>
        <input id="tab2-1" name="tabs-two" type="radio" checked="checked">
      </div>

      <div class="tab-2">
        <label for="tab2-2" style="padding-left:200px; padding-right: 200px;">Two</label>
        <input id="tab2-2" name="tabs-two" type="radio">
      </div>
    </div>


    <div class="container" style="margin : 0 auto;">
      <article class="post">
        <div id="fh5co-work">
          <div class="row">
            <div id="columns">


              <c:forEach items="${userPhotos}" var="userPhoto">
							<a href="photoLibrary?userPhotoSeq=${userPhoto.userPhotoSeq}">
								<figure>
									<img src="${path}${userPhoto.saveFileName}">
									<figcaption>${userPhoto.title }</figcaption>
								</figure>
							</a>
				</c:forEach>

            </div>
            <!-- id:columns -->
          </div>
          <!-- class low -->
        </div>
        <!-- id:"fh5co-work" -->
      </article>
    </div>
    <!-- id:"container" -->
  </div>
  <!-- END container-wrap -->


  <div class="container-wrap">
    <footer id="fh5co-footer" role="contentinfo">
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
    </footer>
  </div>
  <!-- END container-wrap -->
</div>
<!-- id:page -->

<div class="gototop js-top">
  <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
</div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/assets/js/autoScroll/autoscroll.js?h=62a20a707fccb2be74259692def35eb2"></script>
    <script src="./resources/assets/js/autoScroll/imageloaded.js?h=d2114bdc8b5eaed0f50adb472b263838"></script>
    <script src="./resources/assets/js/autoScroll/isotope.js?h=b40e0073ab486a12e4d94601d7a48011"></script>
    <script src="./resources/assets/js/autoScroll/masonry.js?h=b79316f12f9da1a20cc4d65099abf032"></script>
    <script src="./resources/assets/js/autoScroll/packery.js?h=2beb417f32188132c7587dca2d61938c"></script>
    <script src="./resources/assets/js/jquery.esn.autobrowse.js?h=227bfbba7e4b437df697c7ac35cd6104"></script>
    <script src="./resources/assets/js/jstorage.js?h=8d4d6d8975b0a51800c007f216d4d949"></script>
    <script src="./resources/assets/js/page_default/jquery.countTo.js?h=0f48c1b00e0bc4c33ed8aacfba285409"></script>
    <script src="./resources/assets/js/page_default/jquery.easing.1.3.js?h=2cb90c06cfc2084e0e11ca2b8a10f6c9"></script>
    <script src="./resources/assets/js/page_default/jquery.flexslider-min.js?h=d22c7a166ed20731c48d2f36ff1334ad"></script>
    <script src="./resources/assets/js/page_default/jquery.magnific-popup.min.js?h=d9267d6dda814fd767e1df7bfbe7eb57"></script>
    <script src="./resources/assets/js/page_default/jquery.waypoints.min.js?h=28ef3dc306be44a30ec0d0ffe2bee109"></script>
    <script src="./resources/assets/js/page_default/magnific-popup-options.js?h=dff6a284a8ab2e228307c7b5f6d443dd"></script>
    <script src="./resources/assets/js/page_default/main.js?h=956ce6896f30e1f1c0bb1e30f608fd45"></script>
    <script src="./resources/assets/js/page_default/modernizr-2.6.2.min.js?h=c3076c3133684f1acfb50014a2aa0876"></script>
    <script src="./resources/assets/js/page_default/respond.min.js?h=fda355038387a38685fb8213c2c2374b"></script>
</body>

</html>

