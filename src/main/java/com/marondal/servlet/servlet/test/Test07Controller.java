package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 주소, 카드, 가격
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		
		out.println("<html><head><title>배달의민족</title></head><body>");
		
		if(!address.contains("서울시")) {
			out.println("<h3>배달불가 지역입니다</h3>");
		} else if(card.equals("신한카드")) {
			out.println("<h3>결제불가 카드입니다</h3>");
		} else {
			out.println("<h4>" + address + " 배달 준비중 </h4> <hr>");
			out.println("<div>결제금액 : " + price + "</div>");
		}
		
		out.println("</body></html>");
		
	}

}
