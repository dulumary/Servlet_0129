<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input 다루기</title>
</head>
<body>

	<%
		String nickname = request.getParameter("nickname");
		// dog, cat, lion 
		String animal = request.getParameter("animal");
		
		// 좋아 하는 과일 하나를 전달 받는다. 
		// 바나나, 복숭아, 딸기 
		// banana, peach, strawberry
		String fruit = request.getParameter("fruit");
		
		// 좋아 하는 음식들 고르기 
		// 민트초코, 하와이안피자, 번데기
		String[] foodArray = request.getParameterValues("food");
		String foodString = "";
		for(int i = 0; i < foodArray.length; i++) {
			foodString += foodArray[i] + " ";
		}
	%>
	
	
	<h3><%= nickname %></h3>
	<h3><%= animal %></h3>
	<h3><%= fruit %></h3>
	<h3><%= foodString %></h3>

</body>
</html>