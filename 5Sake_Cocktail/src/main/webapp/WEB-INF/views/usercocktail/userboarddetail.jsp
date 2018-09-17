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
	게시글 상세보기 페이지 입니다.
	<table>
		<tr>
			<th>작성자</th>
			<td>${usercocktail.useremail}</td>
		</tr>
		<tr>
			<th>칵테일 이름</th>
			<td>${usercocktail.usercocktailname}</td>
		</tr>
		<tr>
			<th>칵테일 영문명</th>
			<td>${usercocktail.usercocktailname_en}</td>
		</tr>
		<tr>
			<th>알코올</th>
			<td>${usercocktail.useralcole}</td>
		</tr>
		<tr>
			<th>리쿼</th>
			<td>
				${usercocktail.userliqueur}
			</td>
		</tr>
		<tr>
			<th>재료</th>
			<td>${usercocktail.usermaterial}</td>
		</tr>
		<tr>
			<th>사진</th>
			<td><img src="http://localhost:8888/test/resources/${usercocktail.savefilename }"></td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${usercocktail.userhitcount}</td>
		</tr>
		
		
	</table>
<input type="button" value="뒤로가기" onclick="userback()">
</body>
</html>