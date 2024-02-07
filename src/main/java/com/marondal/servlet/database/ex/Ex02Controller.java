package com.marondal.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/ex/ex02")
public class Ex02Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO `used_goods` \r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `image`)\r\n"
				+ "VALUE\r\n"
				+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 안먹어서 팔아요', '');";
		
		int count = mysqlService.update(insertQuery);
		
		out.println("수행결과 : " + count);
		
	}

}
