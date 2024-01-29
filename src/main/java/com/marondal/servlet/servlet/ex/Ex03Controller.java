package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고, 
		// 이름과 나이를 html로 response에 담는다.
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");  // 20010823
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2024 - year + 1;
		
//		out.println("<html><head><title>이름,나이</title></head><body>");
//		
//		out.println("<h2>이름 : " + name + "</h2>");
//		out.println("<h2>나이 : " + age + "</h2>");
//		
//		out.println("</body></html>");
		
		// json
		// 데이터를 표현하는 문자열 규격
		// [10, 20, 30]
		// {"name":"김인규", "age":23}
		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");
		
		
	}

}
