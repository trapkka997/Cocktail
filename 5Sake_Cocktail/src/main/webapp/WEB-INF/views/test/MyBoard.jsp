<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>개인 정보</h1>
<div>
	<c:forEach items="${userPhoto}" var="photo">
		${photo}
		<img src="${path}${photo.saveFileName}" height="100" width="100">
	</c:forEach>

</div>

</body>
</html>