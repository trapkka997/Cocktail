 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").on('click',function(){
		var city="Seoul";
		var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="+city+"&appid="+"35eb240a7645146d0cfd418f87f98c7f";
       alert(apiURI);
		$.ajax({
            url: apiURI,
            dataType: "json",
            type: "GET",
            async: "false",
            success: function(resp) {
                console.log(resp);
                console.log("현재온도 : "+ (resp.main.temp- 273.15) );
                console.log("현재습도 : "+ resp.main.humidity);
                console.log("날씨 : "+ resp.weather[0].main );
                console.log("상세날씨설명 : "+ resp.weather[0].description );
                console.log("날씨 이미지 : "+ resp.weather[0].icon );
                console.log("바람   : "+ resp.wind.speed );
                console.log("나라   : "+ resp.sys.country );
                console.log("도시이름  : "+ resp.name );
                console.log("구름  : "+ (resp.clouds.all) +"%" );   
                var imgURL = "http://openweathermap.org/img/w/" + resp.weather[0].icon + ".png";
        	 	$("#imgid").attr("src", imgURL);
            }
        });	
		
		});
	});
</script>
</head>
<body>
	<button id="btn">아오</button> 
	<img src="" id="imgid"/>
</body>
</html>