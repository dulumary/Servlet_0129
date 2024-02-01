<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환결과</title>
</head>
<body>

	<%
		 int length = Integer.parseInt(request.getParameter("length"));
	
		// 변환할 단위 들 : inch, yard, feet, meter
		String[] unitArray = request.getParameterValues("unit");
		
		String resultString = ""; 
		for(int i = 0; i < unitArray.length; i++) {
			String unit = unitArray[i];
			
			if(unit.equals("inch")) {
				double inch = length * 0.39;
				resultString += inch + "in<br>";
			} else if(unit.equals("yard")) {
				double yard = length * 0.010936133;
				resultString += yard + "yd<br>";
			} else if(unit.equals("feet")) {
				double feet = length * 0.032808399;
				resultString += feet + "ft<br>";
			} else if(unit.equals("meter")) {
				double meter = length / 100.0;
				resultString += meter + "m<br>";
			}
		}	
	%>
	
	<h1>변환결과</h1>
	
	<h2><%= length %>cm</h2>
	<hr>
	
	<h2><%= resultString %></h2>

</body>
</html>