<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>POST from태그 - 서버페이지</title>
</head>
<body>
	<%
		// request params
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String[] foodArr = request.getParameterValues("food"); // 여러개 항목을 받을때
		String fruit = request.getParameter("fruit");
	%>
	
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%= nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%= hobby %></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%= animal %></td>
		</tr>
		<tr>
			<th>선호하는 음식</th>
			<td><%
				String result = "";
				if (foodArr != null) { // 아무것도 체크하지 않은 경우
					for (String food : foodArr) {
						result += food + ",";
					}
				}
				// 맨 뒤에 붙은 ,(콤마) 제거
				// abc -> ab만 추출 substring(0,2) => 2 => 문자열길이 - 1
				result = result.substring(0, result.length() - 1);
				out.print(result);
			%></td>
		</tr>
		<tr>
			<th>선호하는 과일</th>
			<td><%= fruit %></td>
		</tr>
	</table>
	
	
</body>
</html>