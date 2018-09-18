<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="resources/jquery-3.3.1.min.js"></script>
<title>HOME</title>
<script>
	$(function() {
		$
				.ajax({
					method : 'post',
					url : 'userselectCockList',
					success : function(data) {
						data
								.forEach(function(item, index) {
									console.log(item);
									$('#usercockbody')
											.append(
													"<tr>"
															+ "<td><a href=userboarddetail?userCocktailSeq="
															+ item.userCocktailSeq
															+ ">"
															+ item.usercocktailname
															+ "</a></td>"
															+ "<td>"
															+ "<form action='userupdatecock' method='get'>"
															+ "<input type='hidden' value='"+item.userCocktailSeq+"' name='userCocktailSeq'><input type='submit' id='userupdatecock' value='수정'>"
															+ "</form>"
															+ "</td>"
															+ "<td>"
															+ "<input type='button' id='userdeletecock' onclick='userdeletecock(\""
															+ item.userCocktailSeq
															+ "\")' value='삭제'>"
															+ "</td>" 
															+ "<td>"
															+ "<input type='button' id='userlikecock' onclick='userlikecock(\""
															+ item.userCocktailSeq
															+"\")' value='♥'>"
															+ item.userrecommand
															+ "</td>"
															+ "</tr>");
								});
					}
				});

	});

	//등록기능
	function userenrollBtn() {
		location.href = "useradmin"
	}

	//삭제 기능
	function userdeletecock(userCocktailSeq) {
		alert(userCocktailSeq);
		$.ajax({
			method : "get",
			url : "usercockDelete",
			data : "userCocktailSeq=" + userCocktailSeq,
			success : function(resp) {
				alert(resp);
				location.reload();
			}
		});

	}

	//좋아요 
	function userlikecock(userCocktailSeq) {
		alert("칵테일 좋아요♥")
		$.ajax({
			method : "get",
			url : "userlikecock",
			data : "userCocktailSeq=" + userCocktailSeq,
			success : function(resp) {
				alert(resp);
				location.reload();
			}
		});
	}
</script>
</head>
<body>
	<h1>5SAKE</h1>
	<div>
		<table id="usercockbody" border="1">
			<thead>
				<th>칵테일이름</th>
				<th>수정</th>
				<th>삭제</th>
				<th>추천수</th>
			</thead>
		</table>
		<input type="button" value="ENROLL" onclick="userenrollBtn()">
	</div>
</body>
</html>


