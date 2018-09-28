<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function back() {
		location.href="back"
	}
</script>
</head>
<body>
<h1>수정하기</h1>
<form action="cocktailUpdate">
NAME : <input type="text" name="cocktailName" value="${Cocktail.cocktailName}"><br>
ENG_NAME : <input type="text" name="cocktailName_EN" value="${Cocktail.cocktailName_EN}"><br>
Alcohol : <input type="text" name="alcole" value="${Cocktail.alcole}"><br>
Liquor : <input type="text" name="liqueur" value="${Cocktail.liqueur}"><br>
Material : <input type="text" name="material" value="${Cocktail.material}"><br>
Receipe : <input type="text" name="receipe" value="${Cocktail.receipe}"><br>
Rink : <input type="text" name="imageRink" value="${Cocktail.imageRink}"><br>
Color : <input type="text" name="colorValue" value="${Cocktail.colorValue}"><br>
<input type="submit" value="칵테일정보변경">
<input type="button" value="뒤로가기" onclick="back()">
</form>
</body>
</html>