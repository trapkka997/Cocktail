<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title></title>
</head>
<body>
<input type="hidden" id="toUserEmail" name="toUserEmail" value="${toUserEmail }">
<input type="hidden" id="userEmail" name="userEmail" value="${userEmail }">
	<h1>SOCKETJS TEST</h1>
	<div>
		Message : 
		<input type="text" id="message">
		<input type="button" onclick="sendData()" value="보내기">
	</div>
 	<div id="responseData">
 	<c:forEach var="message" items="${messageList}">
 		유저이름 : ${message.userEmail} 내용 :  ${message.message} </br>
 	</c:forEach>
		
	</div> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script type="text/javascript">
		var sock = new SockJS('http://localhost:8888/cocktail/myHandler');
		 sock.onopen = function() {
		     console.log('open');
		     sock.send('연결하였습니다!!!');
		 };

		 sock.onmessage = function(e) {
		     console.log('message', e.data);
		     var resp = e.data.split(" : ");
		     var userId = document.getElementById('userEmail').value;
		     var getData = resp[1];
		     var finalData = JSON.parse(getData);
		     		myDate = new Date(1000*finalData.date);
		     var responseData = "유저이름 :  " + userId +" 내용 : "+ finalData.text + " 시간 :  " + myDate + "</br>";
		     console.log(responseData);
		     var id =  document.getElementById('responseData');
		     id.innerHTML += responseData;
		    // sock.close();
		 };

		 sock.onclose = function() {
		     console.log('close');
		 };
		 
		 function sendData() {
			var msg ={
					 type: "message",
					 text: document.getElementById("message").value,
					 date: Date.now()
			} ;
			$.ajax({
				method : "GET",
				url : "writeMessage",
				data : {
					toUserEmail : document.getElementById('toUserEmail').value,
					message : msg.text
				},
				success : function(resp) {
					sock.send(JSON.stringify(msg));
					msg.text = "";
				},
				error : function() {
					console.log('err');	
				}
			});
			
		}
</script> 
</body>
</html>