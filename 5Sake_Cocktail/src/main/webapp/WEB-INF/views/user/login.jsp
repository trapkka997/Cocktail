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
    <link rel="stylesheet" href="./resources/assets/login/css/Basic-fancyBox-Gallery.css">
    <link rel="stylesheet" href="./resources/assets/login/css/Footer-Clean.css">
    <link rel="stylesheet" href="./resources/assets/login/css/Navbar-Fixed-Side.css">
    <link rel="stylesheet" href="./resources/assets/login/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="./resources/assets/login/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="./resources/assets/login/css/style3.css">
    <link rel="stylesheet" href="./resources/assets/login/css/Video-Parallax-Background-v2.css">
    <link rel="stylesheet" href="./resources/assets/login/css/Video-Parallax-Background.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  	.col-6{
        flex:none;
        max-width:none;
     }
     @media screen and (max-width : 800px) {
     	.image-holder{
     		display: table;
     	}
     	.col-6{
        	max-width:50%
     	}
	 }
  </style>
</head>
<body>
	<div class="container-fluid d-flex justify-content-center align-items-center align-content-center video-parallax-container">

	  <div class="col-6">
	    <div class="register-photo" style="margin:-100px;">
	      <div class="form-container">
	        <div class="image-holder">
	        </div>	         
	          
			  <form method="post" action="register" onsubmit="return signup()">  			  
			  <ul class="nav nav-tabs">
	            <li class="active"><a data-toggle="tab" href="#signUp" class="active show">Sign Up</a></li>
	            <li><a data-toggle="tab" href="#loginform">Login</a></li>
	          </ul>	          
	          <div class="tab-content">       	          
	            <div id="signUp" class="tab-pane fade in active" input onkeyup="enterkey();" type="text">
	                <h2 class="text-center"><strong>Create</strong> account.</h2>
	                <div class="form-group"><input type="email" id="userEmail" placeholder="Email" class="form-control">
	                </div>
	                <div class="form-group"><input type="password" id="userPassword" placeholder="Password" class="form-control">
	                </div>
	                <div class="form-group"><input type="password" id="asswordRepeat" name="password-repeat" placeholder="Password (repeat)" class="form-control"></div>

	                	<input type="checkbox">

	                <label class="form-check-label">I agree to the license terms.</label> 
	
	                <div class="form-group"><input class="btn btn-primary btn-block" type="button" style="background-color:rgb(118,219,241);" value="Sign Up" onclick="signBtn()">
	                </div>
	                 <div id="memberSign"></div>
	                <a href="#loginform" class="already">You already have an account? Login here.</a>
	                </form>
	            </div>
	            <div id="loginform" class="tab-pane fade" input onkeyup="enterkey2();" type="text">
	                <h2 class="text-center"><strong>Login</strong> here</h2>
	                <div class="form-group"><input type="email" id="loginEmail" placeholder="Email" class="form-control">
	                </div>
	                <div class="form-group"><input type="password" id="loginPwd" placeholder="Password" class="form-control">
	                </div>
	
	                <div class="form-group">
	                  <div class="form-check"><input type="checkbox"><label class="form-check-label">&nbsp;아이디를 기억하시겠습니까?</label>
	                  </div>
	                </div>
	                <div class="form-group"><input class="btn btn-primary btn-block" type="button" style="background-color:rgb(118,219,241);" value="Login" onclick="loginBtn()">
	                </div>
	                <div id="message"></div>
	            </div>
	        </div>
	      </div>
	    </div>
	  </div>
		    <video muted loop autoplay = "media">
			    <source src="./resources/assets/login/bar3.mp4" type="video/mp4" 
			    wp-acf="[{&#39;type&#39;:&#39;url&#39;,&#39;name&#39;:&#39;video&#39;,&#39;label&#39;:&#39;Video&#39;,&#39;wrapper&#39;:{&#39;width&#39;:30}}]" 
			    wp-attr="[{&#39;target&#39;:&#39;src&#39;,&#39;replace&#39;:&#39;%1&#39;}]"></source>
		    </video>
	    </div>
    
    
    <script src="./resources/assets/login/js/jquery.min.js"></script>
    <script src="./resources/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.pack.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
    <script src="./resources/assets/login/js/Basic-fancyBox-Gallery.js"></script>
    <script src="./resources/assets/login/js/creative.js"></script>
    <script src="./resources/assets/login/js/bs-animation.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="./resources/assets/login/js/Video-Parallax-Background-v2.js"></script>
    <script src="./resources/assets/login/js/Video-Parallax-Background.js"></script>
    <script>
    function signBtn() {
    	var userEmail = document.getElementById('userEmail').value;
		var userPassword = document.getElementById('userPassword').value;
		var asswordRepeat = document.getElementById('asswordRepeat').value;
		
		var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		
	    if(userEmail.length == 0 || userPassword.length ==0 || asswordRepeat.length ==0 ){
			alert('모든 내용을 입력해주세요.');
		}else if(userEmail == '' || !re.test(userEmail)){
			alert("올바른 이메일 형식을 입력하세요");	
		}else if(userPassword.length<6){
			alert("비밀번호는 6자 이상으로 해주세요");
		}else if(userPassword != asswordRepeat ){
			document.getElementById('memberSign').innerHTML = '비밀번호가 틀렸습니다. 다시 입력해 주세요';
		}else{
			$.ajax({
				method: 'post',
				url: 'register',
				data: {
					userEmail : userEmail,
					userPwd : userPassword
				},
				success: function(resp) {
					if(resp ==2){
						document.getElementById('memberSign').innerHTML ="이미 가입된 이메일 계정입니다"; 
					}else if(resp == 1){
						document.getElementById('memberSign').innerHTML ="가입완료. 인증메일을 확인해주세요"; 
					}
					
				},
				error: function() {
				}
			})
		}
		
		
		
	}
    	
		function loginBtn() {
    		var loginEmail = document.getElementById('loginEmail').value;
    		var loginPassword = document.getElementById('loginPwd').value;
    		var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    		
    	    if(loginEmail.length == 0 || loginPassword.length ==0 ){
    			alert('모든 내용을 입력해주세요.');
    		}else if(loginEmail == 'admin123' || loginPassword == 'admin123'){
    			$.ajax({
    				method: 'post',
    				url: 'loginAjax',
    				data: {
    					userEmail : loginEmail,
    					userPwd : loginPassword
    				},
    				success: function(resp) {
						if(resp ==1){
							document.getElementById('message').innerHTML ="로그인 성공"; 
							location.href = "/cocktail/";
						}else if(resp == 2){
							document.getElementById('message').innerHTML ="이메일 인증필요"; 
						}else if(resp == 3){
							document.getElementById('message').innerHTML ="로그인 실패"; 
						}
					},
					error: function() {
						
					}
    			})
    		}
    	    else if(loginEmail == '' || !re.test(loginEmail)){
    			alert("올바른 이메일 형식을 입력하세요");	
    		}else if(loginPassword.length<6){
    			alert("비밀번호는 6자 이상으로 해주세요");
    		}else{
    			$.ajax({
    				method: 'post',
    				url: 'loginAjax',
    				data: {
    					userEmail : loginEmail,
    					userPwd : loginPassword
    				},
    				success: function(resp) {
						if(resp ==1){
							document.getElementById('message').innerHTML ="로그인 성공"; 
							location.href = "/cocktail/";
						}else if(resp == 2){
							document.getElementById('message').innerHTML ="이메일 인증필요"; 
						}else if(resp == 3){
							document.getElementById('message').innerHTML ="로그인 실패"; 
						}
					},
					error: function() {
						
					}
    			})
    		}
    		
		}
		
		function enterkey() {
	        if (window.event.keyCode == 13) {
	        	alert('회원ㄱ입');
	             // 엔터키가 눌렸을 때 실행할 내용
	             signBtn();
	        }
	}
		
		function enterkey2() {
	        if (window.event.keyCode == 13) {
	             // 엔터키가 눌렸을 때 실행할 내용
	             alert('로그인');
	             loginBtn();
	        }
	}
	 
    </script>
</body>
</html>