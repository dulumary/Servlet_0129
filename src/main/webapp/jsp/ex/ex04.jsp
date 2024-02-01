<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료구조 활용</title>
</head>
<body>

	<%
		// 과일이름 리스트 
		List<String> fruitList = new ArrayList<>();
		fruitList.add("사과");
		fruitList.add("바나나");
		fruitList.add("딸기");
		
		String resultString = "";
		for(int i = 0; i < fruitList.size(); i++) {
			
			String fruit = fruitList.get(i);
			resultString += fruit + " ";
		}
	%>
	
	<h3><%= resultString %></h3>
	
	<table border="1">
		<% for(int i = 0; i < fruitList.size(); i++) { %>
		<tr>
			<td><%= fruitList.get(i) %></td>
		</tr>
		<% } %>
	</table>
	
	<%
		// 과목 성적 맵
		// 국어, 수학, 영어
		Map<String, Integer> scoreMap1 = new HashMap<>();
		scoreMap1.put("국어", 90);
		scoreMap1.put("수학", 95);
		scoreMap1.put("영어", 80);
		
		Map<String, Integer> scoreMap2 = new HashMap<>();
		scoreMap2.put("국어", 40);
		scoreMap2.put("수학", 60);
		scoreMap2.put("영어", 50);
		
		List<Map<String, Integer>> scoreList = new ArrayList<>();
		scoreList.add(scoreMap1);
		scoreList.add(scoreMap2);
	
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>국어</th>
				<th>수학</th>
				<th>영어</th>
			</tr>
		</thead>
		<tbody>
			<% for(Map<String, Integer> scoreMap:scoreList) { %>
			<tr>
				<td><%= scoreMap.get("국어") %></td>
				<td><%= scoreMap.get("수학") %></td>
				<td><%= scoreMap.get("영어") %></td>
			</tr>
			<% } %>
		</tbody>
	
	
	</table>

</body>
</html>