package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {

	@Override
	public void doGet( // doGet: Get 요청으로 받겠다.
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// Test용 주석 추가
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// request parameter
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age")); // "19" -> 19 자료형 변환하기
		
		PrintWriter out = response.getWriter();
//		out.println("서블릿 수행");
//		out.println("userId: " + userId);
//		out.println("name: " + name);
//		out.println("age: " + age);
		
		// {"user_id":"maronbiana", "name":"신보람", "age":19}
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\""
				+ name + "\", \"age\":" + age + "}");
	}
}








