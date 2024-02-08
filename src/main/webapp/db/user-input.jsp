<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 입력</title>
</head>
<body>

	<h3>사용자 정보 입력</h3>
	
	<form method="get" action="/db/user/insert">
		<label>이름 : </label> <input type="text" name="name"> <br>
		<label>생년월일 : </label><input type="text" name="birthday"> <br>
		<label>이메일 : </label><input type="text" name="email"> <br>
		<button type="submit">입력</button>
	</form>
	
	<a href="/db/user-list.jsp">리스트보기</a>

</body>
</html>