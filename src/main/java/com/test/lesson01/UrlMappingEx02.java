package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex02") // 이걸로 서블릿 매핑 끝
public class UrlMappingEx02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request
			, HttpServletResponse response) throws IOException {
		
		// 인코딩 (2set)
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// 서블릿: 자바 + HTML (실제사용X, 분리하는게 좋음)
		// 1+2+...+10 합계
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		PrintWriter out = response.getWriter();
		// html문서는 ln으로 줄바꿈이 안됨 (print == println)
		out.println("<html><head><title>합계</title></head><body>");
		out.print("합계: <b>" + sum + "</b>");		
		out.print("</body></html>");
	}
}
