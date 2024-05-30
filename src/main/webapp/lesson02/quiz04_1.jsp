<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		// request params
		int cm = Integer.valueOf(request.getParameter("cm"));
		String[] unitArr = request.getParameterValues("unit");
		
		// 길이 변환
		String result = "";
		if (unitArr != null) {
			for (String unit : unitArr) {
				if (unit.equals("inch")) {
					result += "<h2>" + (cm * 0.393701) + "in</h2>";
				} else if (unit.equals("yard")) {
					result += "<h2>" + (cm * 0.010936) + "yd</h2>";
				} else if (unit.equals("feet")) {
					result += "<h2>" + (cm * 0.032808) + "ft</h2>";
				} else if (unit.equals("meter")) {
					result += "<h2>" + (cm * 0.01) + "m</h2>";
				}
			}
		}
		
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h2><%= cm %> cm</h2>
		<hr>
		<h1><%= result %> </h1>
	</div>
	
	
	
	
</body>
</html>