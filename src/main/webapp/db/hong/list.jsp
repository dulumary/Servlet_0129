<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.marondal.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT * \r\n"
				+ "FROM `seller` \r\n"
				+ "JOIN `used_goods` \r\n"
				+ "ON seller.id = used_goods.sellerId\r\n"
				+ "ORDER BY used_goods.id DESC;";
				
		ResultSet resultSet = mysqlService.select(query);
	%>

	<div id="wrap">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section class="contents">
			<div class="goods-list d-flex flex-wrap">
			
				<% while(resultSet.next()) { %>
				<div class="goods-box">
					<img width="100%" src="<%= resultSet.getString("used_goods.image") %>">
					<h5><%= resultSet.getString("used_goods.title") %></h5>
					<div class="text-secondary"><%= resultSet.getInt("used_goods.price") %>원</div>
					<div class="nickname-text"><%= resultSet.getString("seller.nickname") %></div>
				</div>
				<% } %>
			
			</div>
		</section>
		<jsp:include page="footer.jsp" />
	</div>

	

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>