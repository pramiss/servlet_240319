package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// 아래 코드들은 코드 암기 X, 개념/맥락적으로 이해하기
public class MysqlService {
	private static MysqlService mysqlService = null;
	
	// 도메인(localhost:3306) 뒤에 접속할 DB 명까지 적어주기
	private static final String URL = "jdbc:mysql://localhost:3306/test_240319";
	private static final String ID = "root";
	private static final String PASSWORD = "root";
	
	private Connection conn; // java.sql.Connection
	private Statement statement; // java.sql.Statement
	private ResultSet res; // java.sql.ResultSet
	
	// 객체 생성 메소드
	// Singleton 패턴: MysqlService라는 객체가 단 하나만 생성될 수 있도록 하는 디자인 패턴
	// 이유: DB 연결을 한번만 하려고. 여러 객체에서 하는 것 방지
	// static : new MysqlService() 없이 getInstance()를 부르기 위해
	public static MysqlService getInstance() {
		// 처음 MysqlService 객체를 만들때
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	// DB 접속 - JDBC
	public void connect() {
		try {
			// 1. 드라이버 메모리에 로딩 (드라이버: 대충 DB 연결 도구)
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());

			// 2. DB 연결(connection)
			conn = DriverManager.getConnection(URL, ID, PASSWORD);
			
			// 3. statement: 쿼리 실행 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	
	// DB 연결 해제
	public void disconnect() {
		try {
			// 역순으로 연결 끊기 
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// R, CRU
	// Servlet -> DB : 쿼리(request)
	// DB -> Servlet : 결과(response, return) - R만
	
	// R - read:select
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	// CUD - insert, update, delete
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
}











