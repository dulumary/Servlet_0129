package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// response header 
		// response 에 담길 데이터 정보
		
		// response 에 담길 문자 셋(set) utf-8 
		response.setCharacterEncoding("utf-8");
		// 데이터 타입 
		// MIME 규격
		// text/plain : 그냥 문자열
		response.setContentType("text/plain");
		
		// response body 
		// PrintWriter : response body 에 데이터를 채우기 위한 객체 
		PrintWriter out = response.getWriter();
		out.println("URL Mapping 예제");
		
		// 현재 날짜 시간 response에 담기 
		// 2024년 01월 24일 17:16:43
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		String dateTimeString = formatter.format(now);
		
		
		out.println(dateTimeString);
		
	}

}
