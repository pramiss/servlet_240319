package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request
			, HttpServletResponse response) throws IOException {
		
		// 인코딩 설정 (2 set)
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// 시간 출력 (Date - SimpleDateFormat)
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat(
				"현재 시간은 HH시 mm분 ss초 입니다.");
		out.println(sdf.format(now));
		
	}
}