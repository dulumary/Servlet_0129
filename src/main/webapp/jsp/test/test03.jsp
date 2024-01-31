<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<% 
		Date date = new Date();
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년 M월 d일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("HH시 mm분 ss초");
		
		String dateString = "오늘 날짜 " + dateFormatter.format(date);
 		String timeString = "현재 시간 " + timeFormatter.format(date);
 		
 		// 어떤 데이터를 보여줄지 
 		// ?what=date 
 		// ?what=time
 		
 		String what = request.getParameter("what");
 		
 		String resultString = null;
 		if(what.equals("date")) {
 			resultString = dateString;
 		} else if(what.equals("time")) {
 			resultString = timeString;
 		}
	%>

	<div class="container">
		
		<div class="display-4"><%= resultString %></div>
		
	</div>
	

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>