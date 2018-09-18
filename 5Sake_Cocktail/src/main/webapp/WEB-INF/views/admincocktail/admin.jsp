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
<h1>
	Administrator (관리자모드) 
</h1>
<form action="cocktailInsert">
NAME : <input type="text" name="cocktailName"><br>
ENG_NAME : <input type="text" name="cocktailName_EN"><br>
Alcohol : <input type="text" name="alcole"><br>
Liquor : <input type="text" name="liqueur"><br>
Material : <input type="text" name="material"><br>
Receipe : <input type="text" name="receipe"><br>
Rink : <input type="text" name="imageRink"><br>
Color : <input type="text" name="colorValue"><br>
<input type="submit" value="EnrollCocktail">
<input type="button" value="뒤로가기" onclick="back()">
</form>
<form action="gotousermode">
	<input type="submit" value="유저모드">
</form>
</body>
</html>