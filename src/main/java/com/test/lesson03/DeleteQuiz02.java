package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson3/DeleteQuiz02")
public class DeleteQuiz02 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request
			, HttpServletResponse response) throws IOException {
		
		// request params
		int id = Integer.valueOf(request.getParameter("id"));
		
		// db 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete 쿼리 수행
		String query = "delete from `bookmark` where `id` = " + id;
		try {
			ms.update(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db 연결해제
		ms.disconnect();
		
		// response redirect
		response.sendRedirect("/lesson03/quiz02.jsp");
	}
}
