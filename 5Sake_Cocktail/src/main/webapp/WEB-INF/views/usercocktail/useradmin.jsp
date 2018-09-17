<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function userback() {
		location.href="userback"
	}
</script>	
</head>
<body>
<h1>
	USERMODE  
</h1>
<form action="usercocktailInsert" method="post" enctype="multipart/form-data" onsubmit="return formCheck();" >
NAME : <input type="text" name="usercocktailname"><br>
ENG_NAME : <input type="text" name="usercocktailname_en"><br>
Alcohol : <input type="text" name="useralcole"><br>
Liquor : <input type="text" name="userliqueur"><br>
Material : <input type="text" name="usermaterial"><br>
Receipe : <input type="text" name="userreceipe"><br>
Color : <input type="text" name="usercolorvalue"><br>
<input type="submit" value="userEnrollCocktail">
<input type="button" value="뒤로가기" onclick="userback()">
<input type="file" id="uploadFile" name="uploadFile" value="파일업데이트" style="border:0px solid black;"/>
</form>
</body>
</html>