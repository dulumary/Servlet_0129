<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.marondal.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물품등록</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>

	<% 
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT `id`, `nickname` FROM `seller`;";
		
		ResultSet resultSet = mysqlService.select(query);
	%>
	<div id="wrap">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section>
			<form method="post" action="/db/test/hong/insert">
			<div class="m-5">
				<div class="display-4">물건 올리기</div>
				<div class="d-flex mt-4">
					<select class="form-control col-2 mr-3" name="sellerId">
						<option>-아이디 선택-</option>
						<% while(resultSet.next()) { %>
						<option value="<%= resultSet.getInt("id") %>"><%= resultSet.getString("nickname") %></option>
						<% } %>
					</select>
					<input type="text" name="title" placeholder="제목" class="form-control col-7">
					<div class="input-group col-3">
						  <input type="text" name="price" class="form-control" placeholder="가격">
						  <div class="input-group-append">
						    	<span class="input-group-text">원</span>
						  </div>
					</div>
				</div>
				<textarea rows="6" name="description" class="form-control mt-2"></textarea>
				<div class="input-group mt-2">
					<div class="input-group-prepend">
					  	<span class="input-group-text">이미지 url</span>
					</div>
					<input type="text" name="imageUrl" class="form-control">
				</div>
				<button type="submit" class="btn btn-secondary btn-block mt-3">저장</button>
			</div>
			</form>
		</section>
		<jsp:include page="footer.jsp" />
	</div>


	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>