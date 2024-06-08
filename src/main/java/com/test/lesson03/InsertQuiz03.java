package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/quiz03_insert")
public class InsertQuiz03 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// request params
		int id = Integer.valueOf(request.getParameter("id"));
		String title = request.getParameter("title");
		int price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String pictureUrl = request.getParameter("pictureUrl");
		
		// db connect
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//  insert query
		String insertQuery = "insert into used_goods "
				+ "(`sellerId`, `title`, `description`, `price`, `pictureUrl`) "
				+ "values "
				+ "(" + id + ", '" + title + "', '" + description + "'," + price + ", '" + pictureUrl + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db disconnect
		ms.disconnect();
		
		// response 302 redirect
		response.sendRedirect("/lesson03/quiz03_list.jsp");
	}
}
