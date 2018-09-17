<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<script type="text/javascript" src="resources/jquery-3.3.1.min.js"></script>
	<title>HOME</title>
	<script>
		$(function(){
			$.ajax({
				method : 'post'
				, url : 'selectCockList'
				, success : function(data){
					data.forEach(function(item, index) {
		                  $('#cockbody').append("<tr>"+
		                  							"<td>"+ 
		                		  						item.cocktailName + 
		                		  					"</td>"+
		                  							"<td>"+
		                		  						"<form action='updatecock' method='get'>"+"<input type='hidden' value='"+item.cocktailName+"' name='cocktailName'><input type='submit' id='updatecock' value='수정'>"+
		                		  						"</form>"+
		                		  					"</td>"+
		                		  					"<td>"+
		                		  						"<input type='button' id='deletecock' onclick='deletecock(\""+item.cocktailName+"\")' value='삭제'>"+
		                		  					"</td>"+
		                		  				"</tr>");
		            });
				}
			});	
				
		});
		
		function enrollBtn() {
			location.href="admin"
		}
		
		
		
		function deletecock(cocktailName){
			alert(cocktailName);
			  $.ajax({
				method : "get"
				, url : "cockDelete"
				, data : "cocktailName="+cocktailName
				, success : function(resp){
					alert(resp);
					location.reload();
				}
			});  

		}	
		
	</script>
</head>
<body>
<h1>
	5SAKE  
</h1>
<div >
<table id="cockbody" border="1">
	<thead>
		<th>칵테일이름</th>
		<th>수정</th>
		<th>삭제</th>
	</thead>
</table>	
<input type="button" value="ENROLL" onclick="enrollBtn()">
</div>
</body>
</html>

 
