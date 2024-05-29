<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Quiz01 - JSP</title>
</head>
<body>
	<%-- 1번 --%>
	<%!
		// method
		int tot = 12;
		public int sum(int end) {
			int sum = 0;
			for (int i = 1; i <= end; i++) {
				sum += i;
			}
			return sum;
		}
	%>

	<%-- 2번 --%>
	<%
		double avg = 0;
		int[] scores = {81, 90, 100, 95, 80};
		for (int i = 0; i < scores.length; i++) {
			avg += scores[i];
		}
		avg /= scores.length;
		double tot = 2.1;
	%>
		
	<%-- 3번 --%>
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
		int score = 0;
		for (int i = 0; i < scoreList.size(); i++) {
			//out.print(scoreList.get(i));
			if (scoreList.get(i).equals("O")) {
				score += (100 / scoreList.size());
			}
		}
	%>
	
	
	<%-- 4번 --%>
	<%
		String birthDay = "20010820";
		String strYear = birthDay.substring(0, 4);
		int intYear = Integer.parseInt(strYear);
		int age = 2024 - intYear;
	%>
	
	
	<h2>1부터 50까지의 합은 <%= sum(50) %>입니다.</h2>
	<h2>평균 점수는 <%= avg %>입니다.</h2>
	<h2>채점 결과는 <%= score %>점입니다.</h2>
	<h2><%= birthDay %>의 나이는 <%= age %>세입니다.</h2>

</body>
</html>