<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./resources/instafeed.min.js"></script> <!-- js ���� �ε� -->
<script type="text/javascript">
var userFeed = new Instafeed({
    get: 'user',
    userId: 1503783068,
    sortBy: "most-recent",
    limit: 20,
    template: '<a href="{{link}}" target="_blank"><img src="{{image}}" /></a>', 
    // {{link}} : url, {{image}} :image, {{caption}} :  글내용
    accessToken: '1503783068.c306804.ce44c2d3c5ec47c385153e2299eff042'        
});
userFeed.run();
</script>
</head>
 <body>
<div id="instafeed"></div>

</body>
</html>

