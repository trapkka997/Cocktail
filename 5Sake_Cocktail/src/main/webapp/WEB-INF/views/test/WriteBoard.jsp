<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글쓰기 페이지</h1>
	<form action="writeBoard" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>글쓴이</td>
				<td>${sessionScope.useremail}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textArea name="contents"></textArea></td>
			</tr>
			<tr>
				<td>사진 업로드</td>
				<td><input type="file" name="fileData"></td>
			</tr>
		</table>
		
		<input type="submit" value="보내기">
	</form>
</body>
</html>