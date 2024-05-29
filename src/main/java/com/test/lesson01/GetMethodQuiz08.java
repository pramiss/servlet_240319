package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request
			, HttpServletResponse response) throws IOException {
		
		// response header set
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		// request params
		String keyword = request.getParameter("keyword");
		
		// list 정의
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		// 탐색 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>검색 결과</title></head><body>");
		
		Iterator<String> iter = list.iterator();
		while (iter.hasNext()) {
			String line = iter.next(); // iter.next()는 1반복에 1번만 하기 ->그래서 iter.next()는 변수에 저장하는게 좋음
			if (line.contains(keyword)) {
				// 1. replace (권장)
				line = line.replace(keyword, "<b>" + keyword + "</b>");
				out.print(line + "<br>");
				
				// 2. split - 문자열(keyword)을 기준으로 자름
//				String[] words = line.split(keyword);
//				out.print(words[0] + "<b>" + keyword + "</b>" + words[1] + "<br>");
				
				// 3.indexOf
				// indexOf로 keyword 위치를 찾고 앞뒤로 <b>와 </b>태그를 붙일 수도 있음
				
			}
		}
		out.print("</body></html>");
		
	} // -- doGet 끝
}













