package com.marondal.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/ex/ex01")
public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// Math.round(3.5);
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		ResultSet resultSet = mysqlService.select("SELECT * FROM `used_goods`;");
		
		out.println("<html><head><title>중고물품 목록</title></head><body>");
		
		try {
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				// 제목 : 플스 팝니다 가격 : 40000원
				out.println("<div>제목 : " + title + " 가격 : " + price + "원</div>");
			}
			
		} catch (SQLException e) {
			
			
			e.printStackTrace();
		}
		
		out.println("</body></html>");
		
		
//		try {
//			// 데이터 베이스 접속
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			// 접속주소, id, password
//			String url = "jdbc:mysql://localhost:3306/dulumary_0115";
//			String id = "root";
//			String password = "root";
//			
//			Connection connection = DriverManager.getConnection(url, id, password);
//			Statement statement = connection.createStatement();
//			
//			String selectQuery = "SELECT * FROM `used_goods`;";
//			
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//			out.println("<html><head><title>중고물품 목록</title></head><body>");
//			
//			while(resultSet.next()) {
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				// 제목 : 플스 팝니다 가격 : 40000원
//				out.println("<div>제목 : " + title + " 가격 : " + price + "원</div>");
//			}
//			
//			out.println("</body></html>");
//			
//		} catch (SQLException e) {
//			
//			e.printStackTrace();
//		}
		
	}

}
