<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사진 업데이트!!!</h1>
<form action="updateProfilePicture" method="post" enctype="multipart/form-data">
<img src="${path}${user.savedFilename}" height="300" width="300">
<input type="file" name="file">
<input type="submit" value="확인">
</form>
</body>
</html>