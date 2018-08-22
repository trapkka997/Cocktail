<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style>
 		html.open { overflow: hidden; }
 		.btn { 
 			width: 50px; 
 			height: 50px; 
 			position: absolute;
 			top: 0px; 
 			z-index: 1; 
 			background-image: url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/menu.png"); 
 			background-size: 50%; 
 			background-repeat: no-repeat; 
 			background-position: center; 
 			cursor: pointer; 
 		}
 		.close { 
 			left:0px;
 			width: 50px; 
 			height: 50px; 
 			position: absolute; 
 			top: 0px; 
 			background-image: url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/close.png"); 
 			background-size: 50%; 
 			background-repeat: no-repeat; 
 			background-position: center; 
 			cursor: pointer; 
 		}  
 		#menu { 
 			width: 150px; 
 			height: 100%; 
 			position: fixed; 
 			top: 0px; 
 			left: -152px; 
 			z-index: 10; 
 			border: 1px solid #c9c9c9; 
 			background-color: white; 
 			text-align: center; 
 			transition: All 2s ease; 
 			-webkit-transition: All 2s ease; 
 			-moz-transition: All 0.2s ease; 
 			-o-transition: All 0.2s ease; 
 		}
 		#menu.open { left: 0px; } 
 		.page_cover.open { display: block; } 
 		.page_cover { 
 			width: 100%; 
 			height: 100%; 
 			position: fixed; 
 			top: 0px; 
 			left: 0px; 
 			background-color: rgba(0,0,0,0.4); 
 			z-index: 4; 
 			display: none; 
 		}
    </style>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	<script>
	$(function(){ 
	    $(".btn").click(function () {
	    	$("#menu,.page_cover,html").addClass("open"); 
	        window.location.hash = "#open"; 
	    }); 
	    window.onhashchange = function () { 
	    	if (location.hash != "#open") { 
	    		$("#menu,.page_cover,html").removeClass("open"); 
	    }
	  };
	 }); 
    </script>
</head>
 
<body>
   <div class="btn"></div>
   <div onclick="history.back();" class="page_cover"></div>
   <div id="menu">
		<div onclick="history.back();" class="close"></div>
   </div>
</body> 
</html>











