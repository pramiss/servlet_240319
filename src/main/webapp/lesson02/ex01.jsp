<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML 주석: 소스보기에서 보인다. -->
	<%-- JSP 주석: 소스보기에서 안보임 --%>
	
	<%
		// Java 문법 시작
		// scriptlet (이후에 이 문법 쓸일 x)
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
	%>
	
	<b>합계:</b>
	<input type="text" value="<%= sum %>">
	<br>
	
	<%!
		// 선언문 (이후에는 사용하지 말기)
		// - 클래스 같은 느낌(예:Person)
		
		// field
		int num = 100;
		
		
		// method
		public String getHelloWorld() {
			return "Hello World";
		}
	%>

	<%= getHelloWorld() %>
	<br>
	<%= num + 200 %>
	
</body>
</html>









