package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/InsertQuiz02")
public class InsertQuiz02 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request
			, HttpServletResponse response) throws IOException {
		
		// request params
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB connect
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert query
		String query = "insert into `bookmark`\r\n"
				+ "(`name`, `url`) "
				+ "values "
				+ "('" + name + "', '" + url + "')";
		try {
			ms.update(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB disconnect
		ms.disconnect();
		
		// response redirect
		response.sendRedirect("/lesson03/quiz02.jsp");
	}
}
