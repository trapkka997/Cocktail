<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>back video</title>
    <link rel="stylesheet" href="./resources/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic">
    <link rel="stylesheet" href="./resources/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="./resources/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Andada">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css">
    <link rel="stylesheet" href="./resources/assets/css/Basic-fancyBox-Gallery.css">
    <link rel="stylesheet" href="./resources/assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
    <link rel="stylesheet" href="./resources/assets/css/modal/modal.css">
    <link rel="stylesheet" href="./resources/assets/css/modaltest.css">
    <link rel="stylesheet" href="./resources/assets/css/Navbar-Fixed-Side.css">
    <link rel="stylesheet" href="./resources/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="./resources/assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="./resources/assets/css/sidebar/custom.css">
    <link rel="stylesheet" href="./resources/assets/css/sidebar/sidebar.css">
    <link rel="stylesheet" href="./resources/assets/css/style3.css">
    <link rel="stylesheet" href="./resources/assets/css/Video-Parallax-Background-v2.css">
    <link rel="stylesheet" href="./resources/assets/css/Video-Parallax-Background.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container-fluid d-flex justify-content-center align-items-center align-content-center video-parallax-container">

	  <div class="col-6">
	    <div class="register-photo" style="margin:-100px;">
	      <div class="form-container">
	        <div class="image-holder" style="background-image:url('./resources/assets/img/img123.png');background-size:cover;background-repeat:no-repeat;background-position:center;">
	        </div>	         
	          
			  <form method="post" action="register" onsubmit="return signup()">  			  
			  <ul class="nav nav-tabs">
	            <li class="active"><a data-toggle="tab" href="#signUp" class="active show">Sign Up</a></li>
	            <li><a data-toggle="tab" href="#loginform">Login</a></li>
	          </ul>	          
	          <div class="tab-content">       	          
	            <div id="signUp" class="tab-pane fade in active">
	                <h2 class="text-center"><strong>Create</strong> account.</h2>
	                <div class="form-group"><input type="email" id="userEmail" name="userEmail" placeholder="Email" class="form-control">
	                </div>
	                <div class="form-group"><input type="password" id="userPassword" name="userPassword" placeholder="Password" class="form-control">
	                </div>
	                <div class="form-group"><input type="password" id="password-repeat" name="password-repeat" placeholder="Password (repeat)" class="form-control"></div>
	
	                <div class="form-group">
	                  <div class="form-check"><label class="form-check-label"><input type="checkbox" class="form-check-input">I agree to the license terms.</label>
	                  </div>
	                </div>
	
	                <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="background-color:rgb(118,219,241);">Sign Up</button>
	                </div>
	                <a href="#loginform" class="already">You already have an account? Login here.</a>
	                </form>
	            </div>
	            <div id="loginform" class="tab-pane fade">
	            <form action="login" onsubmit="return loginBtn()"method="post" class="formClass" style="padding: 0px">
	                <h2 class="text-center"><strong>Login</strong> here</h2>
	                <div class="form-group"><input type="email" id="loginEmail" name="userEmail" placeholder="Email" class="form-control">
	                </div>
	                <div class="form-group"><input type="password" id="loginPassword" name="userPassword" placeholder="Password" class="form-control">
	                </div>
	
	                <div class="form-group">
	                  <div class="form-check"><label class="form-check-label"><input type="checkbox" class="form-check-input">아이디를 기억하시겠습니까?</label>
	                  </div>
	                </div>
	                <div class="form-group"><input class="btn btn-primary btn-block" type="submit" style="background-color:rgb(118,219,241);" value="Login">
	                </div>
	                </form>
	            </div>
	        </div>
	      </div>
	    </div>
	  </div>
		    <video muted loop controls autoplay = "media">
			    <source src="./resources/bar3.mp4" type="video/mp4" 
			    wp-acf="[{&#39;type&#39;:&#39;url&#39;,&#39;name&#39;:&#39;video&#39;,&#39;label&#39;:&#39;Video&#39;,&#39;wrapper&#39;:{&#39;width&#39;:30}}]" 
			    wp-attr="[{&#39;target&#39;:&#39;src&#39;,&#39;replace&#39;:&#39;%1&#39;}]"></source>
		    </video>
	    </div>
    
    <script src="./resources/assets/js/jquery.min.js"></script>
    <script src="./resources/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.pack.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
    <script src="./resources/assets/js/Basic-fancyBox-Gallery.js"></script>
    <script src="./resources/assets/js/creative.js"></script>
    <script src="./resources/assets/js/bs-animation.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="./resources/assets/js/modal/modal.js"></script>
    <script src="./resources/assets/js/modal/tab.js"></script>
    <script src="./resources/assets/js/modaltest.js"></script>
    <script src="./resources/assets/js/sidebar/sidebar.js"></script>
    <script src="./resources/assets/js/Video-Parallax-Background-v2.js"></script>
    <script src="./resources/assets/js/Video-Parallax-Background.js"></script>
    <script type="text/javascript">
    	function signup() {
    		var userEmail = document.getElementById('userEmail').value;
    		var userPassword = document.getElementById('userPassword').value;
    		var repeat = document.getElementById('assword-repeat').value;
    		
    		if(userEmail.length == 0 || userPassword.length ==0 || repeat.length ==0){
    			alert('모든 내용을 입력해주세요.');
    			return false;
    		}
			return true;
		}
    	function loginBtn() {
    		var loginEmail = document.getElementById('loginEmail').value;
    		var loginPassword = document.getElementById('loginPassword').value;
    		if(loginEmail.length == 0 || loginPassword.length ==0){
    			alert('모든 내용을 입력해주세요.');
    			return false;
    		}
    		return true;
		}
    </script>
</body>

</html>