 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Blueprint: Google Grid Gallery</title>
		<meta name="description" content="Blueprint: Blueprint: Google Grid Gallery" />
		<meta name="keywords" content="google getting started gallery, image gallery, image grid, template, masonry" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="./resources/assets/grid/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="./resources/assets/grid/css/component.css" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <link rel="stylesheet" href="./resources/assets/main/css/styles.min.css">
		<script src="./resources/assets/grid/js/modernizr.custom.js"></script>
	</head>
	<body>
	<div class="navbar is-top-fixed">
  <div class="container-fluid">
    <div class="container">

      <div class="navbar-left">
        <a href="#" class="navbar-toggle">
           <span></span>
           <span></span>
           <span></span>
        </a>
      </div>
      <!-- navbar-left -->

      <div class="navbar-center">
        <a href="" class="navbar-item navbar-logo">
          <i class="fas fa-glass-martini icon"></i>
        </a>
        <a href="" class="navbar-item navbar-logo">
          <i class="fab fa-microsoft icon"></i>
        </a>
      </div>
      <!-- navbar-center -->

      <div class="navbar-right">
        <a href="#" class="navbar-item">
          <i class="fas fa-search"></i>
        </a>

        <a href="#" class="navbar-item is-avatar" @click.prevent="showProfilePanel">
          <img src="https://unsplash.it/200/200?image=1005" alt="Avatar"/>
        </a>
      </div>
      <!-- navbar-center -->
    </div>
    <!-- container -->
  </div>
</div>
		<div class="container">
			<header class="clearfix">
				<span>Blueprint <span class="bp-icon bp-icon-about" data-content="The Blueprints are a collection of basic and minimal website concepts, components, plugins and layouts with minimal style for easy adaption and usage, or simply for inspiration."></span></span>
				<h1>Google Grid Gallery</h1>
				<nav>
					<a href="http://tympanus.net/Blueprints/FullWidthTabs/" class="bp-icon bp-icon-prev" data-info="previous Blueprint"><span>Previous Blueprint</span></a>
					<!--a href="" class="bp-icon bp-icon-next" data-info="next Blueprint"><span>Next Blueprint</span></a-->
					<a href="http://tympanus.net/codrops/?p=18699" class="bp-icon bp-icon-drop" data-info="back to the Codrops article"><span>back to the Codrops article</span></a>
					<a href="http://tympanus.net/codrops/category/blueprints/" class="bp-icon bp-icon-archive" data-info="Blueprints archive"><span>Go to the archive</span></a>
				</nav>
			</header>
			<div id="grid-gallery" class="grid-gallery">
				<section class="grid-wrap">
					<ul class="grid">
						<li class="grid-sizer"></li><!-- for Masonry column width -->
						<c:forEach var="userPhoto" items="${userPhotos}">
							<li>
								<figure>
									<img src="${path }${userPhoto.saveFileName}" alt="img01"/>
									<figcaption><h3>${userPhoto.title}</h3><p>${userPhoto.contents}</p></figcaption>
								</figure>
							</li>
						</c:forEach>
					</ul>
				</section><!-- // grid-wrap -->
				<section class="slideshow">
					<ul>
						<c:forEach var="userPhoto" items="${userPhotos}">
							<li>
								<figure>
									<figcaption>
										<h3>${userPhoto.title}</h3>
										<p>${userPhoto.contents}</p>
									</figcaption>
									<img src="${path }${userPhoto.saveFileName}" alt="img01"/>
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
				</section><!-- // slideshow -->
			</div><!-- // grid-gallery -->
		</div>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
		<script src="./resources/assets/grid/js/imagesloaded.pkgd.min.js"></script>
		<script src="./resources/assets/grid/js/masonry.pkgd.min.js"></script>
		<script src="./resources/assets/grid/js/classie.js"></script>
		<script src="./resources/assets/grid/js/cbpGridGallery.js"></script>
		<script>
			new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
		</script>
	</body>
</html>
